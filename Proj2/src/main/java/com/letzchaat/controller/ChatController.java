package com.letzchaat.controller;

import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.async.DeferredResult;

import com.letzchaat.model.ChatMessages;
import com.letzchaat.service.ChatService;

@Controller
public class ChatController {
	
	private final ChatRepository chatRepository;
	@Autowired
		ChatService chatService;
		
		
		private final Map<DeferredResult<List<String>>, Integer> chatRequests =
				new ConcurrentHashMap<DeferredResult<List<String>>, Integer>();
		
		

		@Autowired
		public ChatController(ChatRepository chatRepository) {
			this.chatRepository = chatRepository;
			System.out.println("inside chat controller");
		}
		
		

		@RequestMapping("/chat")
		public String gotoChat()
		{
			return "chat";
		}
		
		
		
		@RequestMapping(value="/mvc/chat",method=RequestMethod.GET)
		public @ResponseBody DeferredResult<List<String>> getMessages(@RequestParam int messageIndex) {

			final DeferredResult<List<String>> deferredResult = new DeferredResult<List<String>>(null, Collections.emptyList());
			this.chatRequests.put(deferredResult, messageIndex);

			deferredResult.onCompletion(new Runnable() {
				public void run() {
					chatRequests.remove(deferredResult);
				}
			});

			List<String> messages = this.chatRepository.getMessages(messageIndex);
			if (!messages.isEmpty()) {
				deferredResult.setResult(messages);
			}

			return deferredResult;
		}

		@RequestMapping(value="/mvc/chat",method=RequestMethod.POST)
		public @ResponseBody void postMessage(@RequestParam String message,HttpServletRequest re) {
			 ChatMessages s=new ChatMessages();
		        String u=re.getParameter("userName");
		        String m=re.getParameter("message");
		        
		        Date dt=new Date();
				SimpleDateFormat formatter=new SimpleDateFormat("d/MM/yyyy HH:mm");
				String r=formatter.format(dt);
				 //m.addAttribute("createdate", res);
				System.out.println("Simple date format pattern for forum creation="+r);

			this.chatRepository.addMessage(message);
	
			// Update all chat requests as part of the POST request
			// See Redis branch for a more sophisticated, non-blocking approach

			for (Entry<DeferredResult<List<String>>, Integer> entry : this.chatRequests.entrySet()) {
				List<String> messages = this.chatRepository.getMessages(entry.getValue());
				entry.getKey().setResult(messages);
				chatService.insertMessage(m, r);
			}
		}

		

}
