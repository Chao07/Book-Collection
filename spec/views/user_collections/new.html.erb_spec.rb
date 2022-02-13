require 'rails_helper'

RSpec.describe "user_collections/new", type: :view do
  before(:each) do
    assign(:user_collection, UserCollection.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new user_collection form" do
    render

    assert_select "form[action=?][method=?]", user_collections_path, "post" do

      assert_select "input[name=?]", "user_collection[user_id]"

      assert_select "input[name=?]", "user_collection[book_id]"
    end
  end
end
