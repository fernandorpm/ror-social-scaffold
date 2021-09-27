require 'rails_helper'

RSpec.describe "guizaos/edit", type: :view do
  before(:each) do
    @guizao = assign(:guizao, Guizao.create!(
      brabo: "MyString"
    ))
  end

  it "renders the edit guizao form" do
    render

    assert_select "form[action=?][method=?]", guizao_path(@guizao), "post" do

      assert_select "input[name=?]", "guizao[brabo]"
    end
  end
end
