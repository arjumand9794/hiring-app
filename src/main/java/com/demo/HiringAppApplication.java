package com.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class HiringAppApplication {

    public static void main(String[] args) {
        SpringApplication.run(HiringAppApplication.class, args);
    }

    @GetMapping("/")
    public String index() {
        return """
                <!DOCTYPE html>
                <html>
                <head>
                    <title>Arjumand DevOps Dashboard</title>
                    <style>
                        body {
                            margin: 0;
                            font-family: Arial, sans-serif;
                            background: linear-gradient(135deg,#141e30,#243b55);
                            color: white;
                            text-align: center;
                        }
                        .container {
                            margin-top: 100px;
                        }
                        .card {
                            background: white;
                            color: black;
                            padding: 40px;
                            width: 500px;
                            margin: auto;
                            border-radius: 15px;
                            box-shadow: 0 10px 30px rgba(0,0,0,0.4);
                        }
                        .status {
                            margin: 15px 0;
                            font-size: 18px;
                        }
                        .badge {
                            display: inline-block;
                            padding: 10px 20px;
                            border-radius: 25px;
                            background: #28a745;
                            color: white;
                            font-weight: bold;
                        }
                    </style>
                </head>
                <body>
                    <div class="container">
                        <h1>🚀 Arjumand Mohiuddin</h1>
                        <h2>DevOps CI/CD Dashboard</h2>
                        <div class="card">
                            <div class="status">🐳 Docker Image Built via Jenkins</div>
                            <div class="status">☸ Kubernetes Deployment Active</div>
                            <div class="status">🔄 ArgoCD Continuous Deployment</div>
                            <div class="badge">Application Running Successfully</div>
                        </div>
                    </div>
                </body>
                </html>
                """;
    }
}
