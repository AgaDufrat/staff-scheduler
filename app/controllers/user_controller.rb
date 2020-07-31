class UserController < ApplicationController
  def show
    @booked_shifts = Shift.where(user: current_user)
  end
end
