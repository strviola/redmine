class DropTables < ActiveRecord::Migration
  def change
    drop_table :changeset_parents
    drop_table :changesets_issues
    drop_table :custom_fields_projects
    drop_table :custom_fields_roles
    drop_table :custom_fields_trackers
    drop_table :groups_users
    drop_table :open_id_authentication_associations
    drop_table :open_id_authentication_nonces
    drop_table :projects_trackers
    drop_table :queries_roles
    drop_table :roles_managed_roles
    drop_table :wiki_content_versions
    drop_table :workflows
  end
end
