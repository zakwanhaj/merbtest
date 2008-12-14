require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/addressbooks" do
  before(:each) do
    @response = request("/addressbooks")
  end
end