#! /bin/sh
vimrc="/home/polluticorn/.vimrc"
bashrc="/home/polluticorn/.bashrc"
ith="/home/polluticorn/.config/i3/"
ithb="/home/polluticorn/.config/i3blocks/"
xdef="/home/polluticorn/.Xdefaults"
vimplugins="/home/polluticorn/.vim/"
keyRemaps="/home/polluticorn/.scripts/keyRemaps.sh"
tmuxconf="/home/polluticorn/.tmux.conf"

cp    $vimrc      .
cp    $bashrc     .
cp -R $ith        .
cp -R $ithb       .
cp    $xdef       .
cp -R $vimplugins .
cp    $keyRemaps  . 
cp    $tmuxconf   .
