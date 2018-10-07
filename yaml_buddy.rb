# Module that can be included (mixin) to take and output Yaml data
# Module that can be included (mixin) to take and output TSV data
module YamlBuddy
  require 'yaml'
  # take_yaml: takes a yaml string and converts it into
  # a data structure in @data
  # parameter: yaml - a String in YAML format
  def take_yaml(yaml)
    @data = YAML.safe_load(yaml)
  end

  # to_yaml: converts @data into yaml string
  # returns: String in yaml format
  def to_yaml
    @data.to_yaml
  end
end
