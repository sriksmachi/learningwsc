FROM microsoft/windowsservercore:latest
SHELL ["powershell"]

RUN Add-WindowsFeature Web-Server

RUN Install-WindowsFeature NET-Framework-45-ASPNET ; \  
    Install-WindowsFeature Web-Asp-Net45

COPY ./Docker/Setups /Windows/Temp/Setups
COPY ./publishoutput test  

ENV ASPNETCORE_URLS http://*:80

RUN Remove-WebSite -Name 'Default Web Site'  
RUN New-Website -Name 'test' -Port 80 \  
    -PhysicalPath 'c:\test' -ApplicationPool '.NET v4.5'

RUN C:\Windows\Temp\Setups\Install-DotNetCore.ps1 -InstallDir 'C:\Program Files\dotnet'
RUN C:\Windows\Temp\Setups\DotNetCore.1.0.0-WindowsHosting.exe /quiet /install

EXPOSE 80
WORKDIR /test
