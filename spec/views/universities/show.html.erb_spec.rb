require 'rails_helper'

RSpec.describe "universities/show", type: :view do
  before(:each) do
    @university = assign(:university, University.create!(
      city_country: "City Country",
      university_name: "University Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City Country/)
    expect(rendered).to match(/University Name/)
  end
end
