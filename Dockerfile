# Stage 1: Build
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

# Copy csproj and restore dependencies
COPY blazorserverstarter/*.csproj blazorserverstarter/
RUN dotnet restore "blazorserverstarter/BlazorServerStarter.csproj"

# Copy everything else and build
COPY blazorserverstarter/ blazorserverstarter/
WORKDIR /src/blazorserverstarter
RUN dotnet build "BlazorServerStarter.csproj" -c Release -o /app/build

# Stage 2: Publish
FROM build AS publish
RUN dotnet publish "BlazorServerStarter.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Stage 3: Runtime
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app
EXPOSE 8080
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "BlazorServerStarter.dll"]