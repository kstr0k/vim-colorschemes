# Some colorschemes separate their palette variables into an autoload file,
# while others require certain '.vimrc' settings.
# This script combines autoload-files/.vimrc settings into a file in '/colors'
# for each colorscheme.


# Set path to this script's path.
# https://stackoverflow.com/questions/24112727/relative-paths-based-on-file-location-instead-of-current-working-directory#answer-24112741
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"


for submodule_dir in ../submodules/*; do
  for colors_file in $submodule_dir/colors/*.vim; do
    colors_filename=$(basename $colors_file)
    output_file="../colors/$colors_filename"
    
    # Enable 'termguicolors', else most colorschemes might display incorrect colors.
    cat ./termguicolors.vim >| $output_file

    # A few colorschemes declare their color palette variables in the
    # '/submodule/[name]/autoload/[name].vim' file.
    autoload_file="$submodule_dir/autoload/$colors_filename"
    if test -f "$autoload_file"; then
      cat $autoload_file >> $output_file
    fi

    # Copy over main colors file.
    cat $colors_file >> $output_file
  done
done
