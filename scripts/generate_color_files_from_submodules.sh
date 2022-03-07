# Some colorschemes separate their palette variables into an autoload file,
# while others require certain '.vimrc' settings.
# This script combines autoload-files/.vimrc settings into a file in '/colors'
# for each colorscheme.

# Set path to this script's path.
# https://stackoverflow.com/questions/24112727/relative-paths-based-on-file-location-instead-of-current-working-directory#answer-24112741
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

cat ../submodules/dracula/autoload/dracula.vim >| ../colors/dracula.vim
cat ../submodules/dracula/colors/dracula.vim >> ../colors/dracula.vim
