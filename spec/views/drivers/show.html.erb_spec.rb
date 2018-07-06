require 'rails_helper'

RSpec.describe "drivers/show", type: :view do
  before(:each) do
    @driver = assign(:driver, Driver.create!(
      :last_name => "Last Name",
      :first_name => "First Name",
      :phone => "Phone",
      :email => "Email",
      :bank => "Bank",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Bank/)
    expect(rendered).to match(/City/)
  end
end
