class Shift < ApplicationRecord
  belongs_to :user

  # do i need this if I have belongs to?
  validates :user, presence: true
  validates :within_opening_times, :not_exeeting_max_number_of_staff,


  OFFICE_OPENING_TIME = 7
  OFFICE_CLOSING_TIME = 3
  MAX_NUMBER_OF_STAFF_ON_SHIFT = 1

  def within_opening_times
    # Thu, 09 Jul 2020 13:00:00 BST +01:00
    errors.add(:base "Choose time between 7am and 3am") if (start.beginning_of_hour.hour >= OFFICE_CLOSING_TIME && end.beginning_of_hour.hour < OFFICE_OPENING_TIME) ||
    end.beginning_of_hour.hour> OFFICE_CLOSING_TIME && start.beginning_of_hour.hour <= OFFICE_OPENING_TIME)
  end

  def not_exeeting_max_number_of_staff

  end

  private

  def start_hour
  end

  def end_hour
  end

end
