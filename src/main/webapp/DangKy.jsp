<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đăng ký</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }

    .registration-form {
      background-color: #ffffff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .form-title {
      text-align: center;
      margin-bottom: 20px;
    }

    .form-group label {
      font-weight: bold;
    }

    .checkbox-group label {
      display: inline-block;
      margin-right: 15px;
    }

    .submit-btn {
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="registration-form">
          <h2 class="form-title">Form Đăng ký</h2>
          <form>
            <div class="form-group">
              <label for="username">Tên đăng nhập:</label>
              <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
              <label for="password">Mật khẩu:</label>
              <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="form-group">
              <label>Giới tính:</label><br>
              <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" name="gender" value="nam" required>
                <label class="form-check-label">Nam</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" name="gender" value="nu" required>
                <label class="form-check-label">Nữ</label>
              </div>
            </div>
            <div class="form-group">
              <label class="form-check-label">
                <input type="checkbox" class="form-check-input" name="status"> Tình trạng
              </label>
            </div>
            <div class="form-group">
              <label for="nationality">Quốc tịch:</label>
              <select class="form-control" id="nationality" name="nationality" required>
                <option value="vn">Việt Nam</option>
                <option value="us">United States</option>
                <option value="uk">United Kingdom</option>
                <!-- Thêm các quốc gia khác vào đây -->
              </select>
            </div>
            <div class="form-group">
              <label>Sở thích:</label><br>
              <div class="checkbox-group">
                <div class="form-check form-check-inline">
                  <input type="checkbox" class="form-check-input" name="hobbies[]" value="doc-sach">
                  <label class="form-check-label">Đọc sách</label>
                </div>
                <div class="form-check form-check-inline">
                  <input type="checkbox" class="form-check-input" name="hobbies[]" value="xem-phim">
                  <label class="form-check-label">Xem phim</label>
                </div>
                <div class="form-check form-check-inline">
                  <input type="checkbox" class="form-check-input" name="hobbies[]" value="du-lich">
                  <label class="form-check-label">Du lịch</label>
                </div>
              </div>
            </div>
            <button type="submit" class="btn btn-primary submit-btn">Đăng ký</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>