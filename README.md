# 🚀 Terraform AWS EC2 Project

This project shows how I used **Terraform** to create multiple **Red Hat EC2 instances** on AWS directly from my Mac terminal, without using the AWS Console GUI.

---

## 📝 How I Did It

1. **Created IAM Keys**  
   - In AWS, I created an IAM user with programmatic access.  
   - Downloaded the access key and secret key.  
   - Exported them to my Mac terminal so Terraform could authenticate:  

   ```bash
   export AWS_ACCESS_KEY_ID="xxxxxxxx"
   export AWS_SECRET_ACCESS_KEY="xxxxxxxx"
   export AWS_DEFAULT_REGION="eu-north-1"

2.	Prepared Project Folder
	•	Made a new directory to keep everything clean:
