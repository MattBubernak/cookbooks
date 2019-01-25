node[:deploy].each do |application, deploy|
    template "/etc/redis/redis.conf" do
      source "redis.conf.erb"
      cookbook 'redis'
      mode "644"
      group 'root'
      owner 'root'
    end
end
