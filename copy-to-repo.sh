#!/bin/bash

baseDir=$1
version=$2

mvn install:install-file -DgroupId=com.ig.maven.cdversion -DartifactId=cdversion-maven-extension -Dversion=$version -Dfile=$baseDir/pom.xml -Dpackaging=pom -DpomFile=$baseDir/pom.xml -DlocalRepositoryPath=. -DcreateChecksum=true
mvn install:install-file -DgroupId=com.ig.maven.cdversion -DartifactId=cdversion-maven-extension-core -Dversion=$version -Dfile=$baseDir/core/target/cdversion-maven-extension-core-$version.jar -Dpackaging=jar -DpomFile=$baseDir/core/pom.xml -DlocalRepositoryPath=. -DcreateChecksum=true
mvn install:install-file -DgroupId=com.ig.maven.cdversion -DartifactId=cdversion-maven-extension-git -Dversion=$version -Dfile=$baseDir/git/target/cdversion-maven-extension-git-$version.jar -Dpackaging=jar -DpomFile=$baseDir/git/pom.xml -DlocalRepositoryPath=. -DcreateChecksum=true
mvn install:install-file -DgroupId=com.ig.maven.cdversion -DartifactId=versionfix-maven-plugin -Dversion=$version -Dfile=$baseDir/versionfix-maven-plugin/target/versionfix-maven-plugin-$version.jar -Dpackaging=jar -DpomFile=$baseDir/versionfix-maven-plugin/pom.xml -DlocalRepositoryPath=. -DcreateChecksum=true