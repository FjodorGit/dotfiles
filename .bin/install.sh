git clone --bare https://github.com/FjodorGit/dotfiles $HOME/.cfg
function setupconfig {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
echo "Checked out config.";
setupconfig config status.showUntrackedFiles no
setupconfig checkout

#appending 'localhost' to the  1 first line in the hosts file
sudo sed -i '12 i localhost' /etc/ansible/hosts

#running ansible script
echo "Installing ansible...";
cd .bin
sudo apt install ansible -y
echo "Installed ansible";

ansible-playbook setup.yml
