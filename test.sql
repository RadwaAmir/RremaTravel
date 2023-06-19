-- إنشاء الجدول admin_tb
CREATE TABLE admin_tb (
  adid INT PRIMARY KEY,
  name VARCHAR(255),
  username VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(255),
  password VARCHAR(255),
  cr_date TIMESTAMP
);

-- إنشاء الجدول booking_tb
CREATE TABLE booking_tb (
  boid INT PRIMARY KEY,
  FOREIGN KEY (room_id) REFERENCES hotel_tb (htid)
  guest_name VARCHAR(255),
  guest_email VARCHAR(255),
  guest_phone VARCHAR(255),
  room_id INT,
  check_in_date date,
  check_out_date date,
  created_at TIMESTAMP,
);

-- إنشاء الجدول hotel_tb
CREATE TABLE hotel_tb (
  htid INT PRIMARY KEY,
  htname VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  country VARCHAR(255),
  price DECIMAL(10,2),
  image_1 VARCHAR(255),
  description VARCHAR(255),
  created_at TIMESTAMP
);

-- إضافة مفتاح أجنبي في جدول booking_tb يشير إلى جدول hotel_tb
ALTER TABLE booking_tb ADD FOREIGN KEY (room_id) REFERENCES hotel_tb (htid);

-- إضافة مفتاح أجنبي في جدول booking_tb يشير إلى جدول admin_tb
ALTER TABLE booking_tb ADD FOREIGN KEY (created_by) REFERENCES admin_tb (adid);
