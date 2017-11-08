package com.piyush2427.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.util.UriComponentsBuilder;

import com.piyush2427.entity.MessageEntity;
import com.piyush2427.service.MessageService;

@EnableWebMvc
@RestController
@RequestMapping("/message")
public class MessageController {

	@Autowired
	private MessageService messageService;

	  @RequestMapping(value = "/getMessage/", method = RequestMethod.GET)
	    public ResponseEntity<List<MessageEntity>> getMessages() {
	        List<MessageEntity> message = this.messageService.getAllMessages();
	        if(message.isEmpty()){
	            return new ResponseEntity<List<MessageEntity>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
	        }
	        return new ResponseEntity<List<MessageEntity>>(message, HttpStatus.OK);
	    }
	  @RequestMapping(value = "/addMessage/", method = RequestMethod.POST)
	    public ResponseEntity<Void> createUser(@RequestBody MessageEntity message,    UriComponentsBuilder ucBuilder) {
	        this.messageService.addMessage(message);
	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/message/{username}").buildAndExpand(message.getUsername()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	    }
	 
	  @RequestMapping(value = "/delMessage/{username}", method = RequestMethod.DELETE)
	    public ResponseEntity<MessageEntity> deleteUser(@PathVariable("username") String username) {
	        System.out.println("Fetching & Deleting Messages with username " + username);
	        this.messageService.deleteMessage(username);
	        return new ResponseEntity<MessageEntity>(HttpStatus.NO_CONTENT);
	    }
 
	
}
