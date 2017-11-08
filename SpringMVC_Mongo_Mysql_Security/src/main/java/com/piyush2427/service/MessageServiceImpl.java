package com.piyush2427.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.piyush2427.dao.MessageDAO;
import com.piyush2427.entity.MessageEntity;

@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
    private MessageDAO messageDAO;

	@Override
	@Transactional
	public void addMessage(MessageEntity message) {
		messageDAO.addMessage(message);
	}

	@Override
	@Transactional
	public List<MessageEntity> getAllMessages() {
		return messageDAO.getAllMessages();
	}

	@Override
	@Transactional
	public void deleteMessage(String username) {
		messageDAO.deleteMessage(username);
	}

	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}
}
