class Post < ApplicationRecord
    def self.to_csv
      FileDownloaderJob.new.perform(all)
    end
end
