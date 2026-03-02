<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Arjumand DevOps Dashboard</title>
    <meta charset="UTF-8">

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: white;
            text-align: center;
        }

        .container {
            margin-top: 100px;
        }

        h1 {
            font-size: 48px;
            margin-bottom: 10px;
        }

        h2 {
            font-weight: 300;
            margin-bottom: 40px;
        }

        .card {
            background: white;
            color: #333;
            width: 500px;
            margin: auto;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.4);
        }

        .status {
            font-size: 18px;
            margin: 15px 0;
        }

        .badge {
            display: inline-block;
            padding: 10px 20px;
            border-radius: 25px;
            background: #28a745;
            color: white;
            font-weight: bold;
            margin-top: 15px;
        }

        .footer {
            margin-top: 60px;
            font-size: 14px;
            opacity: 0.7;
        }
    </style>
</head>

<body>

<div class="container">
    <h1>🚀 Arjumand Mohiuddin</h1>
    <h2>DevOps CI/CD Live Dashboard</h2>

    <div class="card">
        <div class="status">🐳 Docker Image Built via Jenkins</div>
        <div class="status">☸ Kubernetes Deployment Active</div>
        <div class="status">🔄 ArgoCD Continuous Deployment Enabled</div>
        <div class="status">📦 Running on Pod:
            <%= request.getLocalAddr() %>
        </div>

        <div class="badge">Application Running Successfully</div>
    </div>

    <div class="footer">
        Powered by Docker • Jenkins • Kubernetes • ArgoCD
    </div>
</div>

</body>
</html>
