require 'newrelic_api'
require 'haml'
require "newrelic_report/version"

module NewrelicReport
  extend self
  
  def generate
    NewRelicApi.api_key = "ffe463cd1daf53666416a08dece82c8666c5e41a46a9b13"
    account = NewRelicApi::Account.find(:first)
    @applications = account.applications
    
    render_file 'email_template.haml'
  end
  
  private
  def render_file(file_name)
    file_path = File.expand_path(File.join(File.dirname(__FILE__), 'newrelic_report', file_name))
    content = File.read(file_path)
    Haml::Engine.new(content).render(self)
  end
end

