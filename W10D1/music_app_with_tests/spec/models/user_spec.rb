require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before(:all) do
    user_zero = User.new(email: "email@email.com")  
    user_zero.password = "random gibberish"
    user_zero.save
  end
  
  subject(:user_zero) { User.find_by(email: "email@email.com") }

  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end


  describe "#is_password?" do
    it "should verify an input password" do
      result_true = user_zero.is_password?("random gibberish")
      result_false = user_zero.is_password?("not the password")
      expect(result_true).to be true
      expect(result_false).to be false
    end

  end

  describe "#reset_session_token!" do
    it "should reset the user's session token and save it to the database" do
      session_token1 = user_zero.session_token
      session_token2 = user_zero.reset_session_token!
      expect(session_token1).not_to eq(session_token2)
      expect(session_token2).to eq(user_zero.session_token)
    end
  end

  describe "::find_by_credentials" do
    it "should return a user in the database from username and password" do
      user = User.find_by_credentials("email@email.com", "random gibberish")
      expect(user).to eq(user_zero)
    end
    
    it "should return nil if user is not found" do 
      user = User.find_by_credentials("not the email", "random gibberish")
      expect(user).to be_nil
    end
  end
end
