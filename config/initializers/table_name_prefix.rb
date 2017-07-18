Crammer.class_eval do

  # NOTE: Table name prefixes are normally defined in `app/models`.
  # Since we are using a table prefix with the same name
  # as the application module, we need to define it here.
  def self.table_name_prefix
    'crammer_'
  end
end
