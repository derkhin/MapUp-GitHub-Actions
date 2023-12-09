# MapUp-GitHub-Actions

# ****Objective****

Create a GitHub Actions workflow that automatically builds Docker images and uploads them to AWS Elastic Container Registry (ECR) upon code pushes or pull requests.

- Install Dependencies
```
npm install 
```

- Run Locally
```
npm run dev
```

- Build 

```
docker build -t mapup-docker .
```

```
docker run -p 80:5173 mapup-docker
```