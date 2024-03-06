class FileDownloaderJob < ApplicationJob
  queue_as :default
  def perform(all)
    attributes = %w{post_id post_name location email}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |post|
        csv << post.attributes.values_at(*attributes)
      end
    end
  end
end
