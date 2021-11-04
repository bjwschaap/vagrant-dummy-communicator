begin
  require "vagrant"
rescue LoadError
  raise "The Vagrant Dummy Communicator plugin must be run within Vagrant."
end

module VagrantPlugins
  module VagrantDummyCommunicator
    class Plugin < Vagrant.plugin("2")
      name "vagrant-dummy-communicator"
      description <<-DESC
    Provides a dummy communicator that makes sure Vagrant boot
    will continue without waiting for SSH/WinRM to be ready.
    DESC

      communicator("dummy") do
        require_relative("communicator")
        Communicator
      end
    end
  end
end
