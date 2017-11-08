package com.piyush2427.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.piyush2427.entity.MessageEntity;

@Repository
public class MessageDaoImpl implements MessageDAO  {

	@Autowired
    private MongoOperations mongoOperations;
	
	@Override
	public void addMessage(MessageEntity message) {
		this.mongoOperations.save(message);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MessageEntity> getAllMessages() {
		return this.mongoOperations.findAll(MessageEntity.class);
	}

	@Override
	public void deleteMessage(String username) {
		Query query= new Query(Criteria.where("username").is(username));
		this.mongoOperations.remove(query, MessageEntity.class);
	}
	
	

}
