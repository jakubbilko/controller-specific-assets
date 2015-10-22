require 'test_helper'

class ControllerSpecificAssetsTest < ActiveSupport::TestCase

  include ActionView::Helpers
  include ControllerSpecificAssetsHelpers

  def test_if_is_module
    assert_kind_of Module, ControllerSpecificAssets
  end

  def test_non_existing_javascript_file
    def params
      { :controller => "pages" }
    end
    assert_equal '<script src="/javascripts/application.js"></script>', controller_javascript_tag
  end

  def test_existing_javascript_file
    def params
      { :controller => "users" }
    end
    assert_equal '<script src="/javascripts/controller_users.js"></script>', controller_javascript_tag
  end

  def test_non_existing_css_file
    def params
      { :controller => "pages" }
    end
    assert_equal '<link rel="stylesheet" media="screen" href="/stylesheets/application.css" />', controller_stylesheet_tag
  end

  def test_existing_css_file
    def params
      { :controller => "users" }
    end
    assert_equal '<link rel="stylesheet" media="screen" href="/stylesheets/controller_users.css" />', controller_javascript_tag
  end

end
