require 'spec_helper'

describe Mailgun do
  describe ".new" do
    it "is a Mailgun::Base" do
      expect(Mailgun.new({:api_key => "foo"})).to be_a(Mailgun::Base)
    end
  end

  describe "configuration" do
    it "persists" do
      mailgun = Mailgun.new({:api_key => "foo", :api_version => 1})

      Mailgun.api_key.should eql "foo"
      Mailgun.api_version.should eql 1
    end
  end

  describe "Mailgun()" do
    it "still works" do
      expect(Mailgun(:api_key => "foo")).to be_a(Mailgun::Base)
    end

    it "produces a deprecation warning" do
      Kernel.should_receive(:warn).with("[DEPRECATION] `Mailgun` is now deprecated. Please use `Mailgun.new` instead.")

      Mailgun(:api_key => "foo")
    end
  end

end
