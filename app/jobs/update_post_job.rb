class UpdatePostJob < ApplicationJob
  queue_as :default

  def perform(post)
    PostMailer.update_post(post).deliver_now
  end
end
