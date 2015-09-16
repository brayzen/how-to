class AddTutorialIdToSteps < ActiveRecord::Migration
  def change
    add_reference :steps, :tutorial, index: true, foreign_key: true
  end
end
