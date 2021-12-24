#!/bin/sh

base_dir=$(
  cd $(dirname $0)
  pwd
)

# 内部maven
deploy_repository_id="cos-inner-maven-repository"
deploy_repository_url="http://mirrors.tencent.com/repository/maven/QCLOUD_COS"

# 外部maven 中央仓库
# deploy_repository_id="oss"
# deploy_repository_url="https://oss.sonatype.org/service/local/staging/deploy/maven2"

origin_artifact_version=$(mvn -q -Dexec.executable="echo" -Dexec.args='${project.version}' --non-recursive exec:exec)
prefix="cosn-ranger-interface"-${origin_artifact_version}
cd script_conf/jar
pom_file=${prefix}.pom
read groupId artifactId versionId <<<$(mvn -f ${pom_file} -q -Dexec.executable="echo" -Dexec.args='${project.groupId} ${project.artifactId}  ${project.version}' --non-recursive exec:exec)
echo ${prefix}
mvn deploy:deploy-file \
  -DrepositoryId=${deploy_repository_id} \
  -Durl=${deploy_repository_url} \
  -Dfile=${prefix}.jar \
  -DpomFile=${pom_file}

mvn deploy:deploy-file \
  -DrepositoryId=${deploy_repository_id} \
  -Durl=${deploy_repository_url} \
  -Dpackaging=jar.asc \
  -Dfile=${prefix}.jar.asc \
  -DgeneratePom=false \
  -DgroupId=${groupId} \
  -DartifactId=${artifactId} \
  -Dversion=${versionId}

mvn deploy:deploy-file \
  -DrepositoryId=${deploy_repository_id} \
  -Durl=${deploy_repository_url} \
  -Dfile=${prefix}-sources.jar \
  -Dpackaging=jar \
  -Dclassifier=sources \
  -DgeneratePom=false \
  -DgroupId=${groupId} \
  -DartifactId=${artifactId} \
  -Dversion=${versionId}

mvn deploy:deploy-file \
  -DrepositoryId=${deploy_repository_id} \
  -Durl=${deploy_repository_url} \
  -Dfile=${prefix}-sources.jar.asc \
  -Dpackaging=jar.asc \
  -Dclassifier=sources \
  -DgeneratePom=false \
  -DgroupId=${groupId} \
  -DartifactId=${artifactId} \
  -Dversion=${versionId}

mvn deploy:deploy-file \
  -DrepositoryId=${deploy_repository_id} \
  -Durl=${deploy_repository_url} \
  -Dfile=${prefix}-javadoc.jar \
  -Dpackaging=jar \
  -Dclassifier=javadoc \
  -DgeneratePom=false \
  -DgroupId=${groupId} \
  -DartifactId=${artifactId} \
  -Dversion=${versionId}

mvn deploy:deploy-file \
  -DrepositoryId=${deploy_repository_id} \
  -Durl=${deploy_repository_url} \
  -Dfile=${prefix}-javadoc.jar.asc \
  -Dpackaging=jar.asc \
  -Dclassifier=javadoc \
  -DgeneratePom=false \
  -DgroupId=${groupId} \
  -DartifactId=${artifactId} \
  -Dversion=${versionId}

mvn deploy:deploy-file \
  -DrepositoryId=${deploy_repository_id} \
  -Durl=${deploy_repository_url} \
  -Dpackaging=pom.asc \
  -Dfile=${prefix}.pom.asc \
  -DgeneratePom=false \
  -DgroupId=${groupId} \
  -DartifactId=${artifactId} \
  -Dversion=${versionId}
