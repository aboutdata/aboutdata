package com.aboutdata.model.dto;

import com.aboutdata.domain.Member;
import com.aboutdata.model.MemberModel;

/**
 *
 * @author Memberistrator
 */
public class MemberDTO {
    /**
     * member转换成MemberModel
     *
     * @param member
     * @return
     */
    public static MemberModel getMemberModelDTO(Member member) {
        MemberModel result = null;
        if (member != null) {
            result = new MemberModel();
            
            result.setId(member.getId());
            result.setUsername(member.getUsername());
            result.setName(member.getName());
            result.setEmail(member.getEmail());
            result.setIsEnabled(member.getIsEnabled());
            result.setIsLocked(member.getIsLocked());
            result.setLockedDate(member.getLockedDate());
            result.setLoginFailureCount(member.getLoginFailureCount());
            result.setLoginDate(member.getLoginDate());
            result.setCreateDate(member.getCreateDate());
            result.setModifyDate(member.getModifyDate());
        }
        return result;
    }
}
