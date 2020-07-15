# ubuntu init

## Step1

`sudo apt install -y ssh curl zsh git vim autojump`

## Step2 install oh my zsh
```shell
git clone https://github.com/ohmyzsh/ohmyzsh.git
sudo rm -rf /home/$USER/.oh-my-zsh
sudo chmod u+x ohmyzsh/**/*
./ohmyzsh/tools/install.sh
```

## Step3 innstall oh my zsh plugins
```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed s/robbyrussell/ys/g ~/.zshrc | sed s/'(git)'/'(git history last-working-dir zsh-autosuggestions autojump)'/g > ~/.zshrc.tmp
rm -f ~/.zshrc
mv ~/.zshrc.tmp ~/.zshrc
source ~/.zshrc
```

