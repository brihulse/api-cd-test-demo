FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY api/*.csproj ./api/
WORKDIR /app/api
RUN dotnet restore

# Copy everything else and buil
WORKDIR /app
COPY api/. ./api/
WORKDIR /app/api
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime
WORKDIR /app
COPY --from=build-env /app/api/out ./
ENTRYPOINT ["dotnet", "TodoApi.dll"]