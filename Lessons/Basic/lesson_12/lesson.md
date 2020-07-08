# Buổi 12: Bài tập lớn cuối khóa Ruby on Rails

## Mục tiêu của bài tập
 - Hiểu và sử dụng được các module M-V-C của Rails
 - Luyện tập cách sử dụng các sub-module của Rails trong thực tế
 - Xây dựng cửa hàng bán sách online
 - Sẽ có 2 phần cơ bản và nâng cao

-----

### I. Yêu cầu cơ bản

#### 1) Chức năng hiển thị danh sách các trang sách
    - Hiển thị các cuốn sách theo từng trang, có thông tin sách: hình bìa, mô tả ngắn gọn, số lượng còn, giá tiền...
    - Khi click vào một cuốn sách sẽ vào trang detail của một cuốn sách:
        - Hiển thị thông tin sách chi tiết hơn (Nhiều hình bìa, mô tả, tác giả, năm xuất bản, số lượng còn, giá tiền)
        - Có chức năng thêm vào giỏ hàng và mua ngay
            - Thêm vào giỏ hàng: Thêm sách vào giỏ hàng, cập nhật số lượng trong giỏ hàng
            - Mua ngay: Khi click vào thì thêm sách vào giỏ hàng và dẫn tới trang giỏ hàng chi tiết
    - Gọi ý: dùng seeds.rb để tạo data giả cho danh sách sách sẽ hiển thị.
    - Gợi ý: dùng flash để hiển thị thông báo và dùng cookie/session để lưu các sách đã mua.


#### 2) Chức năng giỏ hàng
    - Khi click vào phải hiển thị các cuốn sách đã thêm vào giỏ, tổng số tiền.
    - Phải có nút thanh toán, khi click vào phải báo thanh toán thành công vào sách trong giỏ không còn nữa
    - Gợi ý: xoá các data đã lưu ở cookie/session

### II) Yêu cầu nâng cao
#### 1) Sử dụng gem `devise` để tạo chức năng đăng nhập đăng ký
    - Hỗ trợ chức năng đăng nhập/ đăng ký
    - Gửi email báo đăng ký thành công qua email (nếu config ko đc có thể skip qua)
    - Gợi ý: config để gửi email bằng SMPT
#### 2) Chức năng mua hàng nâng cao
    - Cho phép người tìm kiếm sách: tên sách, tên tác giả, năm xuất bản, giá tiền sách.
    - Người dùng phải đăng nhập mới mua đc.
    - Có chức năng thể hiện các order (đơn hàng) đã mua những sách gì, hết bao nhiêu tiền của một user
#### 3) Trang web quản lý cửa hàng, gem `activeadmin`
    - Thêm, xoá, sửa các cuốn sách
    - Thêm ảnh/sửa ảnh cho một cuốn sách
    - Gợi ý: dùng gem [activeadmin](https://github.com/activeadmin/activeadmin) để làm quản lý cho admin thêm sách
    - Gới ý: dùng gem [carrierwave](https://github.com/carrierwaveuploader/carrierwave) để upload image, config với minimagic để xử lý hình ảnh




