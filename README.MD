# 安装

1. 准备好git，curl，ctags环境

```bash
sudo yum install git curl ctags
# or
sudo apt-get install git curl ctags
```

2. 安装插件Vundle.vim

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. 将.vimrc和bundle.vim复制到~/目录中

```bash
git clone https://github.com/zhanguangcheng/vim-config ~/vim-config
cp ~/vim-config/.vimrc ~/
cp ~/vim-config/bundle.vim ~/
```

4. 打开vim，执行:BundleInstall

```bash
vim
:BundleInstall
```

# 使用配置

请看.vimrc 和 bundle.vim
