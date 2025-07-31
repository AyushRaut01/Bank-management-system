<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deposit</title>
    <style>
        :root {
            --primary: #e3f2fd;
            --secondary: #bbdefb;
            --accent: #2196f3;
            --dark-text: #0d47a1;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: var(--primary);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #main {
            background-color: var(--secondary);
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            gap: 30px;
            width: 380px;
            position: relative;
            transition: all 0.3s ease-in-out;
        }

        /* Logo/Icon on the card */
        #main::before {
            content: "bank";
            position: absolute;
            top: -35px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 40px;
            background-color: white;
            padding: 10px;
            border-radius: 50%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: var(--dark-text);
            font-size: 18px;
            margin-bottom: 5px;
        }

        input[type="number"],
        input[type="password"] {
            padding: 10px 15px;
            font-size: 16px;
            border: 2px solid #90caf9;
            border-radius: 12px;
            width: 100%;
            outline: none;
            transition: all 0.3s;
        }

        input[type="number"]:focus,
        input[type="password"]:focus {
            border-color: var(--accent);
            box-shadow: 0 0 5px var(--accent);
        }

        input[type="submit"] {
            background-color: var(--accent);
            color: white;
            padding: 10px;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s, transform 0.2s;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #1976d2;
            transform: scale(1.02);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .back-form {
            margin-top: -10px;
        }

        .back-form input {
            background-color: transparent;
            color: var(--dark-text);
            border: 2px solid var(--accent);
        }

        .back-form input:hover {
            background-color: var(--accent);
            color: white;
        }
    </style>
</head>

<body>
    <div id="main">
        <form action="deposit">
            <div>
                <h2>Amount</h2>
                <input type="number" name="amount" min="1" placeholder="Enter amount">
            </div>
            <div>
                <h2>Pincode</h2>
                <input type="password" name="pin" placeholder="Enter pincode">
            </div>
            <div>
                <input type="submit" value="Deposit">
            </div>
        </form>
        <form action="cus_login" class="back-form">
            <input type="submit" value="Back">
        </form>
    </div>
</body>
</html>
