SELECT *
FROM car 
LEFT JOIN car_accident
ON car.car_id = car_accident.car_id
LEFT JOIN car_model
ON car_accident.car_id = car_model.car_id
LEFT JOIN car_owner
ON car_model.car_id = car_owner.car_id
LEFT JOIN car_specification
ON car_owner.car_id = car_specification.car_id
LEFT JOIN cars_price_list
ON car_specification.car_id = cars_price_list.car_id
LEFT JOIN car_type
ON cars_price_list.car_id = car_type.car_id
LEFT JOIN electric_car
ON car_type.car_id = electric_car.car_id
LEFT JOIN insurance_company
ON electric_car.car_id = insurance_company.car_id
LEFT JOIN service_center
ON insurance_company.car_id = service_center.car_id
LEFT JOIN service_record
ON service_center.car_id = service_record.car_id
