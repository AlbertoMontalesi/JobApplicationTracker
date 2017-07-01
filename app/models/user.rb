class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  validates :email, presence: true, on: [:create, :update]
  validates :username, presence: true
  validates_uniqueness_of :username, :email

  devise :database_authenticatable, authentication_keys: [:username]

  has_many :jobs

  # jobs with  response
  def response_jobs
    jobs.where.not(response: 'no_response').count
  end

  # jobs refused
  def refused_jobs
    jobs.where(response: 'refused').count
  end

  # jobswith interview
  def interview_jobs
    jobs.where(response: 'interview').count
  end
end
