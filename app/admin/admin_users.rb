ActiveAdmin.register AdminUser do

  actions :all, except: [:new, :create, :destroy, :update]

  index do
    selectable_column
    id_column
    column :email
    column :sign_in_count
    column :current_sign_in_at
    column :last_sign_in_at
    column :current_sign_in_ip
    column :last_sign_in_ip
    actions
  end

  show do
    attributes_table do
      row :email
      row :sign_in_count
      row :current_sign_in_at
      row :last_sign_in_at
      row :current_sign_in_ip
      row :last_sign_in_ip
    end
    active_admin_comments
  end
  
end
