class CreateReviewers < ActiveRecord::Migration[6.1]
  def change
    create_table :reviewers do |t|
      t.references :tamu_department, null: false, foreign_key: true
      t.references

      t.timestamps
    end
  end
end