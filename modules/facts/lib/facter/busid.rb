Facter.add(:gpu_device_bus_id) do
  setcode do
    Facter::Core::Execution.execute('nvidia-xconfig --query-gpu-info  | grep BusID | sed "s/.*PCI:/PCI:/g"')
  end
end
