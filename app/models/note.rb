require_relative 'note/status'
require_relative 'note/search'
require_relative 'note/breadcrumb_navigation'

class Note < ActiveRecord::Base
  include Note::Status
  include Note::Search
  include Note::BreadcrumbNavigation
end
