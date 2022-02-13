require 'rails_helper'

RSpec.describe "user_collections/edit", type: :view do
  before(:each) do
    @user_collection = assign(:user_collection, UserCollection.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit user_collection form" do
    render

    assert_select "form[action=?][method=?]", user_collection_path(@user_collection), "post" do

      assert_select "input[name=?]", "user_collection[user_id]"

      assert_select "input[name=?]", "user_collection[book_id]"
    end
  end
end
