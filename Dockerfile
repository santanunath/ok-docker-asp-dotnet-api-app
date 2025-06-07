# stage1 (SDK)
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY *.csproj  ./
RUN dotnet restore 
COPY .  .
RUN dotnet publish -c Release -o bapon-out 


# stage2 (RUNTIME)
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
EXPOSE  8080
COPY --from=build  /app/bapon-out  .
ENTRYPOINT ["dotnet", "MyApi.dll"]

