module VagrantPlugins
  module VagrantDummyCommunicator
    class Communicator < Vagrant.plugin("2", :communicator)

      def initialize(machine)
        @env = machine.env
      end

      def ready?
        sleep 2
        true
      end

      def wait_for_ready(duration)
        sleep 2
        return true
      end

      def execute(command, opts=nil)
        0
      end

      def sudo(command, opts=nil)
        execute(command, opts)
      end

      def test(command, opts=nil)
        execute(command, opts)
      end
    end
  end
end
