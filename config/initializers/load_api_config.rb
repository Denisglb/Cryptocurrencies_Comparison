CONFIG_PATH= '#{Rails.root}/conifg/api_config.yml'
APP_CONFIG = YAML.load_file(CONFIG_PATH)[Rails.env]