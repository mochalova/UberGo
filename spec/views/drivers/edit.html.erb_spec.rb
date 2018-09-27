require 'rails_helper'

RSpec.describe "drivers/edit", type: :view do
  before(:each) do
    @driver = assign(:driver, Driver.create!(
      :last_name => "MyString",
      :first_name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :bank => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit driver form" do
    render

    assert_select "form[action=?][method=?]", admins_driver_path(@driver), "post" do

      assert_select "input[name=?]", "driver[last_name]"

      assert_select "input[name=?]", "driver[first_name]"

      assert_select "input[name=?]", "driver[phone]"

      assert_select "input[name=?]", "driver[email]"

      assert_select "input[name=?]", "driver[bank]"

      assert_select "input[name=?]", "driver[city]"
    end
  end
end
