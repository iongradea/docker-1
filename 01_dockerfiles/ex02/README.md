`cd HelloWorld && docker build -t ft-rails:on-build .`
`cd ./.. && docker build -t ex02 .`
`docker run -it --rm -p 3000:3000 ex02`