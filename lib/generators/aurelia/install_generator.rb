require 'rails/generators/base'

module Aurelia
	class InstallGenerator < Rails::Generators::Base
		desc "Install all dependencies for Aurelia, create Aurelia Layout, and integrates into Rails Papeline"
		source_root File.expand_path("../../", __FILE__)
		argument :layout_name, :type => :string, :default => "application"
		argument :module_name, :type => :string, :default => "main"
		
		def copy_sample_app
			# Copy Sample App Files
			directory "sample/", "assets/"
			
			# Create Application Name and Layout Name
			template "templates/application.html.erb", "app/views/layouts/#{file_name}.html.erb"
			copy_file "templates/main.js", "assets/#{mod_name}.js"
			copy_file "templates/appaurelia.js", "app/assets/javascripts/#{file_name}.js"
			
			# Copy the Config.js and Packages.js to destination directory.
			copy_file "templates/package.json", "package.json"
			copy_file "templates/config.js", "assets/config.js"
			
		end
		
		def restore_packages
			exec "jspm install && jspm dl-loader"
		end
		
		private
		def file_name
			layout_name.downcase.underscore
		end
		
		def mod_name
			module_name.downcase.underscore
		end
		
	end
end