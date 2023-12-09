# MapUp-GitHub-Actions

# ****Objective****

Create a GitHub Actions workflow that automatically builds Docker images and uploads them to AWS Elastic Container Registry (ECR) upon code pushes or pull requests.

# Overview


  ![image](https://github.com/derkhin/MapUp-GitHub-Actions/assets/122746824/e4cb6e42-2fbe-40b0-a467-886f55471de2)


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


