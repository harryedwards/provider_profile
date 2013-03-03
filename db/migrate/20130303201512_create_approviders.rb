class CreateApproviders < ActiveRecord::Migration
  def change
    create_table :approviders do |t|
      t.string :first_name
      t.string :last_name
      t.string :name_appears
      t.string :title
      t.text   :philosophy

      t.timestamps
    end
  end
end
