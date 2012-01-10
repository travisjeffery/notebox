require_relative 'note/status'

class Note < ActiveRecord::Base
  include Status
end
