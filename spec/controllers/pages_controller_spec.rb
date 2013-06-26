require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    render_views
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "doit avoir le bon titre" do
      get 'home'
      response.should have_selector("title",
                    :content => "Simple App | Home")
    end
  end

  describe "GET 'contact'" do
    render_views
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "doit avoir le bon titre" do
      get 'contact'
      response.should have_selector("title",
                    :content => "Simple App | Contact")
    end
  end

  describe "GET 'about'" do
    render_views
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "doit avoir le bon titre" do
      get 'about'
      response.should have_selector("title",
                    :content => "Simple App | About")
    end
  end

end

