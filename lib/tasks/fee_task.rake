desc 'auto create fee'
task auto_create_fee: :environment do
  # ... set options if any
  Spina::Student.auto_update_dept
end