require 'rails/generators/base'

module Aurelia
	class InstallGenerator < Rails::Generators::Base
		source_root File.expand_path("../../", __FILE__)
		
		desc "Install all dependencies for Aurelia, and integrates into Rails App"
		def copy_package_json
			copy_file "js/package.json", "package.json"
		end
		
		def copy_sample_app
			directory "js/", "assets/"
			remove_file("assets/package.json")
		end
		
		def restore_packages
			exec "jspm install && jspm dl-loader"
		end
		
	end
end