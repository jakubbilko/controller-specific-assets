module ControllerSpecificAssetsHelpers

  def controller_javascript_tag
    javascript_include_tag generate_asset_path("controller_#{params[:controller]}", 'js')
  end

  def controller_stylesheet_tag
    stylesheet_link_tag generate_asset_path("controller_#{params[:controller]}", 'css')
  end

  private

  def generate_asset_path(path, ext)
    pathname = Rails.application.assets.resolve("#{path}.#{ext}")
    if pathname then "#{path}.#{ext}" else "application.#{ext}" end
  end

end
