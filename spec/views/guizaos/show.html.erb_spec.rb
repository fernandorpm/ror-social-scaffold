require 'rails_helper'

RSpec.describe "guizaos/show", type: :view do
  before(:each) do
    @guizao = assign(:guizao, Guizao.create!(
      brabo: "Brabo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Brabo/)
  end
end
