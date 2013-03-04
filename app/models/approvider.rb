# == Schema Information
#
# Table name: approviders
#
#  id           :integer          not null, primary key
#  first_name   :string(255)
#  last_name    :string(255)
#  name_appears :string(255)
#  title        :string(255)
#  philosophy   :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Approvider < ActiveRecord::Base
  attr_accessible :first_name, 
                  :last_name, 
                  :name_appears, 
                  :title, 
                  :philosophy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :name_appears, presence: true
  validates :title, presence: true
  validates :philosophy, presence: true

  
end


