ActiveAdmin.register Application do

  before_action :authenticate_admin_user!
  # Permitting parameters for strong params to allow CRUD operations
  permit_params :domain, :adapter, :encoding, :database, :pool, :username, :password, :host, :enabled

  # Configuring the index page
  index do
    selectable_column
    id_column
    column :domain
    column :adapter
    column :encoding
    column :database
    column :pool
    column :username
    column :host
    column :enabled
    column :created_at
    column :updated_at
    actions
  end

  # Configuring filters for searching and filtering in admin panel
  filter :domain
  filter :adapter
  filter :database
  filter :username
  filter :host
  filter :enabled
  filter :created_at
  filter :updated_at

  # Form for creating/editing applications
  form do |f|
    f.inputs 'Application Details' do
      f.input :domain
      f.input :adapter
      f.input :encoding
      f.input :database
      f.input :pool
      f.input :username
      f.input :password
      f.input :host
      f.input :enabled
    end
    f.actions
  end

  # Configuring the show page for detailed view
  show do
    attributes_table do
      row :id
      row :domain
      row :adapter
      row :encoding
      row :database
      row :pool
      row :username
      row :password
      row :host
      row :enabled
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
