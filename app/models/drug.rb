class Drug < ActiveRecord::Base
    resourcify
    validates :name, :drug_type, :origin, :average_ingest, :ingestion_form, :effect_average, :duration, :effect_high,
            :dependence_psychological, :dependence_phisical, :tolerance, :medical_use,
            :presence => true
end
