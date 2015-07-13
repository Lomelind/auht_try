require "spec_helper"

describe User  do
	
	context "valid user" do
		before { @user = User.new(name:"Michael",email: "ww@mail.com",
															password: "123456",
															password_confirmation: "123456")}
		it { expect(@user).to be_valid }
	end

	context "name should be present " do 
		before { 
			@user = User.new(name:"Michael",email: "ww@mail.com",
															password: "123456")
			@user.name = "     "  }
			it { expect(@user).not_to be_valid}
	end	

	context "valid email" do 
		before{
			@user = User.new(name: "ME",email:"v@vvv",
												password: "12345", 
												password_confirmation: "12345")
		}
		it { expect(@user).not_to be_valid}
	end

	context "present password" do 
		before {
			@user = User.new(name:"Me",email: "v@v.com",
												password:"")
		}
		it { expect(@user).not_to be_valid}
	end
end