class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :website
      t.string :keyword

      t.timestamps
    end
  end
end
