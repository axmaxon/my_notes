require 'rails_helper'

RSpec.describe 'Notes', type: :request do
  let(:user) { create(:user) }
  let(:note) { create(:note, user: user) }

  before do
    sign_in user
  end

  describe 'GET /' do
    it 'returns 200' do
      get '/'
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /notes' do
    context 'with valid params' do
      it 'returns 302' do
        post '/notes', params: { note: { body: 'Valid body' } }
        expect(response).to have_http_status(:found)
      end

      it 'redirects to root path' do
        post '/notes', params: { note: { body: 'Valid body' } }
        expect(response).to redirect_to(root_path)
      end

      it 'creates a new note' do
        expect do
          post '/notes', params: { note: { body: 'Valid body' } }
        end.to change(Note, :count).by(1)
      end

      it 'sets a flash notice' do
        post '/notes', params: { note: { body: 'Valid body' } }
        expect(flash[:notice]).to eq('Note created')
      end
    end
  end
end
