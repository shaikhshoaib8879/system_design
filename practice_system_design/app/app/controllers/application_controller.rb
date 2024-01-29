class ApplicationController < ActionController::Base

    def create_object
        vehicle_obj = VehicleConcrete.get_vehicle_object('bike')
        vehicle_obj.get_tank_capacity()
    end
end
