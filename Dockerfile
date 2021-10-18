FROM mcr.microsoft.com/dotnet/core/sdk:latest
WORKDIR C:\Users\foofi\.dotnet
RUN dotnet build dockerfile.js -c Release -o /rel
EXPOSE 80
WORKDIR C:\Users\foofi\.dotnet
ENTRYPOINT ["dotnet", "myapp.dll"]