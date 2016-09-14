FactoryGirl.define do
  factory :project_hook do
    url { FFaker::Internet.uri('http') }

    trait :token do
      token { SecureRandom.hex(10) }
    end

    trait :all_events_enabled do
      push_events true
      merge_requests_events true
      tag_push_events true
      issues_events true
      note_events true
      pipeline_events true
      wiki_page_events true
    end
  end
end
