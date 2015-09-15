require 'rails/generators/base'

module Aurelia
	class ModuleGenerator < Rails::Generators::Base
		desc "Generate Aurelia Module(html and js files)"
		source_root File.expand_path("../../templates/", __FILE__)
		argument :module_name, :type => :string, :default => "module"
		
		def create_module
			template "module.js", "assets/#{module_name.downcase}.js"
			copy_file "module.html", "assets/#{module_name.downcase}.html"
		end
		
		private
		def class_name
			module_name.capitalize
		end
	end
end