require 'rails_helper'

RSpec.describe "produces/edit", type: :view do
  before(:each) do
    @produce = assign(:produce, Produce.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit produce form" do
    render

    assert_select "form[action=?][method=?]", produce_path(@produce), "post" do

      assert_select "input#produce_name[name=?]", "produce[name]"

      assert_select "textarea#produce_description[name=?]", "produce[description]"
    end
  end
end
