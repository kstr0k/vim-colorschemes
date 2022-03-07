# Vim colorschemes

One stop shop for vim colorschemes.

The [original repo](https://github.com/flazz/vim-colorschemes) by `flazz` has 
been unmaintained since 2020.

This fork hopes to update/fix all the colorschemes, and remove outdated/buggy ones.

Currently I'm using submodules _(in the `/submodules` dir)_ to allow easy 
updating of the colorscheme from their respective repos.

Many colorscheme repos has their palettes variables in declared in the 
`/autoload` dir, or has additional configs needed in their `.vimrc`. Thus I've 
created a script `/script/generate_color_files_from_submodules.sh` to combine
those additional configs into 1 file in the `/colors` dir.


- If you wanna help out, just drop me a `Pull Request` or `Issue` or contact me
somehow, I'm still pretty new to Github.

- If there's a colorscheme that needs updating, or a colorscheme that should be
removed, just let me know.
