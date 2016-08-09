# Custom controller that will allowed the user to edit the profile without typing their current password
class RegistrationsController < Devise::RegistrationsController

  protected
    def update_resource(resource, params)
      resource.update_without_password(params)
    end

end
