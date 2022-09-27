class BirthdayJob < ApplicationJob
  queue_as :mailers

  def perform
    User.all.each do | user |
      SendBirthdayJob.perform_later(user.id)
    end
  end
end
