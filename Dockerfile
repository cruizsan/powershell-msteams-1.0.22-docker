FROM mcr.microsoft.com/powershell

RUN mkdir -p "/opt/microsoft/powershell/7/Modules/MicrosoftTeams/1.0.22"

CMD [ "pwsh" ]