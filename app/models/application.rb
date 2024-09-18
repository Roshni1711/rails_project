class Application < ApplicationRecord
  self.table_name = 'databases'

  def self.ransackable_attributes(auth_object = nil)
    ["adapter", "created_at", "database", "domain", "enabled", "encoding", "host", "id", "password", "pool", "updated_at", "username"]
  end
end
