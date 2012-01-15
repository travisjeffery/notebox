class NotePresenter < BasePresenter
  presents :note
  
  def display_created_at
    note.created_at.strftime("%Y-%m-%d %l:%M%P")
  end

  def short_description
    truncate(note.description, :length => 140)
  end
end
