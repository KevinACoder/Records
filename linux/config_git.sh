#$1: email addr
#$2: user name
#$3: 

#install git componet
sudo apt-get install git git-core git-gui git-doc git-svn git-cvs$

#backup old key and generate new key
cd 
cd ~/.ssh
mkdir key_bkup
cp id_rsa* key_bkup
rm id_rsa*

ssh-keygen -t rsa -C "$1"
cat id_rsa.pub

ssh -T git@github.com

git config --global user.name "$2"
git config --global user.email "$1"

#create code bank
cd ~/Work/src
git init
touch readme
git add Readme #--all
git commit -m "add readme file"
git remote add origin https://github.com/你的github用户名/你的github仓库.git 

git push origin master
git clone https://github.com/你的github用户名/你的github仓库.git 
