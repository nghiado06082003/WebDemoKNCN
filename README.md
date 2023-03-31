# WebDemoKNCN

#### Đây là phần web demo cho project môn KNCN
#### Vì là demo nên web này chỉ nhằm minh hoạ cho quá trình tìm việc và nhận lời khuyên ở phía người xin việc
#### Vui lòng đọc kĩ file hướng dẫn này trước khi đặt câu hỏi :)

##### Cập nhật 31/3/2023: Project được cập nhật khá nhiều. Do đó vui lòng đọc thật kĩ file này (xem như documentation của project)

## Về project
- Project yêu cầu chạy trên python 3.7.x. Vui lòng cài đặt python 3.7 và khởi chạy file app.py trên python 3.7 để đảm bảo web hoạt động.
- Project có sử dụng CSS Bootstrap framework.
- Project có sử dụng thư viện jQuery để hiện thực AJAX
- Project sử dụng MySQL để hiện thực và lưu trữ CSDL cho web. File SQL đã được cập nhật trong repository
- Project được thiết kế dựa trên web template được chia sẻ miễn phí trên free-css.com

## Về các module python
### Chat bot (dùng hiện thực phần AI của project)
- Project sử dụng thư viện mã nguồn mở ChatterBot. Vui lòng sử dụng trình cài đặt pip để cài đặt (trong link có hướng dẫn).
- ChatterBot sẽ yêu cầu cài đặt đặt nhiều thư viện để có thể chạy được, trong đó bao gồm: spacey, nltk, ... (người viết không nhớ hết được, vui lòng chịu khó đọc bảng báo lỗi xem thư viện nào thiếu thì dùng pip install vô thêm :))
- Ngoài ra, có thể sẽ báo một vài lỗi nho nhỏ nữa, copy mã lỗi khi gặp lên gg hoặc chatGPT hỏi để sửa theo :)
### Web (khởi chạy web và gọi train chatbot để sẵn sàng phản hồi)
- Vui lòng install thêm thư viện Flask và Django để khởi chạy được web.
- Chạy file app.py để bắt đầu khởi chạy trang web khi đã cài đủ thư viện
### Về hệ CSDL (cập nhật 22/3/2023)
- Project hiện tại sử dụng thư viện MySQL Connector để kết nối với MySQL database
### Khác
- Project sử dụng thêm thư viện hỗ trợ JSON có sẵn

## Về cấu trúc trang web (cập nhật 31/3/2023)
Trang web hiện bao gồm 4 trang tương ứng với 4 file **html** trong thư mục **templates**, cụ thể như sau:
### Trang chủ (file index.html)
Đây là trang chủ, mặc định khi khởi chạy file **app.py**. Có thể dùng để hiển thị một số thông tin cơ bản, công việc đang hot (hiện đã hiện thực phần backend để lấy dữ liệu thật), khung phản hồi,...
Điều hướng đến các trang khác qua thanh điều hướng hoặc một số nút chức năng.
### Trang thông tin project (file about.html)
Dùng làm trang hiển thị các thông tin chi tiết, có thể là thông tin project, giải thích sơ bộ công nghệ, hoặc triết lý dự án,...
### Trang tìm việc (2 trang)
Đây là trang quan trọng nhất với project, bao gồm 2 file **html** như sau:
- File **findjob.html**: trang đầu tiên của quá trình tìm việc, cũng là trang mặc định khi chọn mục findjob trên thanh điều hướng. Trang bao gồm chatbot, khung đóng góp những mong muốn của người tìm việc về phúc lợi, lương,... (đây chính là chỗ nhận dữ liệu để đóng góp cho con AI - ý tưởng ban đầu của project, tuy hiện tại phần backend của nó chưa hoàn chỉnh do thiếu thời gian :)). Khi thực hiện chat trên con bot để tìm việc và nhận lời khuyên, bên dưới khi này sẽ hiển thị danh sách công việc tương ứng. Khi nhấn chọn xem chi tiết một công việc sẽ dẫn đến trang **detail.html** tương ứng
- File **detail.html**: dùng hiển thị chi tiết hơn về công việc đã chọn (dù thực tế cũng... chưa chi tiết lắm :), do CSDL thôi). Thiết kế của trang còn khá đơn sơ và nên được cải thiện thêm

