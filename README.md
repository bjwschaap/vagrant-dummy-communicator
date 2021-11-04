# vagrant-dummy-communicator

*vagrant-dummy-communicator* is a [Vagrant](http://vagrantup.com) plugin which disables communication with the guest VM, and allows Vagrant to continue without waiting for SSH/WinRM to be ready.

## Installation

Requires vagrant 1.3 or later

### Vagrant ≥ 1.3

```bash
vagrant plugin install vagrant-dummy-communicator
```

## Configuration / Usage

This plugin does not require it's own configuration. You *do* however need to enable
it in your `Vagrantfile`:

```ruby
Vagrant.configure("2") do |config|
  # Use an 'empty' box
  config.vm.box = "q2p/empty"

  # Disable shared folders
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # Set dummy communicator
  config.vm.communicator = "dummy"
end
```

Now you can do `vagrant up --no-provision` to bring up your VM.
