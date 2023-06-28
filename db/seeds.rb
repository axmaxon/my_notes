FactoryBot.definition_file_paths << 'spec/factories'
FactoryBot.find_definitions

# Create 5 users, each with 8 notes
5.times do
  user = FactoryBot.create(:user)

  8.times { FactoryBot.create(:note, user: user) }
end
