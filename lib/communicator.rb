module VagrantPlugins
  module VagrantDummyCommunicator
    class Communicator < Vagrant.plugin("2", :communicator)
      # We can successfully ignore everything, no problem
      def self.match?(machine)
        true
      end

      def initialize(machine)
      end

      def ready?
        true
      end

      def wait_for_ready(duration)
        sleep 2
        return true
      end
    end
  end
end
