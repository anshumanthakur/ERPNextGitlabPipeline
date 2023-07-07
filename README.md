## ERPNext Deployment Pipeline

## Description
The ERPNext Deployment Pipeline is a GitLab CI/CD configuration that automates the deployment of ERPNext, an open-source ERP system, on any cloud-hosted virtual machine. It includes security testing stages and a script for deploying ERPNext on a remote Ubuntu server.

## Installation
To use the ERPNext Deployment Pipeline, follow these steps:

1. Clone this repository to your local machine:

```shell
git clone https://gitlab.com/your-username/erpnext-deployment.git
Configure the GitLab CI/CD variables in your project's CI/CD settings. Make sure to set the required variables, such as Public_IP and SSH_PRIVATE_KEY, for successful deployment.

Commit and push any changes to trigger the GitLab pipeline:
git add .
git commit -m "Update deployment settings"
git push
```
Visit your GitLab project's pipelines page to monitor the deployment progress and view the security testing results.

Once the deployment stage (deploy_erp) is manually triggered, the pipeline will execute the deployment script on a remote Ubuntu server, resulting in the installation of ERPNext.

## Usage
The deployment pipeline automatically executes the necessary steps for deploying ERPNext. Additional customization can be done by modifying the deploy.sh script in the repository.

## Support
If you encounter any issues or have questions, feel free to open an issue on the GitLab repository page.

## Contributing
Contributions are welcome! If you would like to contribute to the project, please follow these steps:

Fork the repository.

Create a new branch for your feature or bug fix.

Make your changes and commit them.

Push your changes to your forked repository.

Submit a pull request to the main repository.
