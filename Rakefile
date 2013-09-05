require './template'

task :default => [:build]

task :build do
  template = Template.new(File.expand_path("./views/blogger_template.xml.erb"))

  File.open("./build/blogger_template.xml", "w") do |output|
    output.puts template.build
  end
end
