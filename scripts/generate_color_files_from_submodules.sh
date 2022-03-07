# Some colorschemes separate their palette variables into an autoload file,
# while others require certain '.vimrc' settings.
# This script combines autoload-files/.vimrc settings into a file in '/colors'
# for each colorscheme.

# Set path to this script's path.
# https://stackoverflow.com/questions/24112727/relative-paths-based-on-file-location-instead-of-current-working-directory#answer-24112741
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

cat ../submodules/vim-code-dark/colors/codedark.vim >| ../colors/codedark.vim

cat ../submodules/jellybeans.vim/colors/jellybeans.vim >| ../colors/jellybeans.vim

cat ../submodules/tender.vim/colors/tender.vim >| ../colors/tender.vim

cat ../submodules/dracula/autoload/dracula.vim >| ../colors/dracula.vim
cat ../submodules/dracula/colors/dracula.vim >> ../colors/dracula.vim

# Settings that's suppose to be in '.vimrc' as instructed in:
# https://github.com/dfxyz/CandyPaper.vim/blob/30290f1eb12eefe44bac6810898fcf80a7fa98e2/README.md
echo -e 'set termguicolors\nlet &t_8f="\\<Esc>[38;2;%lu;%lu;%lum"\nlet &t_8b="\\<Esc>[48;2;%lu;%lu;%lum"\n' >| ../colors/CandyPaper.vim
cat ../submodules/CandyPaper.vim/colors/CandyPaper.vim >> ../colors/CandyPaper.vim

cat ../submodules/iceberg.vim/autoload/iceberg/palette/dark.vim >| ../colors/iceberg.vim
cat ../submodules/iceberg.vim/autoload/iceberg/palette/light.vim >> ../colors/iceberg.vim
sed -i -E 's/iceberg#palette#\w+/iceberg/g' ../colors/iceberg.vim
cat ../submodules/iceberg.vim/colors/iceberg.vim >> ../colors/iceberg.vim

