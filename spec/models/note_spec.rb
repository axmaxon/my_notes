require 'rails_helper'

RSpec.describe Note, type: :model do
  let(:user) { create(:user) }

  describe 'validations' do
    let(:valid_attributes) { { user: user, body: 'Valid body' } }

    it 'is valid with a user and body' do
      note = build(:note, valid_attributes)
      expect(note).to be_valid
    end

    it 'is invalid without a user' do
      note = build(:note, valid_attributes.merge(user: nil))
      expect(note).to be_invalid
      expect(note.errors[:user]).to include("can't be blank")
    end

    it 'is invalid without a body' do
      note = build(:note, valid_attributes.merge(body: nil))
      expect(note).to be_invalid
      expect(note.errors[:body]).to include("can't be blank")
    end

    it 'is invalid with a body exceeding 1000 characters' do
      note = build(:note, valid_attributes.merge(body: 'a' * 1001))
      expect(note).to be_invalid
      expect(note.errors[:body]).to include('is too long (maximum is 1000 characters)')
    end
  end

  describe 'associations' do
    it 'belongs to a user' do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end
  end
end
