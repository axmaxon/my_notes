class NotesController < ApplicationController
  def index
    @pagy, @notes = pagy(Note.includes(:user).order(created_at: :asc))

    reassign_line_numbers(@pagy, @notes)
  end

  def create
    @note = current_user.notes.build(note_params)

    # turbo_stream.remove("flash") if request.xhr? && params[:page]
    if @note.save
      @notes = Note.all
      redirect_to root_path, notice: "Note created"
    else
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to root_path, notice: "Note removed"
  end

  private

  def note_params
    params.require(:note).permit(:body)
  end

  def reassign_line_numbers(pagy, notes)
    # page number * items per page count
    offset = (pagy.page - 1) * pagy.items

    notes.each_with_index do |note, index|
      note.line_number = offset + index + 1
    end
  end
end
