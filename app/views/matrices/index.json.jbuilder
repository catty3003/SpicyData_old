json.array!(@matrices) do |matrix|
  json.extract! matrix, :id, :m_common_name, :m_genus, :m_species, :other_matrix_name, :plant_part, :storage_form, :product_form, :place_of_origin, :date_of_harvest, :relative_humidity_during_harvest, :temperature_during_harvest, :pre_treatment, :sampling_date, :m_ph, :m_aw, :humidity_of_matrix, :ash, :sand, :lipids, :further_ingredients, :m_comment, :reference_id, :user_id
  json.url matrix_url(matrix, format: :json)
end
