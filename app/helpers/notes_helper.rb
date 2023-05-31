module NotesHelper
  def author_and_signed_in?(note)
    user_signed_in? && note.user == current_user
  end
end
