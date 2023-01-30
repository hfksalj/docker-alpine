FROM alpine
COPY install.sh init.vim.final init.vim coc-settings.json /root/.config/nvim/
RUN /root/.config/nvim/install.sh
