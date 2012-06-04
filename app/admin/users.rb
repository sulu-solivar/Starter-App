ActiveAdmin.register User do
	index do
		column :id
		column :email
		column :current_sign_in_at
		column :last_sign_in_at
		column :last_sign_in_ip
		column :created_at
		column :updated_at
		default_actions
	end
end
