package com.aboutdata.model.dto;

import com.aboutdata.domain.Member;
import com.aboutdata.model.MemberModel;
import java.util.ArrayList;
import java.util.List;

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

    /**
     * 转换member对象
     *
     * @param members
     * @return
     */
    public static List<MemberModel> getMemberModelsDTO(List<Member> members) {
        List<MemberModel> result = null;
        if (members != null && members.size() > 0) {
            result = new ArrayList(members.size());
            for (Member member : members) {
                //DTO转换
                MemberModel model = new MemberModel();
                model.setId(member.getId());
                model.setUsername(member.getUsername());
                model.setName(member.getName());
                model.setEmail(member.getEmail());
                model.setIsEnabled(member.getIsEnabled());
                model.setIsLocked(member.getIsLocked());
                model.setLockedDate(member.getLockedDate());
                model.setLoginFailureCount(member.getLoginFailureCount());
                model.setLoginDate(member.getLoginDate());
                model.setCreateDate(member.getCreateDate());
                model.setModifyDate(member.getModifyDate());

                result.add(model);
            }
        }
        return result;
    }
}
