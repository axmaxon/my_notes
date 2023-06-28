FactoryBot.define do
  factory :note do
    association :user
    body { FFaker::Lorem.phrase }
    created_at { FFaker::Time.between(Time.zone.now, 1.week.ago) }
    updated_at { created_at }
  end
end
