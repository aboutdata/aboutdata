/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model;

import com.aboutdata.domain.Member;

/**
 * 标签
 *
 * @author Administrator
 */
public class TagModel extends BaseModel {

    private String name;
    private MemberModel member;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public MemberModel getMember() {
        return member;
    }

    public void setMember(MemberModel member) {
        this.member = member;
    }

}
