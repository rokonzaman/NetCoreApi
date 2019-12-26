FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build-env
WORKDIR /app

COPY ./api/netcore-api.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish

FROM mcr.microsoft.com/dotnet/core/aspnet:2.1
WORKDIR /app
COPY --from=build-env /app/bin/Debug/netcoreapp2.1/publish .
EXPOSE 80
ENTRYPOINT ["dotnet", "run", "netcore-api.dll"]