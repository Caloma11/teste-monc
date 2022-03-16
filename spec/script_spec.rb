require_relative '../script.rb'


RSpec.describe "parsed_leads" do
  filepath = "#{__dir__}/lost_leads_spec.csv"

  it "should return an array of leads" do
    expect(parse_leads(filepath).length).to eq(1)
  end

  it "should successfully post the leads" do
    leads = parse_leads(filepath)
    expect(post_leads(leads).response.code).to eq("200")
  end
end
