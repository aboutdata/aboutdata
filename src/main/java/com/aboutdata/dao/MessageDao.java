package com.aboutdata.dao;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.Message;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * 站内消息
 *
 * @author Administrator
 */
@Repository
public interface MessageDao extends JpaRepository<Message, String> {

    public Page<Message> findByReceiver(Member receiver, Pageable pageable);

    /**
     * 查找消息数量
     *
     * @param receiver 会员，null表示管理员
     * @param receiverRead 是否已读
     * @return 消息数量，不包含草稿
     */
    public Long countByReceiverAndReceiverRead(Member receiver, Boolean receiverRead);

}
