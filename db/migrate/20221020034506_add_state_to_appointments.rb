class AddStateToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :active, :boolean, default: false
  end
end
