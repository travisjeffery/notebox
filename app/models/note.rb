require_relative 'note/status'
require_relative 'note/search'

class Note < ActiveRecord::Base
  include Note::Status
  include Note::Search
end
