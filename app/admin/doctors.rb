ActiveAdmin.register Doctor do
  permit_params :name, :phone, :email, :category_id, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :name
    column :phone
    column :email
    column :category_id.name
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :phone
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :phone
      f.input :category.name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end