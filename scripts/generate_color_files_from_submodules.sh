# Some colorschemes separate their palette variables into an autoload file,
# while others require certain '.vimrc' settings.
# This script combines autoload-files/.vimrc settings into a file in '/colors'
# for each colorscheme.

# Set path to this script's path.
# https://stackoverflow.com/questions/24112727/relative-paths-based-on-file-location-instead-of-current-working-directory#answer-24112741
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

cat ./termguicolors.vim >| ../colors/codedark.vim
cat ../submodules/codedark/colors/codedark.vim >> ../colors/codedark.vim

cat ./termguicolors.vim >| ../colors/jellybeans.vim
cat ../submodules/jellybeans/colors/jellybeans.vim >> ../colors/jellybeans.vim

cat ./termguicolors.vim >| ../colors/tender.vim
cat ../submodules/tender/colors/tender.vim >> ../colors/tender.vim

cat ./termguicolors.vim >| ../colors/greenwint.vim
cat ../submodules/greenwint/colors/greenwint.vim >> ../colors/greenwint.vim

cat ./termguicolors.vim >| ../colors/deus.vim
cat ../submodules/deus/colors/deus.vim >> ../colors/deus.vim

cat ./termguicolors.vim >| ../colors/yuejiu.vim
cat ../submodules/yuejiu/colors/yuejiu.vim >> ../colors/yuejiu.vim

cat ./termguicolors.vim >| ../colors/dracula.vim
cat ../submodules/dracula/autoload/dracula.vim >> ../colors/dracula.vim
cat ../submodules/dracula/colors/dracula.vim >> ../colors/dracula.vim

cat ./termguicolors.vim >| ../colors/CandyPaper.vim
cat ../submodules/CandyPaper/colors/CandyPaper.vim >> ../colors/CandyPaper.vim

cat ./termguicolors.vim >| ../colors/iceberg.vim
cat ../submodules/iceberg/colors/iceberg.vim >> ../colors/iceberg.vim

cat ./termguicolors.vim >| ../colors/onedark.vim
cat ../submodules/onedark/autoload/onedark.vim >> ../colors/onedark.vim
cat ../submodules/onedark/colors/onedark.vim >> ../colors/onedark.vim

cat ./termguicolors.vim >| ../colors/gotham.vim
cat ./termguicolors.vim >| ../colors/gotham256.vim
cat ../submodules/gotham/colors/gotham.vim >> ../colors/gotham.vim
cat ../submodules/gotham/colors/gotham256.vim >> ../colors/gotham256.vim

cat ./termguicolors.vim >| ../colors/off.vim
cat ../submodules/off/colors/off.vim >> ../colors/off.vim

cat ./termguicolors.vim >| ../colors/winterd.vim
cat ../submodules/winterd/colors/winterd.vim >> ../colors/winterd.vim

cat ./termguicolors.vim >| ../colors/pencil.vim
cat ../submodules/pencil/colors/pencil.vim >> ../colors/pencil.vim

cat ./termguicolors.vim >| ../colors/nord.vim
cat ../submodules/nord/colors/nord.vim >> ../colors/nord.vim

cat ./termguicolors.vim >| ../colors/falcon.vim
cat ../submodules/falcon/colors/falcon.vim >> ../colors/falcon.vim
