class Note < ActiveRecord::Base
  module Status
    def status
      NEW if self.created_at > 1.days.ago
    end

    def new?
      self.status == NEW
    end

    NEW = "new"
  end
end
