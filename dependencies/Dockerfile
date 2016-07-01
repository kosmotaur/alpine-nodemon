FROM spectolabs/hoverfly:latest

COPY contracts /contracts

EXPOSE 8500
EXPOSE 8888

CMD ["-import","/contracts/service.json"]
