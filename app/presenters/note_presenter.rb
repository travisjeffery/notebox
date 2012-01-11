class NotePresenter < BasePresenter
  presents :note
  
  def display_created_at
    note.created_at.strftime("%Y-%m-%d %l:%M%P")
  end
end
