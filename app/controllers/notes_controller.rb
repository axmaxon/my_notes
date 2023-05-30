class NotesController < ApplicationController
  def index
    @pagy, @notes = pagy(Note.order(created_at: :asc))

    # page number * items per page count
    offset = (@pagy.page - 1) * @pagy.items

    @notes.each_with_index do |note, index|
      note.line_number = offset + index + 1
    end
  end

  def create
    @note = current_user.notes.build(note_params)
    @note.save!
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
  end

  private

  def note_params
    params.require(:note).permit(:body)
  end
end
