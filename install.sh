apk add git
apk add tmux
apk add nodejs
apk add npm
apk add curl
apk add gcc
apk add clang-extra-tools
apk add musl-dev
apk add make
apk add bear
apk add neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim --headless +PlugInstall +qall
nvim --headless +'CocInstall -sync coc-json' +qall
nvim --headless +'CocInstall -sync coc-prettier' +qall
nvim --headless +'CocInstall -sync coc-eslint' +qall
nvim --headless +'CocInstall -sync coc-tsserver' +qall
nvim --headless +'CocInstall -sync @yaegassy/coc-tailwindcss3' +qall
nvim --headless +'CocInstall -sync coc-clangd' +qall

mv -f ~/.config/nvim/init.vim.final ~/.config/nvim/init.vim
