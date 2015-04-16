require_relative 'spec_helper'


describe 'url shortner homepage' do
  before do
    @url = Url.create(original: "www.devbootcamp.com")
    @url_alias = @url.url_alias
    @click_count = @url.click_count
  end

  it "shows homepage" do
    get '/'
    expect(last_response.status).to eq 200
  end

  it "shows h1" do
    get '/'
    expect(last_response.body).to include(@url_alias)
  end

  it "should redirect to original" do
    get "/#{@url_alias}"
    expect(last_response.status).to eq 302
  end

  it "increment click count" do
    url = Url.where(url_alias: @url_alias).first
    old_click_count = url.click_count
    get "/#{@url_alias}"
    url = Url.where(url_alias: @url_alias).first
    new_click_count = url.click_count
    expect(new_click_count).to eq (old_click_count + 1)
  end
end

describe 'new url creation form' do
  it "shows form" do
    get '/'
    expect(last_response.body).to include("<form")
  end
end




