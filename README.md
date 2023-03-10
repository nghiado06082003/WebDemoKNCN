# WebDemoKNCN

#### Đây là phần web demo cho project môn KNCN
#### Vì là demo nên web này chỉ bao gồm một trang duy nhất, nhằm minh hoạ cho quá trình tìm việc và nhận lời khuyên ở phía người xin việc
#### Vui lòng đọc kĩ file hướng dẫn này trước khi đặt câu hỏi :)

## Về project
- Project yêu cầu chạy trên python 3.7.x. Vui lòng cài đặt python 3.7 và khởi chạy file app.py trên python 3.7 để đảm bảo web hoạt động.
- Project có sử dụng CSS Bootstrap framework 5.3. Phiên bản đầu tiên mà chủ repository đưa lên chưa được design và để mở cho sự sáng tạo :)

## Về các module python
### Chat bot (dùng hiện thực phần AI của project)
- Project sử dụng thư viện mã nguồn mở ChatterBot: https://github.com/gunthercox/ChatterBot. Vui lòng sử dụng trình cài đặt pip để cài đặt (trong link có hướng dẫn).
- ChatterBot sẽ yêu cầu cài đặt đặt nhiều thư viện để có thể chạy được, trong đó bao gồm: spacey, nltk, ... (người viết không nhớ hết được, vui lòng chịu khó đọc bảng báo lỗi xem thư viện nào thiếu thì dùng pip install vô thêm :))
- Ngoài ra, có thể sẽ báo một vài lỗi nho nhỏ nữa, copy mã lỗi khi gặp lên gg hoặc chatGPT hỏi để sửa theo :)
### Web (khởi chạy web và gọi train chatbot để sẵn sàng phản hồi)
- Vui lòng install thêm thư viện Flask và Django để khởi chạy được web.
- Chạy file app.py để bắt đầu khởi chạy trang web khi đã cài đủ thư viện

## Về tập dữ liệu
- Tập dữ liệu nằm trong file training.txt
- Hiện tại, tập dữ liệu này vẫn mở cho sự đóng góp, do tuy câu trả lời (các câu dòng chẵn) là khá phong phú, tuy nhiên các câu dòng lẻ chưa thật sự tốt:
  - Do pattern câu hỏi chưa thật sự được đa dạng khi vẫn có khá nhiều cùng cấu trúc, nên khi người dùng nhập một tin nhắn khác cấu trúc dù tương đồng về ý nghĩa thì chatbot không đưa ra được câu trả lời ưng ý.
  - Thực tế, người xin việc sẽ ít nhập các câu hỏi lên chatbot (vì mục đích của project này là web xin việc) mà thường sẽ nhập một công việc cụ thể mà họ mong muốn tìm kiếm ở thời điểm nhập liệu (ví dụ: tôi đang muốn tìm một công việc full-time về thiết kế web), nên các câu lẻ nên được điều chỉnh lại theo hướng này. Đặt mình vào vị trí người tìm việc xem mình nên viết gì sẽ giúp cải thiện chatbot.

## Các lưu ý khác
- Về phần List of potential jobs, các kết quả được hiển thị ra chỉ là kết quả của hàm random số, chứ không hề tìm kiếm gì trong Cơ sở dữ liệu cả. Nguyên nhân là do tại thời điểm thực hiện project, người viết chưa học qua môn hệ CSDL và cũng chưa đủ khả năng để hiểu và hiện thực lại được quá trình xây dựng, thêm bớt và tìm kiếm trong CSDL rồi lấy kết quả đó hiển thị cho người tìm việc theo những hướng dẫn trên Internet được. Nên nếu bạn có đủ kiến thức và có thể làm được những thứ mà người viết vừa nêu, hãy hiện thực nó để trang web này thật sự hoàn chỉnh. Người viết sẽ rất vui và biết ơn!

Lời cuối cùng, mọi sự sáng tạo và điều chỉnh để cải thiện và hoàn thiện project này đều được hoan nghênh.
Chúc một ngày tốt lành!
