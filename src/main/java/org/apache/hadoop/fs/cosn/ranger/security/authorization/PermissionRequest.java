package org.apache.hadoop.fs.cosn.ranger.security.authorization;


public class PermissionRequest {
    private ServiceType serviceType;
    private AccessType accessType;

    private String bucketName;
    private String objectKey;

    private String fsMountPoint;
    private String chdfsPath;

    private String userCred;

    public PermissionRequest(ServiceType serviceType, AccessType accessType, String bucketName, String objectKey,
            String fsMountPoint, String chdfsPath) {
        this.serviceType = serviceType;
        this.accessType = accessType;
        this.bucketName = bucketName;
        this.objectKey = objectKey;
        this.fsMountPoint = fsMountPoint;
        this.chdfsPath = chdfsPath;
    }

    public PermissionRequest(ServiceType serviceType, AccessType accessType, String bucketName, String objectKey,
            String fsMountPoint, String chdfsPath, String userCred) {
        this.serviceType = serviceType;
        this.accessType = accessType;
        this.bucketName = bucketName;
        this.objectKey = objectKey;
        this.fsMountPoint = fsMountPoint;
        this.chdfsPath = chdfsPath;
        this.userCred = userCred;
    }

    public ServiceType getServiceType() {
        return serviceType;
    }

    public AccessType getAccessType() {
        return accessType;
    }

    public String getBucketName() {
        return bucketName;
    }

    public String getObjectKey() {
        return objectKey;
    }

    public String getFsMountPoint() {
        return fsMountPoint;
    }

    public String getChdfsPath() {
        return chdfsPath;
    }

    public String getUserCred() {
        return userCred;
    }

    public void setUserCred(String userCred) {
        this.userCred = userCred;
    }
}
