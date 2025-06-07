# stage1 (SDK)
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY *.csproj  ./
RUN dotnet restore 
COPY .  .
RUN dotnet publish -c Release -o ronit-out-folder 


# stage2 (RUNTIME)
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
EXPOSE  8080
COPY --from=build  /app/ronit-out-folder  .
ENTRYPOINT ["dotnet", "MyApi.dll"]

