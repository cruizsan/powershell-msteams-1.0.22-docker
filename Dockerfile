FROM mcr.microsoft.com/powershell
RUN apt update && apt install wget unzip -qq && rm -rf /var/lib/apt/lists/*
RUN mkdir -p "/opt/microsoft/powershell/7/Modules/MicrosoftTeams/1.0.22"
RUN wget "https://github.com/cruizsan/powershell-msteams-1.0.22-docker/raw/master/assets/microsoftteams.1.0.22.nupkg"
RUN unzip "microsoftteams.1.0.22.nupkg" -d "/opt/microsoft/powershell/7/Modules/MicrosoftTeams/1.0.22/"
RUN pwsh -Command Import-Module MicrosoftTeams
CMD [ "pwsh" ]