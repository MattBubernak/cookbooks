node[:deploy].each do |application, deploy|
    path = "#{deploy[:current_path]}/realtime"
    user = deploy[:user]

    execute 'install node dependencies' do
      cwd path
      user user
      command "HOME=/home/#{user} npm install"
    end

    execute "restart #{application} || start #{application}" do
      user "root"
    end

  end