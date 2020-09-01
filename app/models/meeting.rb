class Meeting < ApplicationRecord
    belongs_to :user

    with_options presence: true do
        validates :title
        validates :date_time
        validates :plece
        validates :number
        validates :target_person
        validates :content
    end
end
