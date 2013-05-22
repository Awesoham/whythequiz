require 'spec_helper'

describe Question do
  before(:each) do
  	@attr = {
  		text: "What is this?",
  		answer: "Do I look like I care?",
  		user: FactoryGirl.create(:user),
  		quizzes: []
  	}
  end
  it "should create a new instance with valid attributes" do
  	Question.create!(@attr)
  end	

  it "should fail with nil arguments" do
  	Question.new(@attr.merge(user: nil)).should_not be_valid
  	Question.new(@attr.merge(text: nil)).should_not be_valid
  	Question.new(@attr.merge(answer: nil)).should_not be_valid
  end
end
