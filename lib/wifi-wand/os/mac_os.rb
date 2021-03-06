require_relative 'base_os'

module WifiWand

class MacOs < BaseOs

  def initialize()
    super(:mac, 'Mac OS')
  end

  def current_os_is_this_os?
    !! /darwin/.match(RbConfig::CONFIG["host_os"])
  end

  def create_model(options)
    require_relative '../models/mac_os_model'
    MacOsModel.new(options)
  end
end
end
