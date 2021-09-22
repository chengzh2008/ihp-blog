## Docker

`docker build -t ihp-blog .`
`docker run -p 8000:8000 -v $(pwd)/Config:/app/Config:ro realworld-app-ihp`
`docker run -e ENV=dev -p 8000:8000 -v $(pwd)/Config:/app/Config:ro realworld-app-ihp`
