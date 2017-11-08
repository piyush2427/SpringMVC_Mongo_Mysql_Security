package com.piyush2427.service;

import java.util.List;

import com.piyush2427.entity.MessageEntity;

public interface MessageService {
	public void addMessage(MessageEntity message);
    public List<MessageEntity> getAllMessages();
    public void deleteMessage(String username);
}
