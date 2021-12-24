package org.apache.hadoop.fs.cosn.ranger.security.authorization;

public class PermissionResponse {
    private boolean allowed;
    private String realUserName;
    private RangerAuthPolicyResponse rangerAuthPolicy;

    public boolean isAllowed() {
        return allowed;
    }

    public void setAllowed(boolean allowed) {
        this.allowed = allowed;
    }

    public String getRealUserName() {
        return realUserName;
    }

    public void setRealUserName(String realUserName) {
        this.realUserName = realUserName;
    }

    public RangerAuthPolicyResponse getRangerAuthPolicy() {
        return rangerAuthPolicy;
    }

    public void setRangerAuthPolicy(RangerAuthPolicyResponse rangerAuthPolicy) {
        this.rangerAuthPolicy = rangerAuthPolicy;
    }
}
