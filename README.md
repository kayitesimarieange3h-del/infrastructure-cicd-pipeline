# ECS Fargate Terraform Module

This Terraform module deploys an application on AWS ECS Fargate, complete with an Application Load Balancer (ALB) and auto-scaling capabilities.  It's designed for reusability, configurability, and ease of integration into larger infrastructure deployments.

## Features

*   **ECS Fargate Deployment:**  Deploys a containerized application on AWS ECS using the Fargate launch type, eliminating the need to manage EC2 instances.
*   **Application Load Balancer (ALB):**  Creates an ALB to distribute incoming traffic to the ECS tasks, providing high availability and scalability.
*   **Auto-Scaling:** Configures auto-scaling policies to automatically adjust the number of ECS tasks based on CPU utilization.
*   **Networking:**  Provisions a VPC with public subnets, an Internet Gateway, and route tables to enable public access to the application.
*   **Security:**  Creates security groups to control network traffic to the ALB and ECS tasks.
*   **Logging:**  Sets up CloudWatch Logs for container logs, enabling centralized logging and monitoring.
*   **Configurable:** Highly customizable through variables, allowing you to tailor the deployment to your specific needs.
*   **Dependencies:** Explicitly defines dependencies between resources to ensure correct creation order.

## Prerequisites

*   Terraform (version >= 1.0)
*   AWS Account with appropriate permissions to create resources (VPC, Subnets, ECS, ALB, IAM, etc.)
*   AWS CLI configured with your credentials

4.  **Initialize Terraform:**

    ```bash
    terraform init
    ```

5.  **Plan the changes:**

    ```bash
    terraform plan
    ```

6.  **Apply the changes:**

    ```bash
    terraform apply
    ```

## Outputs

The module provides the following outputs:

| Name              | Description                    |
| ----------------- | ------------------------------ |
| `alb_dns_name`    | The DNS name of the ALB         |


See `outputs.tf` for details.

## Contributing

Contributions are welcome! Please submit a pull request with your changes and convert this into a module
 **Modular Design:**  Organized as a reusable Terraform module with well-defined inputs and outputs.# infrastructure-cicd-pipeline