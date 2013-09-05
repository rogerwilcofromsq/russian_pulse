require 'erb'

class Template
  def initialize(path)
    @template_path = path
  end

  def build
    b = binding
    result = ERB.new(File.read(@template_path).gsub(/\s+$/, ""), 0, "", "@output").result(b)

    result
  end

  def render(options)
    partial_path = File.join(File.dirname(@template_path), "_#{options[:partial]}.erb")
    partial_template = Template.new(partial_path).build
  end
end
