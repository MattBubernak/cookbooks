require 'aws-sdk'

node[:deploy].each do |application, deploy|

  apt_repository 'yarn' do
    uri          'https://dl.yarnpkg.com/debian/'
    components   ['stable', 'main']
    key          'https://dl.yarnpkg.com/debian/pubkey.gpg'
  end

  package 'yarn'

end

