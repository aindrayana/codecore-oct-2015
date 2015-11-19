class CreateQuestions < ActiveRecord::Migration
  def change
    # The DSL (Domain Specific Language) is a RUby code woth special methods
    # that enables us to achieve a specific task, in this case the DSL for
    # migrations enables us to create / drop tables
    create_table :questions do |t|

      # we dont need to create 'id' field because Rails will automatically
      # create an id field that is integer, primary key and autoincreament
      t.string :title   # this will create VARCHAR column
      t.text :body      # this will create TEXT

      t.timestamps null: false # this will create two timestamps column in db
                               # one is "created_at" and "updated_at"
    end
  end
end
