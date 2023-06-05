SELECT car.car_id, 
car.brand, car.model, car.year, car.color, car.car_owner_car_id, car.brand_name,
car_accident.car_id, car_accident.accident_date, car_accident.location, car_accident.car_car_id, 
car_model.car_id, car_model.model_name, car_model.car_modelcol, car_model.cars_price_list_car_id, 
car_owner.car_id, car_owner.owner_name, car_owner.owner_contact_number, car_owner.owner_email, car_owner.driver_lisence,
car_specification.car_id, car_specification.engine_capacity, car_specification.car_car_id,
cars_price_list.car_id, cars_price_list.car_brand, cars_price_list.car_model, cars_price_list.year, cars_price_list.price,
car_type.car_id, car_type.type_name, car_type.car_model_car_id, car_type.car_specification_car_id,
electric_car.car_id, electric_car.car_brand, electric_car.battery_capacity, electric_car.car_car_id, electric_car.car_type_car_id,
insurance_company.car_id, insurance_company.name, insurance_company.contact_number, insurance_company.email, insurance_company.car_owner_car_id, insurance_company.car_owner_owner_name,
service_center.car_id, service_center.center_name, service_center.center_location, service_center.contact_phone, service_center.service_record_record_id,
service_record.record_id, service_record.service_date, service_record.service_details, service_record.car_id
FROM car
FULL JOIN car_accident ON
car.car_id = car_accident.car_accident_id
FULL JOIN car_model ON
car_accident.car_accident_id = car_model.car_model_id;
FULL JOIN car_specification ON

