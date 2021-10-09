# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: {
      status: {code: 200, message: 'Logged in successfully.'},
      data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
    }
  end

  # def respond_with(resource, _opts = {})
  #   register_success && return if resource.persisted?

  #   register_failed
  # end

  # def register_success
  #   render json: { message: 'Signed up sucessfully.' }
  # end

  # def register_failed
  #   render json: { message: "Something went wrong." }
  # end

  
end
