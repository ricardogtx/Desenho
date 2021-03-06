class CreateDrug < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
   	t.string   :name
    t.string   :drug_type
    t.string   :origin
    t.string   :average_ingest
    t.string   :ingestion_form
    t.string   :effect_average
    t.string   :duration
    t.string   :effect_high
    t.string   :dependence_psychological
    t.string   :dependence_phisical
    t.string   :tolerance
    t.string   :long_effects
    t.string   :medical_use
    t.float    :usage_percentage
    t.float    :death_rate
    t.float    :dependency_rate
    t.timestamps null: false
    end
  end
end
