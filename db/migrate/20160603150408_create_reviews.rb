class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :review
      t.string :quarter_taken
      t.integer :user_id
      t.integer :course_id
      t.integer :professor_id

      t.timestamps

    end
  end
end
