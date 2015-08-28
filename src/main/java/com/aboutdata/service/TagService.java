/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.domain.Tag;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public interface TagService {

    public Tag create(Tag tag);

    public Tag getByName(String name);

    public Set<Tag> getTagsFromString(String tagString);
}