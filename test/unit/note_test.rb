require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  context "status" do
    setup do
      @note = Note.new
    end

    should "be new if note was created within last day" do
      @note.created_at = DateTime.now
      assert_equal Note::Status::NEW, @note.status
      assert @note.new?
    end

    should "be nil if not is older than 1 day" do 
      @note.created_at = 2.days.ago
      assert_nil @note.status
      assert !@note.new?
    end
  end
end
