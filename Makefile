# e.g. on UNIX `VERSION=0.1.1 APP=SomeAppName make build`
# e.g. on Windows `$env:VERSION=0.1.1; $env:APP=SomeAppName; make build`
APP = ${APP_NAME}
VERSION = $(or ${APP_VERSION}, 0.0.1)
ARCH = $(or ${TARGET_ARCH}, osx.11.0-x64)
build:
	cd ${APP} && dotnet build

test:
	cd ${APP}.Tests && dotnet test --filter FullyQualifiedName!~Integration --logger "junit;LogFilePath=UnitTests_${APP}.${VERSION}.xml" 

integration:
	cd ${APP}.Tests && \
	dotnet test --filter FullyQualifiedName~Integration --logger "junit;LogFilePath=IntegrationTests_${APP}.${VERSION}.xml" 

dotnet-publish:
	dotnet publish ./${APP}/${APP}.csproj --self-contained true --configuration Release --runtime ${ARCH} --output "./dist/${APP}"

run:
	cd ${APP} && dotnet run