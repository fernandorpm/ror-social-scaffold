require 'rails_helper'

RSpec.describe "guizaos/index", type: :view do
  before(:each) do
    assign(:guizaos, [
      Guizao.create!(
        brabo: "Brabo"
      ),
      Guizao.create!(
        brabo: "Brabo"
      )
    ])
  end

  it "renders a list of guizaos" do
    render
    assert_select "tr>td", text: "Brabo".to_s, count: 2
  end
end
