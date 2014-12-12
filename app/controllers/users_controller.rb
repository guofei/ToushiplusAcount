class UsersController < ApplicationController
  # before_action :doorkeeper_authorize!
  doorkeeper_for :all
  respond_to    :json

  # GET /users/
  # GET /users/me.json
  def me
    respond_with current_resource_owner
  end

  private

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
