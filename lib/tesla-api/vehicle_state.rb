module TeslaAPI
  # Defines the current vehicle state
  class VehicleState < Data
    ##
    # @method firmware_version
    # @return [String] Current firmware version

    ##
    # @method sun_roof_installed?
    # @return [Boolean] if the vehicle is configured with the panoramic sun roof

    ##
    # @method sun_roof_state
    # @return [String] Current state of the sun roof
    # Potential values: unknown, moving

    ##
    # @method sun_roof_percent_open
    # @return [Integer] Percentage the sun roof is open

    ##
    # @method driver_front_door_open?
    # @return [Boolean] if the driver's side front door is open

    ##
    # @method driver_rear_door_open?
    # @return [Boolean] if the driver's side rear door is open

    ##
    # @method passenger_front_door_open?
    # @return [Boolean] if the passenger's side front door is open

    ##
    # @method passenger_rear_door_open
    # @return [Boolean] if the passenger's side rear door is open

    ##
    # @method front_trunk_open?
    # @return [Boolean] if the front trunk (frunk) is open

    ##
    # method rear_trunk_open?
    # @return [Boolean] if the rear trunk is open

    ##
    # @method locked?
    # @return [Boolean] if the doors are locked

    ##
    # @method dark_rims?
    # @return [Boolean] if configured with dark colored rims

    ##
    # @method spoiler?
    # @return [Boolean] if configured with a spoiler

    ##
    # @method nineteen_inch_wheels?
    # @return [Boolean] if configured with nineteen inch wheels

    ##
    # @method panoramic?
    # @return [Boolean] configured with a panoramic roof

    ##
    # @method perf?
    # @return [Boolean] if a performance configured vehicle

    def initialize(data)
      ivar_from_data("firmware_version",          "car_version",           data)
      ivar_from_data("sun_roof_installed",        "sun_roof_installed",    data)
      ivar_from_data("sun_roof_state",            "sun_roof_state",        data)
      ivar_from_data("sun_roof_percent_open",     "sun_roof_percent_open", data)
      ivar_from_data("driver_front_door_open",    "df",                    data)
      ivar_from_data("driver_rear_door_open",     "dr",                    data)
      ivar_from_data("passenger_front_door_open", "pf",                    data)
      ivar_from_data("passenger_rear_door_open",  "pr",                    data)
      ivar_from_data("front_trunk_open",          "ft",                    data)
      ivar_from_data("rear_trunk_open",           "rt",                    data)
      ivar_from_data("locked",                    "locked",                data)
      ivar_from_data("dark_rims",                 "dark_rims",             data)
      ivar_from_data("spoiler",                   "has_spoiler",           data)

      @nineteen_inch_wheels      = data["wheel_type"] == "Base19"
      @panoramic                 = data["roof_color"] == "None"
      @perf                      = data["perf_config"] != "Base"
    end
  end
end

