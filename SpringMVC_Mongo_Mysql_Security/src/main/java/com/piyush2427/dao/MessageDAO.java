package com.piyush2427.dao;

import java.util.List;

import com.piyush2427.entity.MessageEntity;

public interface MessageDAO 
{
    public void addMessage(MessageEntity message);
    public List<MessageEntity> getAllMessages();
    public void deleteMessage(String username);
}