/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * 站内消息数据
 *
 * @author Administrator
 */
@Entity
@Table(name = "xx_message")
public class Message extends BaseEntity {

    /**
     * 标题
     */
    @Column(nullable = false, updatable = false)
    private String title;

    /**
     * 内容
     */
    @NotEmpty
    @Length(max = 1000)
    @Column(nullable = false, updatable = false, length = 1000)
    private String content;

    /**
     * 收件人已读
     */
    @Column(nullable = false, updatable = false)
    private Boolean receiverRead = false;

    /**
     * 发件人删除
     */
    @Column(nullable = false)
    private Boolean senderDelete = false;

    /**
     * 收件人删除
     */
    @Column(nullable = false)
    private Boolean receiverDelete = false;

    /**
     * 发件人
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(updatable = false)
    private Member sender;

    /**
     * 收件人
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(updatable = false)
    private Member receiver;

    /**
     * 原消息
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(updatable = false)
    private Message forMessage;

    //setter and getter
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Boolean getReceiverRead() {
        return receiverRead;
    }

    public void setReceiverRead(Boolean receiverRead) {
        this.receiverRead = receiverRead;
    }

    public Boolean getSenderDelete() {
        return senderDelete;
    }

    public void setSenderDelete(Boolean senderDelete) {
        this.senderDelete = senderDelete;
    }

    public Boolean getReceiverDelete() {
        return receiverDelete;
    }

    public void setReceiverDelete(Boolean receiverDelete) {
        this.receiverDelete = receiverDelete;
    }

    public Member getSender() {
        return sender;
    }

    public void setSender(Member sender) {
        this.sender = sender;
    }

    public Member getReceiver() {
        return receiver;
    }

    public void setReceiver(Member receiver) {
        this.receiver = receiver;
    }

    public Message getForMessage() {
        return forMessage;
    }

    public void setForMessage(Message forMessage) {
        this.forMessage = forMessage;
    }

}
