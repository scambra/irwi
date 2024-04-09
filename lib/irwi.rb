require 'active_support/dependencies'
require 'rails_autolink' if defined?(Rails)

module Irwi
  module Support
    autoload :TemplateFinder, 'irwi/support/template_finder'
    autoload :Autodetector, 'irwi/support/autodetector'
  end

  module Comparators
    autoload :DiffLcs, 'irwi/comparators/diff_lcs'
    autoload :Base, 'irwi/comparators/base'
    module Spans
      autoload :ChangedSpan, 'irwi/comparators/spans/changed_span'
      autoload :NotChangedSpan, 'irwi/comparators/spans/not_changed_span'
    end
  end

  module Extensions; end

  autoload :Formatters, 'irwi/formatters'
  autoload :Paginators, 'irwi/paginators'

  def self.config
    @config ||= Irwi::Config.new
  end
end

require 'irwi/helpers'
require 'irwi/config'

ActiveSupport.on_load :action_controller_base do
  require 'irwi/extensions/controllers'
  require 'irwi/support/route_mapper' # Routes
  ActionController::Base.append_view_path File.expand_path('../../app/views', __FILE__) # Append default views
end
ActiveSupport.on_load :active_record do
  require 'irwi/extensions/models'
end
