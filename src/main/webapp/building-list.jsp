<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Danh Sách Tòa Nhà</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
  <h1>Quản Lý Tòa Nhà</h1>
  <nav>
    <a href="addbuilding.jsp">Thêm Tòa Nhà Mới</a>
    <a href="searchBuilding.jsp">Tìm Kiếm Tòa Nhà</a>
  </nav>
</header>

<section class="building-list">
  <h2>Danh Sách Tòa Nhà</h2>

  <form class="search-form" action="addbuilding" method="get">
    <input type="text" name="type" placeholder="Tìm kiếm theo loại">
    <input type="number" name="minRentPrice" placeholder="Giá thuê tối thiểu">
    <input type="number" name="maxRentPrice" placeholder="Giá thuê tối đa">
    <button type="submit">Tìm Kiếm</button>
  </form>

  <table>
    <thead>
    <tr>
      <th>Mã</th>
      <th>Trạng Thái</th>
      <th>Diện Tích</th>
      <th>Số Tầng</th>
      <th>Loại</th>
      <th>Giá Thuê</th>
      <th>Ngày Bắt Đầu</th>
      <th>Ngày Kết Thúc</th>
      <th>Hành Động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="building" items="${buildings}">
      <tr>
        <td>${building.code}</td>
        <td>${building.status}</td>
        <td>${building.area}</td>
        <td>${building.floor}</td>
        <td>${building.type}</td>
        <td>${building.rentPrice}</td>
        <td>${building.startDate}</td>
        <td>${building.endDate}</td>
        <td>
          <a href="editBuilding?id=${building.id}">Sửa</a> |
          <a href="#" onclick="confirmDelete(${building.id})">Xóa</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</section>

<footer>
  <p>&copy; 2025 Hệ Thống Quản Lý Tòa Nhà</p>
</footer>

<script>
  function confirmDelete(id) {
    if (confirm("Bạn có chắc chắn muốn xóa?")) {
      window.location.href = "deleteBuilding?id=" + id;
    }
  }
</script>
</body>
</html>