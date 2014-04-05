# Prepare puppetlabs repo
wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
apt-get update

# Install puppet/facter
apt-get install -y puppet=3.4.3-1puppetlabs1 facter
# Mark puppet packages to be held so we do not upgrade to the latest puppet
apt-mark hold puppet puppet-common

sleep 3
