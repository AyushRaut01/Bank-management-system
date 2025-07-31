<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String message = (String) request.getAttribute("message");
    String name = (String) request.getAttribute("name");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Employee Homepage</title>
    <style>
        :root {
            --primary-bg: #eaf4fb;
            --card-bg: #d6eaff;
            --button-bg: #4fa3d1;
            --button-hover: #3b8bb5;
            --text-color: #1c3c5a;
            --input-bg: #ffffff;
            --border-color: #b0d0e8;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: var(--primary-bg);
        }

        #outer-card {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1vh 2vw;
            background-color: var(--button-bg);
            color: white;
            font-size: 22px;
            font-weight: bold;
        }

        #links, #right-links {
            display: flex;
            gap: 2vw;
        }

        #links a, #right-links a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            padding: 6px 12px;
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        #links a:hover, #right-links a:hover {
            background-color: var(--button-hover);
            transform: translateY(-2px);
        }

        #main {
            display: flex;
            justify-content: space-between;
            padding: 4vh 4vw;
        }

        #content {
            flex: 1.5;
            margin-right: 3vw;
        }

        #content h1, h2 {
            color: var(--text-color);
        }

        ul {
            margin-top: 2vh;
            padding-left: 2vw;
        }

        ul li {
            line-height: 1.8;
            font-size: 16px;
            color: var(--text-color);
        }

        #form-card {
            flex: 1;
            background-color: var(--card-bg);
            border-radius: 16px;
            padding: 30px;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
            animation: fadeInUp 0.6s ease;
        }

        #form-card h2 {
            text-align: center;
            color: var(--text-color);
            margin-bottom: 2vh;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 1vh;
        }

        input[type="text"], input[type="password"], input[type="number"] {
            padding: 10px;
            border-radius: 8px;
            border: 1px solid var(--border-color);
            background-color: var(--input-bg);
            transition: box-shadow 0.3s ease;
        }

        input:focus {
            outline: none;
            box-shadow: 0 0 5px var(--button-bg);
            border: 1px solid var(--button-bg);
        }

        #status {
            display: flex;
            gap: 2vw;
            margin: 1vh 0;
            color: var(--text-color);
        }

        input[type="submit"] {
            margin-top: 2vh;
            background-color: var(--button-bg);
            color: white;
            font-weight: 600;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 10px;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: var(--button-hover);
            transform: translateY(-2px);
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.15);
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>

<body>
    <div id="outer-card">
        <div>Bank Management System</div>
        <div id="links">
            <a href="new">New</a>
            <a class="myLink" href="view">View</a>
            <a class="myLink" href="block">Block</a>
            <a class="myLink" href="unblock">Unblock</a>
            <a class="myLink" href="update">Update</a>
            <a class="myLink" href="delete">Delete</a>
            <a href="viewAll">All Customers</a>
        </div>
        <div id="right-links">
            <a href="update-profile"><%= name %></a>
            <a href="index.jsp">Logout</a>
        </div>
    </div>

    <div id="main">
        <div id="content">
            <h1><%= message %> <%= name %>!</h1>
            <h2>Welcome to <i>Bank Management System</i></h2>
            <h3 style="margin-top: 2vh;">Customer Management:</h3>
            <ul>
                <li>Add new customer</li>
                <li>View customer details</li>
                <li>Update name or password</li>
                <li>Block/unblock accounts</li>
                <li>Delete accounts</li>
                <li>View all customers</li>
            </ul>
        </div>

        <div id="form-card">
            <h2>Add New Customer</h2>
            <form action="addCus">
                <label>Name</label>
                <input type="text" name="name" required>

                <label>Account Number (12 digits)</label>
                <input type="text" name="acNum" pattern="^[0-9]{12,12}$" required>

                <label>Pincode</label>
                <input type="password" name="pin" required>

                <label>Balance</label>
                <input type="number" name="balance" value="2000.0" readonly>

                <div id="status">
                    <label><input type="radio" name="status" value="true" required> Active</label>
                    <label><input type="radio" name="status" value="false" required> Block</label>
                </div>

                <input type="submit" value="Submit">
            </form>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var links = document.querySelectorAll('.myLink');
            function handleClick(link) {
                var userInput = prompt("Enter Account Number (12 digits):");
                if (!userInput) return;
                userInput = userInput.trim();
                if (userInput.length !== 12) {
                    alert("Invalid input. Enter 12 digits.");
                    return;
                }
                window.location.href = link.getAttribute("href") + "?acc=" + userInput;
            }

            links.forEach(link => {
                link.addEventListener('click', function (event) {
                    event.preventDefault();
                    handleClick(link);
                });
            });
        });
    </script>
</body>
</html>
