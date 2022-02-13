require 'rails_helper'

RSpec.describe "user_collections/index", type: :view do
  before(:each) do
    assign(:user_collections, [
      UserCollection.create!(
        user_id: 2,
        book_id: 3
      ),
      UserCollection.create!(
        user_id: 2,
        book_id: 3
      )
    ])
  end

  it "renders a list of user_collections" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
