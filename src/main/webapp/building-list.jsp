<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Building List</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
  <h1>Building Management</h1>
  <nav>
    <a href="addBuilding.jsp">Add New Building</a>
    <a href="searchBuilding.jsp">Search Building</a>
  </nav>
</header>

<section class="building-list">
  <h2>Building List</h2>

  <!-- Search Form -->
  <form class="search-form" action="buildings" method="get">
    <input type="text" name="type" placeholder="Search by Type">
    <input type="number" name="minRentPrice" placeholder="Min Rent Price">
    <input type="number" name="maxRentPrice" placeholder="Max Rent Price">
    <button type="submit">Search</button>
  </form>

  <table>
    <thead>
    <tr>
      <th>Code</th>
      <th>Status</th>
      <th>Area</th>
      <th>Floor</th>
      <th>Type</th>
      <th>Rent Price</th>
      <th>Start Date</th>
      <th>End Date</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <!-- Iterate through buildings and display them -->
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
          <a href="editBuilding?id=${building.id}">Edit</a> |
          <a href="#" onclick="confirmDelete(${building.id})">Delete</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</section>

<footer>
  <p>&copy; 2025 Building Management System</p>
</footer>

<script>
  function confirmDelete(id) {
    if (confirm("Are you sure you want to delete this building?")) {
      window.location.href = "deleteBuilding?id=" + id;
    }
  }
</script>
</body>
</html>