Puppet::Type.newtype(:jenkins_node) do
  desc 'Manages jenkins slaves'

  ensurable

  newparam(:name, :namevar => true) do

  end

  newparam(:slave_host) do

  end

  newparam(:slave_user) do

  end

  newparam(:credentials_id) do

  end

  newparam(:private_key_file) do

  end

  newparam(:executors) do
    defaultto 1
  end

  newparam(:labels, :array_matching => :all) do
    defaultto []
  end

  newparam(:jenkins_server_ip) do

  end

  newparam(:jenkins_password) do

  end

  newparam(:jenkins_username) do

  end
  
end
