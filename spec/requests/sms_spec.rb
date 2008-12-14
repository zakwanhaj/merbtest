require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/sms" do
  before(:each) do
    @response = request("/sms")
  end
end