# Kiemtramodul3


CREATE DATABASE quanlymatbang;
USE quanlymatbang;

CREATE TABLE mat_bang (
id INT AUTO_INCREMENT PRIMARY KEY,                 
ma_mat_bang VARCHAR(10) UNIQUE NOT NULL,            
trang_thai ENUM('Trống', 'Hạ tầng', 'Đầy đủ') NOT NULL,
dien_tich DECIMAL(10, 2) CHECK (dien_tich > 20) NOT NULL,
tang INT CHECK (tang BETWEEN 1 AND 15) NOT NULL,    
loai_mat_bang ENUM('Văn phòng chia sẻ', 'Văn phòng trọn gói') NOT NULL,
gia_thue DECIMAL(10, 2) CHECK (gia_thue > 1000000) NOT NULL,
mo_ta_chi_tiet TEXT,   
ngay_bat_dau DATE NOT NULL,                             
ngay_ket_thuc DATE NOT NULL,                           
CONSTRAINT chk_ma_mat_bang CHECK (ma_mat_bang REGEXP '^[A-Z0-9]{3}-[A-Z0-9]{2}-[A-Z0-9]{2}$'),
CONSTRAINT chk_ngay CHECK (DATEDIFF(ngay_ket_thuc, ngay_bat_dau) >= 180)
);

INSERT INTO mat_bang (ma_mat_bang, trang_thai, dien_tich, tang, loai_mat_bang, gia_thue, mo_ta_chi_tiet, ngay_bat_dau, ngay_ket_thuc)
VALUES
('MBG-01-01', 'Trống', 25.50, 1, 'Văn phòng chia sẻ', 1500000, 'Mặt bằng tầng 1, gần sảnh chính, đầy đủ tiện ích.', '2024-01-01', '2024-07-01'),
('MBG-02-02', 'Hạ tầng', 30.00, 2, 'Văn phòng trọn gói', 2000000, 'Không gian thoáng mát, có thể thiết kế tùy ý.', '2024-02-01', '2024-08-01'),
('MBG-03-03', 'Đầy đủ', 35.00, 3, 'Văn phòng chia sẻ', 2500000, 'Trang bị nội thất cơ bản, view đẹp.', '2024-01-10', '2024-09-10'),
('MBG-04-04', 'Trống', 45.00, 5, 'Văn phòng trọn gói', 3000000, 'Tầng cao, thoáng mát, thiết kế hiện đại.', '2024-03-01', '2024-09-15'),
('MBG-05-05', 'Đầy đủ', 50.00, 6, 'Văn phòng chia sẻ', 3500000, 'Vị trí đắc địa, trang bị điều hòa, bàn ghế.', '2024-02-15', '2024-10-15'),
('MBG-06-06', 'Hạ tầng', 60.00, 8, 'Văn phòng trọn gói', 4000000, 'Không gian rộng rãi, phù hợp cho đội nhóm.', '2024-04-01', '2024-12-01'),
('MBG-07-07', 'Trống', 40.00, 10, 'Văn phòng chia sẻ', 2800000, 'Tầng cao, ánh sáng tự nhiên tốt, tiện ích đầy đủ.', '2024-01-20', '2024-07-20'),
('MBG-08-08', 'Đầy đủ', 70.00, 12, 'Văn phòng trọn gói', 5000000, 'Nội thất sang trọng, sẵn sàng sử dụng.', '2024-03-10', '2024-11-10'),
('MBG-09-09', 'Hạ tầng', 80.00, 14, 'Văn phòng chia sẻ', 4500000, 'Tầm nhìn rộng, trang bị cơ bản.', '2024-02-01', '2024-08-01'),
('MBG-10-10', 'Trống', 100.00, 15, 'Văn phòng trọn gói', 6000000, 'Tầng trên cùng, thích hợp làm văn phòng cao cấp.', '2024-01-01', '2024-07-01');
