class Note < ActiveRecord::Base
  module BreadcrumbNavigation
    def display_name
      self.id.to_s
    end
  end
end

