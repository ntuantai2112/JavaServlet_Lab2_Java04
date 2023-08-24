<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Form!</title>
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
    .tinhtrang{
    	padding-top: 5px;
    }
    #chechbox{
    	margin-right: 2px;
    }
    	
  </style>
</head>
<body>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="registration-form">
          <h2 class="form-title">Form Đăng ký</h2>
          <form action="/Lab2_Java04/bai2" method="post" >
            <div class="form-group">
              <label for="username">Tên đăng nhập:</label>
              <input type="text" placeholder="UserName" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
              <label for="password">Mật khẩu:</label>
              <input type="password" placeholder="Password" class="form-control" id="password" name="password" required>
            </div>
            <div class="form-group">
              <label>Giới tính:</label><br>
              <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" name="gender" value="Nam" required>
                <label class="form-check-label">Nam</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" name="gender" value="Nữ" required>
                <label class="form-check-label">Nữ</label>
              </div>
            </div>
            <div class="form-group">
            <span class="form-check form-check-inline ">
             	<label for="merried" class="form-check-label"> Tình trạng:  </label>
             <div class="form-check form-check-label tinhtrang">
               <input type="checkbox" class="form-check-label" name="merried" value="Đã lập gia đình " id="chechbox">
              <label for="merried" class="form-check-label" >Đã có gia đình chưa ?</label>
              </div>
             </span>         
            </div>
            <div class="form-group">
              <label for="nationality" name="">Quốc tịch:</label>
              <select class="form-control" id="country" name="country" required>
                <option value="Việt Nam">Việt Nam</option>
                <option value="Thái Lan">Thái Lan</option>
                <option value="Hàn Quốc">Hàn Quốc</option>
                 <option value="Singapore">Singapore</option>
                  <option value="Mỹ">Mỹ</option>
                <!-- Thêm các quốc gia khác vào đây -->
              </select>
            </div>
            <div class="form-group">
              <label>Ghi chú:</label><br>
              <textarea name="ghichu" rows="3" type="textAria" class="form-control" placeholder="Ghi chú"></textarea>
            </div>
            <button type="submit" class="btn btn-primary submit-btn" >Đăng ký</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>