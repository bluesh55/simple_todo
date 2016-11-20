class CreateActiveRecordRepoTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :active_record_repo_todos do |t|

      t.string :content
      t.timestamps
    end
  end
end
