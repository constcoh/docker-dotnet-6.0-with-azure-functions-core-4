FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
dpkg -i packages-microsoft-prod.deb && \
rm packages-microsoft-prod.deb && \
apt-get update && \
apt-get install azure-functions-core-tools-4
