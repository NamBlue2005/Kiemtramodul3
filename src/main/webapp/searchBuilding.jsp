<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tìm Kiếm Tòa Nhà</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 1rem;
            text-align: center;
        }

        header h1 {
            margin-bottom: 0.5rem;
        }

        header nav {
            margin-top: 0.5rem;
        }

        header nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 1rem;
        }

        header nav a:hover {
            text-decoration: underline;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1rem;
            margin-top: 2rem;
        }

        h2 {
            margin-top: 2rem;
            text-align: center;
        }

        .search-form {
            display: flex;
            justify-content: center;
            margin-bottom: 1rem;
        }

        .search-form input, .search-form button {
            padding: 0.5rem;
            margin: 0.2rem;
        }

        .search-form button {
            background-color: #333;
            color: white;
            cursor: pointer;
        }

        .search-form button:hover {
            background-color: #555;
        }

        .form-container {
            background-color: #fff;
            padding: 2rem;
            margin: 1rem auto;
            width: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container label {
            display: block;
            margin-bottom: 0.5rem;
        }

        .form-container input {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .form-container button {
            background-color: #28a745;
            color: white;
            padding: 0.8rem;
            width: 100%;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<header>
    <h1>Tìm Kiếm Tòa Nhà</h1>
    <nav>
        <a href="buildings">Quay Lại Danh Sách</a>
    </nav>
</header>

<section class="form-container">
    <form action="addbuilding" method="get">
        <label for="type">Loại Tòa Nhà:</label>
        <input type="text" id="type" name="type">

        <label for="minRentPrice">Giá Thuê Tối Thiểu:</label>
        <input type="number" id="minRentPrice" name="minRentPrice">

        <label for="maxRentPrice">Giá Thuê Tối Đa:</label>
        <input type="number" id="maxRentPrice" name="maxRentPrice">

        <button type="submit">Tìm Kiếm</button>
    </form>
</section>

<footer>
    <p>&copy; 2025 Hệ Thống Quản Lý Tòa Nhà</p>
</footer>
</body>
</html>