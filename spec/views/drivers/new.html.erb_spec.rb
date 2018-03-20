require 'rails_helper'

RSpec.describe "drivers/new", type: :view do
  before(:each) do
    assign(:driver, Driver.new(
      :last_name => "MyString",
      :first_name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :bank => "MyString",
      :city => "MyString"
    ))
  end

  it "renders new driver form" do
    render

    assert_select "form[action=?][method=?]", admins_drivers_path, "post" do

      assert_select "input[name=?]", "driver[last_name]"

      assert_select "input[name=?]", "driver[first_name]"

      assert_select "input[name=?]", "driver[phone]"

      assert_select "input[name=?]", "driver[email]"

      assert_select "input[name=?]", "driver[bank]"

      assert_select "input[name=?]", "driver[city]"
    end
  end
end
