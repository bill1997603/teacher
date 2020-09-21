class AddJobToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :job_type, :integer
    add_column :users, :job_status, :integer
    add_column :users, :job_title, :integer
  end
end
