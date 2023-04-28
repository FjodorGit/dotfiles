git clone --bare https://github.com/FjodorGit/dotfiles $HOME/.cfg
function setupconfig {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
echo "Checked out config.";
config config status.showUntrackedFiles no
config checkout

#running ansible script
cd .bin
sudo apt install ansible
echo "Installed ansible";

ansible-playbook setup.yml
