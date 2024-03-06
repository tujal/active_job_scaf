class WelcomeEmailJob < ApplicationJob
  queue_as :default

  def perform(post)
         PostMailer.welcome_email(post).deliver_now
  end
end
