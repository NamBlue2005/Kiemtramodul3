<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Building</title>
    <style>
        /* General Reset */
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
    <h1>Search Building</h1>
    <nav>
        <a href="buildings">Back to List</a>
    </nav>
</header>

<section class="form-container">
    <form action="buildings" method="get">
        <label for="type">Building Type:</label>
        <input type="text" id="type" name="type">

        <label for="minRentPrice">Min Rent Price:</label>
        <input type="number" id="minRentPrice" name="minRentPrice">

        <label for="maxRentPrice">Max Rent Price:</label>
        <input type="number" id="maxRentPrice" name="maxRentPrice">

        <button type="submit">Search</button>
    </form>
</section>

<footer>
    <p>&copy; 2025 Building Management System</p>
</footer>
</body>
</html>