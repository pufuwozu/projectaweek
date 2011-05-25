require 'spec_helper'

describe "hackers/index.html.haml" do
  before(:each) do
    assign(:hackers, [
      stub_model(Hacker,
        :twitter => "Twitter"
      ),
      stub_model(Hacker,
        :twitter => "Twitter"
      )
    ])
  end

  it "renders a list of hackers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
  end
end
