CREATE DATABASE IF NOT EXISTS test DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE test;
CREATE TABLE tuyen_dung (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tencongty VARCHAR(255),
  diachi VARCHAR(255),
  website VARCHAR(255),
  job VARCHAR(255),
  luong VARCHAR(100),
  linkanh VARCHAR(255)
);
INSERT INTO tuyen_dung (tencongty, diachi, website, job, luong, linkanh)
VALUES 
('Nashtech Global', '78 Duy Tan, Cau Giay, Ha Noi', 'https://www.nashtechglobal.com/', 'Java Developer', '40,000,000 VND/thang', 'https://www.nashtechglobal.com/wp-content/uploads/2020/08/logo-nash-g-website-vi-03-01-01-1.png'),
('TMA Solutions', 'A11, Road No. 25, Hoa Cuong Nam Ward, Hai Chau District, Da Nang', 'https://www.tmasolutions.com/', 'Software Engineer', '25,000,000 VND/thang', 'https://www.tmasolutions.com/img/logo.png'),
('KMS Technology', 'Floor 8, 65 Huynh Thuc Khang, Da Kao, District 1, TP. HCM', 'https://www.kms-technology.com/', 'QA Engineer', '35,000,000 VND/thang', 'https://www.kms-technology.com/hubfs/Images/brand/kms-logo.png'),
('FPT Software', 'Km29, Nguyen Trai Road, Thanh Xuan District, Ha Noi', 'https://www.fpt-software.com/', 'Full Stack Developer', '50,000,000 VND/thang', 'https://www.fpt-software.com/wp-content/themes/fso/img/logo-fpt-software.svg'),
('S3 Corporation', '10F, JSC Tower, No. 1 Duy Tan, Cau Giay District, Ha Noi', 'https://s3corp.com.vn/', 'Software Architect', '60,000,000 VND/thang', 'https://s3corp.com.vn/wp-content/uploads/2020/04/logo_s3_white_big.png'),
('Nalys Vietnam', '2nd Floor, Greenstar Building, 70 Pham Ngoc Thach Street, District 3, TP. HCM', 'https://www.nalys-group.com/', 'Embedded Software Engineer', '45,000,000 VND/thang', 'https://www.nalys-group.com/wp-content/uploads/2021/03/Nalys-logo.png'),
('Evolable Asia', 'Floor 4, No. 120 Hoang Van Thu Street, Ward 9, Phu Nhuan District, TP. HCM', 'https://www.evolable.asia/', 'PHP Developer', '30,000,000 VND/thang', 'https://www.evolable.asia/wp-content/uploads/2019/09/evolable_asia_logo_400x400-1.png');
INSERT INTO tuyen_dung (tencongty, diachi, website, job, luong, linkanh)
VALUES
('Techvify Vietnam', 'Floor 2, JGCS Building, 76 Le Lai, Ben Thanh Ward, District 1, TP. HCM', 'https://techvify.com/', 'UI/UX Designer', '20,000,000 VND/thang', 'https://techvify.com/wp-content/uploads/2019/09/Techvify-Logo-1024x315-300x92.png'),
('Axon Active Vietnam', '10th floor, Petroland Tower, 12 Tan Trao Street, Phu My Hung, District 7, TP. HCM', 'https://www.axonactive.com/', 'Python Developer', '40,000,000 VND/thang', 'https://www.axonactive.com/wp-content/uploads/2020/08/AA_Logo-1.png'),
('Tiki Corporation', 'Tiki Tower, 2 Tinh Lo 5, Ward 7, District Phu Nhuan, TP. HCM', 'https://tiki.vn/', 'Data Scientist', '80,000,000 VND/thang', 'https://i.imgur.com/QAn6U5x.png'),
('Ninja Van Vietnam', 'Floor 6th, Thang Long Tower, 98A, Nguyen Thi Minh Khai, Ward 6, District 3, TP. HCM', 'https://www.ninjavan.co/vi-vn', 'Mobile App Developer', '35,000,000 VND/thang', 'https://i.imgur.com/MsRdJPJ.png'),
('Luxstay', '29C Nguyen Thai Hoc, Ba Dinh District, Ha Noi', 'https://www.luxstay.com/', 'Backend Developer', '45,000,000 VND/thang', 'https://i.imgur.com/mGlyVvZ.png'),
('Zalo Group', '5th, 7th, 8th Floors, VTC Online Building, 18 Tam Trinh, Minh Khai Ward, Hai Ba Trung District, Ha Noi', 'https://zalo.me/', 'Big Data Engineer', '60,000,000 VND/thang', 'https://i.imgur.com/rH8Stq3.png'),
('Momo Vietnam', 'Floor 10, 81 Ham Nghi, Ben Nghe Ward, District 1, TP. HCM', 'https://momo.vn/', 'Product Manager', '50,000,000 VND/thang', 'https://i.imgur.com/wGHiOBo.png'),
('Vntrip.vn', '14th floor, Hapulico Center Building, No. 1 Nguyen Huy Tuong Street, Thanh Xuan District, Ha Noi', 'https://www.vntrip.vn/', 'Java Developer', '30,000,000 VND/thang', 'https://i.imgur.com/e6mWj6w.png'),
('Haravan', 'Level 6th, Bao Viet Building, No. 233 Dong Khoi, Ben Nghe Ward, District 1, TP. HCM', 'https://www.haravan.com/', 'ReactJS Developer', '35,000,000 VND/thang', 'https://i.imgur.com/Yc4ouPe.png'),
('VNG Corporation', '182 Le Dai Hanh, Ward 15, District 11, TP. HCM', 'https://vng.com.vn/', 'iOS Developer', '50,000,000 VND/thang', 'https://i.imgur.com/v1Ke7rL.png');
INSERT INTO tuyen_dung (tencongty, diachi, website, job, luong, linkanh)
VALUES
('Nabla Tech', 'Phan Huy Ich, Ward 14, Go Vap District, TP. HCM', 'https://nablatech.vn/', 'Ruby on Rails Developer', '25,000,000 VND/thang', 'https://i.imgur.com/CJ3lqie.png'),
('Innoria Solution', 'Floor 15, MPlaza Building, 39 Le Duan, Ben Nghe Ward, District 1, TP. HCM', 'https://innoria.com/', 'Mobile Game Developer', '40,000,000 VND/thang', 'https://i.imgur.com/m78wE5u.png'),
('Nexsoft Vietnam', 'Floor 10th, Phu My Hung Plaza, 16 Tan Trao, Tan Phu Ward, District 7, TP. HCM', 'https://www.nexsoft.vn/', 'PHP Developer', '35,000,000 VND/thang', 'https://i.imgur.com/nzZ9T6I.png'),
('Foody Corporation', 'No. 70-72, Nguyen Co Thach Street, An Loi Dong Ward, District 2, TP. HCM', 'https://www.foody.vn/', 'Full Stack Developer', '50,000,000 VND/thang', 'https://i.imgur.com/PmKe5aO.png'),
('AhaMove', '16th Floor, TNR Tower, 54A Nguyen Chi Thanh, Lang Thuong Ward, Dong Da District, Ha Noi', 'https://ahamove.com/', 'Android Developer', '30,000,000 VND/thang', 'https://i.imgur.com/8cVmyNq.png'),
('Katalon Vietnam', 'Floor 14, 38A Nguyen Hue, Ben Nghe Ward, District 1, TP. HCM', 'https://www.katalon.com/', 'QA Engineer', '35,000,000 VND/thang', 'https://i.imgur.com/MkgSjGv.png'),
('VNDIRECT Securities', 'Floor 4-5, VNDIRECT Tower, No. 72A Nguyen Trai, Thanh Xuan District, Ha Noi', 'https://www.vndirect.com.vn/', 'Data Analyst', '45,000,000 VND/thang', 'https://i.imgur.com/jJxEhU3.png'),
('AdAsia Holdings', 'Floor 7th, No. 222 Dien Bien Phu, Ward 7, District 3, TP. HCM', 'https://adasiaholdings.com/', 'Frontend Developer', '25,000,000 VND/thang', 'https://i.imgur.com/DEycYvI.png'),
('VinID', 'Floor 3, VinID Building, 31 Tran Huu Duc, Nam Tu Liem District, Ha Noi', 'https://www.vinid.net/', 'DevOps Engineer', '60,000,000 VND/thang', 'https://i.imgur.com/ItHShVs.png'),
('Sendo.vn', 'Floor 14th, Mipec Building, 229 Tay Son, Dong Da District, Ha Noi', 'https://www.sendo.vn/', 'Data Scientist', '70,000,000 VND/thang', 'https://i.imgur.com/nNnTeR0.png');
INSERT INTO tuyen_dung (tencongty, diachi, website, job, luong, linkanh)
VALUES
('Sun Asterisk Vietnam', 'Floor 8, Sannam Building, 78 Duy Tan, Cau Giay District, Ha Noi', 'https://sun-asterisk.com/', 'React Native Developer', '35,000,000 VND/thang', 'https://i.imgur.com/9A92VD4.png'),
('TOPICA Edtech Group', 'Floor 4th, Danang Software Park, 02 Quang Trung, Hai Chau District, Da Nang', 'https://topica.asia/', 'Online English Teacher', '20,000,000 VND/thang', 'https://i.imgur.com/GvqpF3G.png'),
('Esoftflow', 'Floor 2nd, Building 6, FPT City, Hoa Lac Hi-Tech Park, Thach That District, Ha Noi', 'https://www.esoftflow.com/', 'Java Developer', '30,000,000 VND/thang', 'https://i.imgur.com/3ckZG1e.png'),
('TAPTAP Vietnam', 'Floor 11th, QTSC Building 9, Tan Thuan Export Processing Zone, District 7, TP. HCM', 'https://taptap.com/', 'Game Designer', '40,000,000 VND/thang', 'https://i.imgur.com/Jg0KzdX.png'),
('Gameloft Vietnam', '168 Xa Dan, Dong Da District, Ha Noi', 'https://www.gameloft.com/en/vietnam/', '3D Game Artist', '50,000,000 VND/thang', 'https://i.imgur.com/YveiM7X.png'),
('DiCentral Vietnam', 'Floor 16th, MPlaza Building, 39 Le Duan, Ben Nghe Ward, District 1, TP. HCM', 'https://www.dicentral.com/', 'Software Engineer', '35,000,000 VND/thang', 'https://i.imgur.com/wHJtMxt.png');
INSERT INTO tuyen_dung (tencongty, diachi, website, job, luong, linkanh)
VALUES
('NashTech Vietnam', 'Floor 10th, GP Invest Building, 170 De La Thanh, Lang Ha Ward, Dong Da District, Ha Noi', 'https://www.nashtechglobal.com/', 'Software Architect', '60,000,000 VND/thang', 'https://i.imgur.com/sZZ0Z8M.png'),
('AspireIQ', '5th floor, No.8 Nguyen Hue, Ben Nghe Ward, District 1, TP. HCM', 'https://www.aspireiq.com/', 'Backend Developer', '40,000,000 VND/thang', 'https://i.imgur.com/K8nDeE2.png'),
('HR2B', 'Floor 12th, Vinaconex 1 Building, 289A Khuat Duy Tien, Thanh Xuan District, Ha Noi', 'https://www.hr2b.com/', 'Recruitment Specialist', '30,000,000 VND/thang', 'https://i.imgur.com/UP8C4LB.png'),
('Vexere Corporation', 'Floor 9th, Hapulico Building, No. 1 Nguyen Huy Tuong, Thanh Xuan District, Ha Noi', 'https://vexere.com/', 'Data Analyst', '35,000,000 VND/thang', 'https://i.imgur.com/X4Z4L1Z.png');

