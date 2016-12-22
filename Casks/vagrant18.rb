cask 'vagrant18' do
  version '1.8.7'
  sha256 '14d68f599a620cf421838ed037f0a1c4467e1b67475deeff62330a21fda4937b'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'd3d0452d55c76d71c91b71ff2026b16e6acb61b7662adf9f36c284bcc50d5726'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'Vagrant.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
