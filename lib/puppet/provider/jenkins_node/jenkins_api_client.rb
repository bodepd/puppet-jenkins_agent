require 'jenkins_api_client'
Puppet::Type.type(:jenkins_node).provide(:jenkins_api_client) do

  
  def client
    @client ||= JenkinsApi::Client.new(
      :server_ip => resource[:jenkins_server_ip],
      :username  => resource[:jenkins_username],
      :password  => resource[:jenkins_password],
    )
  end

  def exists?
    client.node.list.include?(resource[:name])
  end

  def create
    puts 'CREATING!!!'
    client.node.create_dumb_slave(
      :name             => resource[:name],
      :slave_host       => resource[:slave_host],
      :slave_user       => resource[:slave_user],
      :private_key_file => resource[:private_key_file],
      :executors        => resource[:executors],
      :labels           => resource[:labels].join(','),
      :credentials_id   => resource[:credentials_id],
    )
  end

end
