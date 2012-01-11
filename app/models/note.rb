require_relative 'note/status'

class Note < ActiveRecord::Base
  include Note::Status
end
