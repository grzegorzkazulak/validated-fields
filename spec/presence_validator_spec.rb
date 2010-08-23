require "spec_helper"

describe ValidatedFields::Validators::PresenceValidator do
 
  before(:each) do
    @user       = User.new
    @controller = UsersController.new
    @builder    = ActionView::Helpers::FormBuilder.new(:user, @user, @controller, {}, nil)
  end
  
  it "should add 'required' and 'data-required-error-msg' to required text fields" do
    input = @builder.text_field(:name)
    
    input.should match(/required="required"/)
    input.should match(/data-required-error-msg="Name is required"/)
  end
end