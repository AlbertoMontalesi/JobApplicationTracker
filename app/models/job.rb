class Job < ApplicationRecord

  enum response: { no_response: 0, refused:1, interview:2, accepted:3}

  enum interview_stage: { no_interview:0, phone_interview:1, first_face_interview:2, second_face_interview:3, concluded:4
    }

  validates :company, :role, :application_date,presence: true

  belongs_to :user
end
