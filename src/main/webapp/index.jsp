<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <% String message=(String) request.getAttribute("message"); %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Employee Login</title>
           <style>
    :root {
        --primary-bg: #eaf4fb;
        --card-bg: #d6eaff;
        --button-bg: #4fa3d1;
        --button-hover: #3b8bb5;
        --text-color: #1c3c5a;
        --input-bg: #ffffff;
        --border-color: #b0d0e8;
        --error-bg: #ffe0e0;
        --error-border: #ff5e5e;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    #main {
        min-height: 100vh;
        width: 100vw;
        background-color: var(--primary-bg);
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 4vh 2vw;
    }

    #outer-card {
        font-size: 40px;
        font-weight: 700;
        text-align: center;
        color: var(--text-color);
        background-color: var(--card-bg);
        padding: 2vh 4vw;
        border-radius: 16px;
        margin-bottom: 4vh;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
    }

    #logo-icon {
        width: 50px;
        height: 50px;
        margin-bottom: 10px;
        animation: popIn 0.6s ease forwards;
    }

    @keyframes popIn {
        0% {
            transform: scale(0);
            opacity: 0;
        }
        100% {
            transform: scale(1);
            opacity: 1;
        }
    }

    #section-layout {
        width: 90vw;
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        gap: 6vw;
    }

    #left-content {
        flex: 1.2;
        background-color: white;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.08);
        color: var(--text-color);
    }

    #left-content h2 {
        color: var(--text-color);
        font-size: 28px;
    }

    #left-content h3 {
        margin-top: 15px;
        color: var(--text-color);
    }

    #left-content ul {
        margin-left: 20px;
    }

    #right-card {
        flex: 1;
    }

    #inner-card {
        background-color: var(--card-bg);
        padding: 25px;
        border-radius: 15px;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        animation: fadeInUp 0.6s ease;
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

    #inner-inner-card {
        background-color: var(--card-bg);
        border-radius: 15px;
        border: 2px solid var(--border-color);
        padding: 30px;
    }

    #form {
        display: flex;
        flex-direction: column;
        color: var(--text-color);
    }

    .fg1 {
        height: 4vh;
        width: 100%;
        border-radius: 8px;
        border: 1px solid #ccc;
        background-color: var(--input-bg);
        padding-left: 10px;
        margin-bottom: 10px;
        transition: box-shadow 0.3s ease;
    }

    .fg1:focus {
        outline: none;
        box-shadow: 0 0 5px var(--button-bg);
        border: 1px solid var(--button-bg);
    }

    #buttons {
        margin-top: 20px;
        display: flex;
        justify-content: space-between;
        gap: 1vw;
    }

    #button,
    #cus {
        padding: 10px 20px;
        border-radius: 8px;
        font-size: 16px;
        font-weight: 600;
        color: white;
        background-color: var(--button-bg);
        border: none;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    #button:hover,
    #cus:hover {
        background-color: var(--button-hover);
        transform: translateY(-2px);
        box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.15);
    }

    #message {
        font-size: 14px;
        padding: 1.5vh;
        margin-top: 2vh;
        border-radius: 10px;
        background-color: var(--error-bg);
        border: 2px solid var(--error-border);
        color: red;
        display: none;
    }
</style>
           
            
        </head>

       <div id="main">
    <div id="outer-card">
        
        Bank Management System
    </div>

    <div id="section-layout">
        <div id="left-content">
            <h2>Welcome to the Employee Portal</h2><br>
            <p>This Java servlet-based application helps manage customer accounts efficiently and securely.</p><br>

            <h3>🔐 Authentication:</h3>
            <ul>
                <li>Secure login system to protect customer data</li>
            </ul><br>

            <h3>👥 Customer Management:</h3>
            <ul>
                <li>Create, view, update, or delete accounts</li>
                <li>Block/unblock customer profiles</li>
            </ul>
        </div>

        <div id="right-card">
            <div id="inner-card">
                <div id="inner-inner-card">
                    <form action="login" id="form">
                        <h4>Email</h4>
                        <div class="inputForms">
                            <input type="email" name="email" class="fg1" required>
                        </div>
                        <h4>Password</h4>
                        <div class="inputForms">
                            <input type="password" name="password" class="fg1" required>
                        </div>
                        <div id='msg-cont'>
                            <p id="message"><%= message %></p>
                        </div>
                        <div id="buttons">
                            <input type="submit" value="Login" id="button">
                            <button id="cus">Customer Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

            <script>
                document.getElementById('cus').addEventListener('click', () => {
                    window.location.href = 'customer_login.jsp';
                })
                var x = document.getElementById('message');
                if (x.innerText.length < 15) {
                    x.style.display = 'none';
                }
            </script>
        </body>

        </html>