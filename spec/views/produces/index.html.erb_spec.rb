require 'rails_helper'

RSpec.describe "produces/index", type: :view do
  before(:each) do
    assign(:produces, [
      Produce.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Produce.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of produces" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
