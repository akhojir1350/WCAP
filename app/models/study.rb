# == Schema Information
#
# Table name: studies
#
#  id          :integer          not null, primary key
#  admin_id    :integer          not null
#  description :text             not null
#  created_at  :datetime
#  updated_at  :datetime
#  finalized   :boolean          default(FALSE), not null
#

class Study < ActiveRecord::Base
  belongs_to :admin , :class_name => :User
  has_many :test_details
  has_and_belongs_to_many :users
  has_and_belongs_to_many :ddt_questions, join_table: :ddt_questions_studies
  has_many :tasks


  validates :description, presence: true
  validates :admin, presence: true

  #Returns Patients of Study
  def patients
    patients = []
    tasks.each do |task|
      patients.append(task.patient)
    end
    return patients
  end

  #Creates task for patient from TestDetails
  def create_task(patient)
    t = Task.new
    test_details.each do |tdetail|
      test = tdetail.name.constantize.new
      test.create_one(tdetail)
      t.tests << test
      test.save
    end
    t.patient = patient
    t.save
    self.tasks.append(t)
  end
end
