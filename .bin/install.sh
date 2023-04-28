git clone --bare https://github.com/FjodorGit/dotfiles $HOME/.cfg
function setupconfig {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
echo "Checked out config.";
setupconfig config status.showUntrackedFiles no
setupconfig checkout

#running ansible script
sudo head -20 /etc/ansible/hosts
echo "Installing ansible...";
cd .bin
sudo apt install ansible -y
echo "Installed ansible";

ansible-playbook setup.yml
