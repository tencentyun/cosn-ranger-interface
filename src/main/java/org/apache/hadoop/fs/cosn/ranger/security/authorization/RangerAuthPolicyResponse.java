package org.apache.hadoop.fs.cosn.ranger.security.authorization;

public class RangerAuthPolicyResponse {

    private String rangerPolicyUrl;

    private String authJarMd5;

    public String getRangerPolicyUrl() {
        return rangerPolicyUrl;
    }

    public void setRangerPolicyUrl(String rangerPolicyUrl) {
        this.rangerPolicyUrl = rangerPolicyUrl;
    }

    public String getAuthJarMd5() {
        return authJarMd5;
    }

    public void setAuthJarMd5(String authJarMd5) {
        this.authJarMd5 = authJarMd5;
    }
}
