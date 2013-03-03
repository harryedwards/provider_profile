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

require 'spec_helper'

describe Approvider do
  before {  @user = Approvider.new(
  	   first_name: "Mary", 
  	   last_name: "George",
  	   name_appears: "Mary George",
  	   title: "Nurse",
  	   philosophy: "I like helping patients"
  	   )}
  subject {  @user  }

  it {  should respond_to(:first_name)  }
  it {  should respond_to(:last_name)  }
  it {  should respond_to(:name_appears)  }
  it {  should respond_to(:title)  }
  it {  should respond_to(:philosophy)  }

  describe "when first_name is not present" do
  	before {  @user.first_name = " "}
  	it {  should_not be_valid}
  end

end
