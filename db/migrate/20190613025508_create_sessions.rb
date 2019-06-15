# frozen_string_literal: true

class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :new

      t.timestamps null: false
    end
  end
end
