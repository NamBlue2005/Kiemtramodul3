<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Tòa Nhà Mới</title>
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

        .building-list table {
            width: 100%;
            margin: 1rem 0;
            border-collapse: collapse;
        }

        .building-list table th, .building-list table td {
            padding: 0.8rem;
            border: 1px solid #ddd;
            text-align: center;
        }

        .building-list table th {
            background-color: #333;
            color: white;
        }

        .building-list table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .building-list table tr:hover {
            background-color: #f1f1f1;
        }

        .building-list .actions a {
            color: #007bff;
            text-decoration: none;
        }

        .building-list .actions a:hover {
            text-decoration: underline;
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

        .form-container input, .form-container textarea {
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
    <h1>Thêm Tòa Nhà Mới</h1>
    <nav>
        <a href="buildings">Quay lại danh sách</a>
    </nav>
</header>

<section class="form-container">
    <form action="addbuilding" method="POST">
        <label for="code">Mã Tòa Nhà:</label>
        <input type="text" id="code" name="code" required>

        <label for="status">Trạng Thái:</label>
        <input type="text" id="status" name="status" required>

        <label for="area">Diện Tích (m²):</label>
        <input type="number" id="area" name="area" required min="20">

        <label for="floor">Số Tầng:</label>
        <input type="number" id="floor" name="floor" required>

        <label for="type">Loại:</label>
        <input type="text" id="type" name="type" required>

        <label for="rentPrice">Giá Thuê:</label>
        <input type="number" id="rentPrice" name="rentPrice" required min="1000000">

        <label for="description">Mô Tả:</label>
        <textarea id="description" name="description" rows="4" required></textarea>

        <label for="startDate">Ngày Bắt Đầu:</label>
        <input type="date" id="startDate" name="startDate" required>

        <label for="endDate">Ngày Kết Thúc:</label>
        <input type="date" id="endDate" name="endDate" required>

        <button type="submit">Thêm Tòa Nhà</button>
    </form>
</section>

<footer>
    <p>&copy; 2025 Hệ Thống Quản Lý Tòa Nhà</p>
</footer>
</body>
</html>