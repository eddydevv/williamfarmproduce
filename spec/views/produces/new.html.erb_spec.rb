require 'rails_helper'

RSpec.describe "produces/new", type: :view do
  before(:each) do
    assign(:produce, Produce.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new produce form" do
    render

    assert_select "form[action=?][method=?]", produces_path, "post" do

      assert_select "input#produce_name[name=?]", "produce[name]"

      assert_select "textarea#produce_description[name=?]", "produce[description]"
    end
  end
end
