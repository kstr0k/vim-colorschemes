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

cat ../submodules/greenwint/colors/greenwint.vim >| ../colors/greenwint.vim

cat ../submodules/dracula/autoload/dracula.vim >| ../colors/dracula.vim
cat ../submodules/dracula/colors/dracula.vim >> ../colors/dracula.vim

cat ./termguicolors.vim >| ../colors/CandyPaper.vim
cat ../submodules/CandyPaper.vim/colors/CandyPaper.vim >> ../colors/CandyPaper.vim

cat ../submodules/iceberg.vim/colors/iceberg.vim >| ../colors/iceberg.vim

cat ../submodules/onedark.vim/autoload/onedark.vim >| ../colors/onedark.vim
cat ../submodules/onedark.vim/colors/onedark.vim >> ../colors/onedark.vim

cat ./termguicolors.vim >| ../colors/gotham.vim
cat ./termguicolors.vim >| ../colors/gotham256.vim
cat ../submodules/vim-gotham/colors/gotham.vim >> ../colors/gotham.vim
cat ../submodules/vim-gotham/colors/gotham256.vim >> ../colors/gotham256.vim

cat ./termguicolors.vim >| ../colors/off.vim
cat ../submodules/vim-colors-off/colors/off.vim >> ../colors/off.vim

cat ./termguicolors.vim >| ../colors/winterd.vim
cat ../submodules/winterd/colors/winterd.vim >> ../colors/winterd.vim

cat ./termguicolors.vim >| ../colors/pencil.vim
cat ../submodules/vim-colors-pencil/colors/pencil.vim >> ../colors/pencil.vim

cat ./termguicolors.vim >| ../colors/nord.vim
cat ../submodules/nord-vim/colors/nord.vim >> ../colors/nord.vim
