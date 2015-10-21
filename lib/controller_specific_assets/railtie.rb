module ControllerSpecificAssets

  class Railtie < Rails::Railtie
    initializer 'controller_specific_assets.initialize_helpers' do |app|

      config.assets.precompile += [/^controller\w.*\.(css|js)/i]

      ActiveSupport.on_load :action_view do
        include ControllerSpecificAssetsHelpers
      end
    end
  end

end