## Các chú ý quan trọng (cập nhật 31/3/2023)
- Do các file **html** được render thông qua Flask, do đó trong các thuộc tính liên kết (như **src, href,...**) của một số tag html trong các file sẽ có cấu trúc khá khác biệt so với file thông thường. Đồng thời, trong file **index.html**, phần trending job do có lấy dữ liệu từ CSDL và thêm vào qua Flask nên sẽ xuất hiện các cấu trúc **{{...}}** hay **{%...%}**. Vì vậy, các file này nếu không khởi chạy qua Flask sẽ không thể load CSS, hình ảnh,... được. Do đó, thư mục **for_frontend** đã được viết.
- Thư mục for_frontend bao gồm toàn bô các file **html, CSS, js**, các ảnh liên quan,... tương tự như trong project thật, với điểm khác duy nhất là đã điều chỉnh các thuộc tính liên kết trong file **html** như bình thường để có thể chạy được không thông qua Flask (tức có thể double click file lên xem bình thường). Do đó, nếu muốn xem qua giao diện trang web, chỉnh sửa frontend thì nên thực hiện chỉnh sửa trên file này trước.
- Nếu có chỉnh frontend, nên nhớ do đây là web dựa trên template nên nhiều thuộc tính CSS đã được modify khá nhiều, nên cần tham khảo qua file **style.css** trước khi thực hiện điều chỉnh. Đồng thời trong file **findjob.html**, nên chú ý xuống phần code JS, jQuery bên dưới, do có một số mã html ở bên dưới và chỉ được nhúng vào file html khi đã thực hiện thao tác tìm việc, để đảm bảo việc chỉnh frontend không làm hỏng phần này (đương nhiên là phần mã html trong này cũng có thể điều chỉnh nếu bạn biết mình đang làm gì :))
- Và khi chỉnh xong, nếu muốn mang các thay đổi vào các file thật của project thì phải đảm bảo nếu có thêm các tag cần **src, href,...** thì phải điều chỉnh phần liên kết này đúng kiểu để Flask render được, đồng thời không thay đổi và điều chỉnh, xoá,... các cấu trúc **{{...}}** hay **{%...%}** trừ khi bạn hiểu rõ mình đang làm gì.

## Về tập dữ liệu train AI
- Tập dữ liệu nằm trong file training.txt
- Hiện tại, tập dữ liệu này vẫn mở cho sự đóng góp, do tuy câu trả lời (các câu dòng chẵn) là khá phong phú, tuy nhiên các câu dòng lẻ chưa thật sự tốt:
  - Do pattern câu hỏi chưa thật sự được đa dạng khi vẫn có khá nhiều cùng cấu trúc, nên khi người dùng nhập một tin nhắn khác cấu trúc dù tương đồng về ý nghĩa thì chatbot không đưa ra được câu trả lời ưng ý.
  - Thực tế, người xin việc sẽ ít nhập các câu hỏi lên chatbot (vì mục đích của project này là web xin việc) mà thường sẽ nhập một công việc cụ thể mà họ mong muốn tìm kiếm ở thời điểm nhập liệu (ví dụ: tôi đang muốn tìm một công việc full-time về thiết kế web), nên các câu lẻ nên được điều chỉnh lại theo hướng này. Đặt mình vào vị trí người tìm việc xem mình nên viết gì sẽ giúp cải thiện chatbot.

## Tham khảo:
- ChatterBot: https://github.com/gunthercox/ChatterBot
- Web building: https://github.com/Arraxx/new-chatbot
- Đủ thứ về lập trình: https://www.w3schools.com/
- Template: free-css.com

Lời cuối cùng, mọi sự sáng tạo và điều chỉnh để cải thiện và hoàn thiện project này đều được hoan nghênh.
Chúc một ngày tốt lành!
