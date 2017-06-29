class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :username, :email
  
  has_many :jobs

  # jobs with  response
  def response_jobs
    self.jobs.where.not(response: 'no_response').count
  end

#jobs refused
  def refused_jobs
    self.jobs.where(response: 'refused').count
  end
#jobswith interview 
  def interview_jobs
    self.jobs.where(response: 'interview').count
  end

end
