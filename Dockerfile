FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

COPY ./Api.Test/Api.Test.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/Api.Test/bin/Debug/netcoreapp2.1/publish/ .
EXPOSE 80
ENTRYPOINT ["dotnet", ".\Api.Test\bin\Debug\netcoreapp2.1\publish\netcore-api.dll"]