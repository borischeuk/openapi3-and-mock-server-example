# OpenAPI 3.0 and Mock Server Example
This project is an example of OpenAPI 3.0 specification which is intended to demonstrate the following features in API design:
- Example of OpenAPI 3.0 specification
- Use [ReDoc](https://github.com/Rebilly/ReDoc) as a platform to share the API specification to other parties in a clear manner
- Swagger editor hosted locally
- Create mock server from OpenAPI 3.0 specification quickly by using [API Sprout](https://github.com/danielgtaylor/apisprout)

The above features are important when design of API goes first before the implementation. With ReDoc, the specification can be deployed as a website and shared to other parties clearly so that feedback about the API design can be received before implementation. Moreover, APISprout is used to generate a mock server quickly from OpenAPI 3.0 specification so that developers can test the integration with API before the implementation completed.

## Pre-requisites
1. Node.js
2. Docker

 ## Getting Started
 After cloning the repo, the first step is to prepare the project by using the following command in the root directory:
 ```
 npm install
 ```
 After the installation completed, type the following command to start the application.
 ```
 npm start
 ```
 The application contains two parts, which are ReDoc website and Swagger Editor. By default, the URL of these two components are `https://localhost:8080` and `http://localhost:8080/swagger-editor/` respectively.

## Running Mock Server
Mock server will be hosted in Docker container. Before building the docker image, the first step is to build the application
```
npm run build
```
The second step is to build the docker image
```
docker build --tag <tag> .
```
After the docker image is built successfully, run the docker image
```
docker run -d -p 8000:8000 <tag>
```

## Steps of Creating Project
To create a project with ReDoc and Swagger Editor, Node.js package `create-openapi-repo`([Link to Github](https://github.com/ReDoc-ly/create-openapi-repo)) needs to be installed
```
npm install -g create-openapi-repo
```
Create a directory to store the project, go into it and type the following command
```
create-openapi-repo .
```
Answer the questions for creating the project. After answering the questions, project will be created.

## References
- [ReDoc Github Repo](https://github.com/Rebilly/ReDoc)
- [create-openapi-repo Github Repo](https://github.com/ReDoc-ly/create-openapi-repo)
- [API Sprout Github Repo](https://github.com/danielgtaylor/apisprout)