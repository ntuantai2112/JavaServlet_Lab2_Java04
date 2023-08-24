<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Thông tin đăng ký</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }

    .info-card {
      background-color: #ffffff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      margin: 50px auto;
      max-width: 500px;
    }

    .info-title {
      text-align: center;
      margin-bottom: 20px;
    }

    .info-label {
      font-weight: bold;
    }

    .info-label-value {
      font-weight: normal;
    }

    .info-back-btn {
      margin-top: 20px;
      text-align: center;
    }
    .info-title {
	 color: red;
	 
}
  </style>
</head>
<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="info-card">
          <h2 class="info-title">Thông tin đăng ký</h2>
          <div class="form-group">
            <label class="info-label">Tên đăng nhập: ${username}</label>
          </div>
          <div class="form-group">
            <label class="info-label">Mật khẩu: ${password}</label>
          </div>
          <div class="form-group">
            <label class="info-label">Giới tính: ${gender}</label>
          </div>
          <div class="form-group">
            <label class="info-label">Tình trạng: ${status}</label>
          </div>
          <div class="form-group">
            <label class="info-label">Quốc tịch: ${coutry}</label>
          </div>
          <div class="form-group">
            <label class="info-label">Ghi chú: ${note}</label>
          </div>
          
          <div class="info-back-btn">
            <a href="/Lab2_Java04" class="btn btn-primary">Quay lại</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>