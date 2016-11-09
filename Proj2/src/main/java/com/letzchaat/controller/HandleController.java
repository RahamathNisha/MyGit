package com.letzchaat.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.google.gson.Gson;
import com.letzchaat.model.BlogInfo;
import com.letzchaat.model.ChatMessages;
import com.letzchaat.model.ForumInfo;
import com.letzchaat.model.QRCodeGenerator;
import com.letzchaat.model.StudAddress;
import com.letzchaat.model.Student;
import com.letzchaat.model.StudentInfo;
import com.letzchaat.model.Users;
import com.letzchaat.service.BlogService;
import com.letzchaat.service.ChatService;
import com.letzchaat.service.ForumService;
import com.letzchaat.service.StudentInfoService;
import com.letzchaat.service.StudentService;
import com.letzchaat.validator.BlogInfoValidator;
import com.letzchaat.validator.ForumInfoValidator;
import com.letzchaat.validator.StudAddressValidator;
import com.letzchaat.validator.StudentInfoValidator;
import com.letzchaat.validator.StudentValidator;

import jdk.nashorn.internal.ir.RuntimeNode.Request;


@Controller
public class HandleController {
	
     public HandleController()
     {
    	 System.out.println("inside controller");
     }
     /*@Autowired
     StudentService studentService;*/
     @Autowired
     StudentInfoService studentInfoService;
     @Autowired
 	 BlogService blogService;
     @Autowired
 	 ForumService forumService;
     
     @Autowired
     ChatService chatService;
     @Autowired
 	private JavaMailSender mailSender;
 	
     
     private static final Logger logger = LoggerFactory.getLogger(HandleController.class);
     
     @RequestMapping("/")
     public ModelAndView helloworld()
     {
    	 return new ModelAndView("login");
     }
     
     @RequestMapping("/index")
     public String gotoIndexPg()
     {
    	return "index";
     }
     
    
    
     
     @RequestMapping("/login")
     public ModelAndView gotoLogin(@ModelAttribute("stud") StudentInfo stud,@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
	            required = false) String logout, Model model)
     {
    	 if (error!=null) {
      	   
	            model.addAttribute("error", "Invalid username and password");
	            
	        }

	      if(logout!=null) {
	            model.addAttribute("msg", "You have been logged out successfully.");
	           
	        }
	         
    	 return new ModelAndView("login").addObject("command", new StudentInfo());
     }
     
     @RequestMapping(value="/loginCheck",method=RequestMethod.POST)
     public ModelAndView studentLogin(@Valid @ModelAttribute("stud")StudentInfo stud,BindingResult res,Model model)
     {
    	 studentInfoValidator.validate(stud, res);
    	 
 
    	 //List<StudentInfo> stList=studentInfoService.getList();
    	 //for(int i=0;i<stList.size();i++)
    		 //{
    			 //System.out.println("inside for loop");
    			/*if(!(stud.getUsername().equals(stList.get(i).getUsername())))
    			 {
    				 model.addAttribute("usrErr", "Invalid Username!");
    				 return new ModelAndView("about").addObject("command",new StudentInfo());
    			 }
    			 if(!(stud.getPassword().equals(stList.get(i).getPassword()))) 
    			 {
    				 model.addAttribute("pwdErr", "Incorrect Password!");
    				 return new ModelAndView("blog").addObject("command",new StudentInfo());
    			 }*/
    	        List<StudentInfo> st=studentInfoService.getStudentRecord(stud.getUsername());
    	        for(int i=0;i<st.size();i++)
    	        {
    	        	if(!(stud.getUsername().equals(st.get(i).getUsername())))
    				 {
    					 model.addAttribute("usrErr","Invalid Username!");
    					 return new ModelAndView("login").addObject("command",new StudentInfo());
    				 }
			 if(!(stud.getPassword().equals(st.get(i).getPassword())))
			 {
				 model.addAttribute("pwdErr","Incorrect Password!");
				 return new ModelAndView("login").addObject("command",new StudentInfo());
			 }
			
             if((stud.getUsername().equals(st.get(i).getUsername()))&&(stud.getPassword().equals(st.get(i).getPassword())))
             {  
          	   return new ModelAndView("viewProfile","studInfo",st).addObject("command",new StudentInfo());
          	   
             }
    	        }
    	        //System.out.println("student obj="+st);
    	        //System.out.println("stud.getUsername()="+stud.getUsername());
    	        //System.out.println("st.getUsername()="+st.getUsername());
    			 
    				  // System.out.println("i="+i);
                       //stud.setSid(stList.get(i).getSid());
                       //StudentInfo  st=studentInfoService.getRowById(stud.getSid());
                       /*if(stud.getPassword().equals(st.getPassword()))
                       {
                      	
   				        return new ModelAndView("viewProfile","studinfo",st).addObject("command",new StudentInfo());
                       }*/
    					
    					
                       /*else
                       {
                          model.addAttribute("usrErr","Invalid username!");
				        return new ModelAndView("login").addObject("command",new StudentInfo());
                       
    					 }*/
    			
    		 //}
    				       
    				      
    				      
                             
                            
    		 
    			 /*else
    			 {
    				 model.addAttribute("errMsg","Access Denied...");
    				 return new ModelAndView("login").addObject("command",new StudentInfo());
    			 }*/
    	        if(res.hasErrors())
    	    	 {
    	    		 return new ModelAndView("login").addObject("command",new StudentInfo()); 
    	    	 }
    	       // else
    	       // {
    		return new ModelAndView("index").addObject("command",new StudentInfo());
    		 
    	        //}
     }
     
     
     
     
     @RequestMapping(value="/register",method=RequestMethod.GET)
     public ModelAndView getRegister(@ModelAttribute("stud") StudentInfo stud)
     {
         return new ModelAndView("register").addObject("command",new StudentInfo());
     }
    /* @Autowired
     StudentValidator studentValidator;
     @Autowired
     StudAddressValidator studAddressValidator;*/
     @Autowired
     StudentInfoValidator studentInfoValidator;
     
    
     @RequestMapping(value="/save",method=RequestMethod.POST)
     public ModelAndView registerForm(@Valid @ModelAttribute("stud") StudentInfo stud,BindingResult res,Model model)
     { 
    	
    	 //studAddressValidator.validate(stud.getStudentAddress(), res);
    	 //studentValidator.validate(stud, res);
    	 studentInfoValidator.validate(stud, res);
    	 
    	 List<StudentInfo> stList=studentInfoService.getList();

         for (int i=0; i< stList.size(); i++) {
             if(stud.getEmail().equals(stList.get(i).getEmail())) {
                 model.addAttribute("emailMsg", "Email already exists");

                 return new ModelAndView("register").addObject("command",new StudentInfo());
             }

             if(stud.getUsername().equals(stList.get(i).getUsername())) {
                 model.addAttribute("usernameMsg", "Username already exists");

                 return new ModelAndView("register").addObject("command",new StudentInfo());
             }
            
         }
         if(res.hasErrors())
    	 {
    		 return new ModelAndView("register").addObject("command",new StudentInfo());
    	 }
    	 else
    	 {
    		 studentInfoService.insertRow(stud);
    	 return new ModelAndView("redirect:listStudent");
    	 }
     }
	 
     @RequestMapping("/listStudent")  
	 public @ResponseBody ModelAndView  getStudentList(ModelMap m) {  

    	 List<StudentInfo> studentList=(List<StudentInfo>)studentInfoService.getList();
    
    	 Gson gson = new Gson();
    	String jsonStudents = gson.toJson(studentList);
	    System.out.println("jsonStudents = " + jsonStudents);
	    m.addAttribute("stdata", jsonStudents);
	     return new ModelAndView("listStudent");
		 //return new ModelAndView("listStudent", "studentList", jsonStudents);
    	// ModelAndView mv=new ModelAndView("listStudent");
    	 //mv.addObject("st", jsonStudents);
	      //return studentList;
    	 //return new ModelAndView("listStudent", "studentList", studentList);
	     //return jsonStudents;
	 }
     
     
    
     @RequestMapping(value="/editStudent",method=RequestMethod.GET)
     public ModelAndView editStudent(@RequestParam int id,@ModelAttribute("stud") StudentInfo stud)
     {
    	 stud=studentInfoService.getRowById(id);
    	 ModelAndView mv=new ModelAndView("editStudent","studObject",stud);
    	 mv.setViewName("editStudent");
    	 return mv.addObject("command", stud);
     }
     @RequestMapping(value="/updatestud",method=RequestMethod.POST)
      public ModelAndView studentUpdate(@ModelAttribute("stud") StudentInfo stud)
      {
    	 studentInfoService.updateRow(stud);
    	 return new ModelAndView("redirect:listStudent").addObject("command", new StudentInfo());
      }
	  @RequestMapping(value="/deleteStudent",method=RequestMethod.GET)
     public ModelAndView deleteStudent(@RequestParam int id)
     {
    	 ModelAndView m1=new ModelAndView("deleteStudent");
    	 m1.setViewName("deleteStudent");
    	 studentInfoService.deleteRow(id);
    	 return new ModelAndView("redirect:listStudent").addObject("command", new StudentInfo());
    	 
     }
	  
	  
	 /* @RequestMapping("/header")
		public @ResponseBody ModelAndView getUserProfile(ModelMap m)
		{    
		  List<StudentInfo> studentList=(List<StudentInfo>)studentInfoService.getList();
		    
	    	 Gson gson = new Gson();
	    	String jsonStudents = gson.toJson(studentList);
		    System.out.println("jsonStudents = " + jsonStudents);
		    m.addAttribute("stdata", jsonStudents);
		     return new ModelAndView("header");
		}*/ 
	  @RequestMapping("/viewProfile")
	  public @ResponseBody ModelAndView gotoProfile(@RequestParam String s,ModelMap m)
	  {
		  List<StudentInfo>  st=studentInfoService.getStudentRecord(s);
		    Gson gson = new Gson();
	    	String jsonprofile = gson.toJson(st);
		    System.out.println("jsonStudents = " + jsonprofile);
		    m.addAttribute("stdata", jsonprofile);
		  return new ModelAndView("viewProfile");
	  }
	  
	 @RequestMapping("/userProfile")
	  public String  gotoUserProfile()
	  {
		 return "userProfile"; 
	  }
	  
	  
	/* @RequestMapping(value="/viewfile",method=RequestMethod.POST)
	  public ModelAndView getProfile(String s,HttpServletRequest re)
		{    
		  s=re.getParameter("t1");
		 
		     return new ModelAndView("redirect:viewProfile","s",s);
		}*/
	  
	  @RequestMapping(value="/profileSave",method=RequestMethod.POST)
	  public ModelAndView userProfile(@ModelAttribute StudentInfo st,HttpServletRequest re)
	  {
		  MultipartFile file=st.getFile();
			 String fname="";
			 String src="";	
				if (!file.isEmpty()) {
 		            try {
 		            	fname=file.getOriginalFilename();
 		                byte[] bytes = file.getBytes();
 		                BufferedOutputStream bw=new BufferedOutputStream(new FileOutputStream(new File("D:\\TrainingDT\\Collaborative\\src\\main\\webapp\\resources\\images"+fname)));
 		                bw.write(bytes);
 		                bw.close();
 		                //BufferedInputStream br=new BufferedInputStream(new FileInputStream(new File("D:\\TrainingDT\\Collaborative\\src\\main\\webapp\\resources\\images"+fname)));
 		                //bw.write(bytes);))
 		                src="/resources/images"+fname;
 		                
 		                re.setAttribute("img", src);
 		                System.out.println(src);
 		                } 
 		                catch (Exception e) {
 		                System.out.println("You failed to upload " + fname + " => " + e.getMessage());
 		            }
 		            }
 				
 				return new ModelAndView("userProfile").addObject("command",new StudentInfo());  
 			
	    	 
	     }
	  
	  
	  @Autowired
		BlogInfoValidator blogInfoValidator;
		
		@RequestMapping("/blog")
		public ModelAndView gotoBlog(@ModelAttribute("blg") BlogInfo blgg)
		{
			return new ModelAndView("blog").addObject("command",new BlogInfo());
		}
		
		@RequestMapping(value="createBlog",method=RequestMethod.POST)
		public ModelAndView gotocreateBlog(@Valid @ModelAttribute("blg") BlogInfo blg,BindingResult res,Model model,ModelMap m)
		{
			/*Date dt=new Date();
			SimpleDateFormat formatter=new SimpleDateFormat("d/MM/yyyy HH:mm");
			String res=formatter.format(dt);
			 //m.addAttribute("createdate", res);
			System.out.println("Simple date format pattern="+res);
			
			BlogInfo b=new BlogInfo();
			String tit=re.getParameter("tit");
			String ta=re.getParameter("tag");
			String c=re.getParameter("content");
			String u=re.getParameter("username");*/
		   //byte bb[]=c.getBytes();
			
			
			//ob.gotoLogin(stud, error, logout, model, hs, re);
			/*hs=re.getSession();
			String uu=(String)hs.getAttribute("uname");*/
			//String s=users.getUsername();
		    
			/*Users users=new Users();
			List<Users> uList=blogService.getuserList();
	   	    for(int i=0;i<uList.size();i++)
	   		 {
	   			 System.out.println("inside for loop");
	   			if(!(blg.getBusername().equals(uList.get(i).getUsername())))
	   			 {
	   			       
	   			    model.addAttribute("usrmsg","Invalid user to create blog!");
	 				 return new ModelAndView("blog");
	   			 }
	   		 }*/
	   	    List<BlogInfo> bList=blogService.getList();
	   	    for(int i=0;i<bList.size();i++)
			 {
				 //System.out.println("inside for loop");
				if((blg.getBtag()).equals(bList.get(i).getBtag()))
				 {
				       
				    model.addAttribute("tagMsg","Tag name already exists!");
					 return new ModelAndView("blog");
				 }
			 }
	   	    
	   	    
	   	 /*blogService.insertRow(u, c,tit,res,ta);
			System.out.println("retrieved username="+uu);
	        String t=re.getParameter("tit");
	        m.addAttribute("btit", t);
	        String c=re.getParameter("cont");
	        m.addAttribute("bcontent", c);
	        String tag=re.getParameter("tag");
	        m.addAttribute("btag", tag);*/
			
			blogInfoValidator.validate(blg, res);
	   	    if(res.hasErrors())
	   	    {
	   		 return new ModelAndView("blog").addObject("command",new BlogInfo());
	   	    }
	     	else
	   	    {
	   		 blogService.insertRow(blg);
	   		 return new ModelAndView("redirect:displayBlog");
	   	    }
		}
		
		
		@RequestMapping(value="/editBlog",method=RequestMethod.GET)
	    public ModelAndView editBlogInfo(@RequestParam int id,@ModelAttribute("blg") BlogInfo blg)
	    {
	   	 blg=blogService.getRowById(id);
	   	 ModelAndView mv=new ModelAndView("editBlog","bgInfo",blg);
	   	 mv.setViewName("editBlog");
	   	 return mv.addObject("command", blg);
	    }
		
		
	    @RequestMapping(value="/updateBlog",method=RequestMethod.POST)
	     public ModelAndView blogUpdate(@Valid @ModelAttribute("blg") BlogInfo blg,BindingResult res,Model model)
	     {
	    	
			blogInfoValidator.validate(blg, res);
	   	    if(res.hasErrors())
	   	 {
	   		 return new ModelAndView("editBlog").addObject("command",new BlogInfo());
	   	 }
	   	else
	   	 {
	   		 //studentInfoService.insertRow(stud);
	   		blogService.updateRow(blg);
	   		return new ModelAndView("redirect:displayBlog").addObject("command", new ForumInfo());
	   	 }
	   	}
	    
	    @RequestMapping("/displayBlog")
		public @ResponseBody ModelAndView blogDisplay(ModelMap m)
		{
			List<BlogInfo> blist=blogService.getList();
			Gson gson = new Gson();
		String jsonBlog = gson.toJson(blist);
	    System.out.println("jsonBlog = " + jsonBlog);
		 m.addAttribute("bdata", jsonBlog);
	     return new ModelAndView("displayBlog");
		}
		
		@RequestMapping("/displayUserBlog")
		public @ResponseBody ModelAndView displayUserwiseBlogs(@RequestParam String s,ModelMap m)
		{    
			List<BlogInfo> ubList=blogService.getuserBlog(s);
			Gson gs=new Gson();
			String jsonUserList=gs.toJson(ubList);
			System.out.println("jsonUserList="+jsonUserList);
			m.addAttribute("ubdata",jsonUserList);
			return new ModelAndView("displayUserBlog");
		}
		
		@RequestMapping("/displayTagBlog")
		public @ResponseBody ModelAndView displayTagBlogs(@RequestParam String s,ModelMap m)
		{    
			List<BlogInfo> tbList=blogService.getTagDetail(s);
			Gson gs=new Gson();
			String jsontagList=gs.toJson(tbList);
			System.out.println("jsontagblogList="+jsontagList);
			m.addAttribute("tbdata",jsontagList);
			return new ModelAndView("displayTagBlog");
		}
		
		
		@RequestMapping(value="/deleteBlog",method=RequestMethod.GET)
	    public ModelAndView deleteblog(@RequestParam int id)
	    {
	   	 ModelAndView m1=new ModelAndView("deleteBlog");
	   	 m1.setViewName("deleteBlog");
	   	 blogService.deleteRow(id);
	   	 return new ModelAndView("redirect:displayBlog").addObject("command", new BlogInfo());
	   	 
	    }
		
		@RequestMapping(value="/cmtBlog",method=RequestMethod.GET)
	    public ModelAndView cmtBlog(@RequestParam int id,@ModelAttribute("blg") BlogInfo blg,Model model)
	    {
	    	blg=blogService.getRowById(id);
	      	 ModelAndView mv=new ModelAndView("cmtBlog","cmtbgInfo",blg);
	      	//cmtForumService.insertRow(fc);
	      	 mv.setViewName("cmtBlog");
	      	 return mv.addObject("command", blg);
	   	}
		
		@RequestMapping(value="/saveCmt",method=RequestMethod.POST)
	    public ModelAndView saveBlogCmt(@ModelAttribute("blg") BlogInfo blg,Model model,HttpServletRequest re)
	    {
	    //String r=re.getParameter("rating");	
	      	int id=blogService.updateRow(blg);
	      	blg=blogService.getRowById(id);
	      	String s=blg.getBtag();
	      	System.out.println("value of s="+s);
	      	return new ModelAndView("redirect:listCmtBlog","s",s).addObject("command", new BlogInfo());
	   	}
		
		@RequestMapping("/listCmtBlog")
		public @ResponseBody ModelAndView gotolistCmtBlog(@RequestParam String s,ModelMap m)
		{
			
			 List<BlogInfo> cblogList=blogService.getTagDetail(s);
			    Gson gson = new Gson();
	    	String jsoncmtBlog = gson.toJson(cblogList);
		    System.out.println("jsoncmtBlog = " + jsoncmtBlog);
			 m.addAttribute("cbdata", jsoncmtBlog);
		     return new ModelAndView("listCmtBlog");
			
		}
		
		@RequestMapping(value="/rateBlog",method=RequestMethod.GET)
	    public ModelAndView ratingBlog(@RequestParam int id,@ModelAttribute("blg") BlogInfo blg,Model model)
	    {
			
			
	    	blg=blogService.getRowById(id);
	      	 ModelAndView mv=new ModelAndView("rateBlog","rtbgInfo",blg);
	      	//cmtForumService.insertRow(fc);
	      	 
	      	 mv.setViewName("rateBlog");
	      	 return mv.addObject("command", blg);
	   	}
		
		@RequestMapping(value="/saveBlogRate",method=RequestMethod.POST)
	    public ModelAndView saveBlogRating(@ModelAttribute("blg") BlogInfo blg,Model model,HttpServletRequest re,ModelMap m)
	    {
			/*String r=re.getParameter("rating");
			System.out.println("saveblog value="+r);
			re.setAttribute("rt", r);
			m.addAttribute("rt", r);*/
			String s=blg.getBrate();
	    	int r=Integer.valueOf(s).intValue();
	    	if(r>10)
	    	{
	    		model.addAttribute("rtMsg", "value cannot be more than 10");
	    		new ModelAndView("rateBlog");
	    	}
	    	else
	    	{
	    		blogService.updateRow(blg);
	      	
	    	}
	      	
	      	return new ModelAndView("redirect:listRatedBlog").addObject("command", new BlogInfo());
	   	}
		
		
		
		@RequestMapping("/listRatedBlog")
		public @ResponseBody ModelAndView gotolistRatedBlog(ModelMap m)
		{
			
			 List<BlogInfo> rblogList=blogService.getList();
			    Gson gson = new Gson();
	    	String jsonrtBlog = gson.toJson(rblogList);
		    System.out.println("jsonRatedBlog = " + jsonrtBlog);
			 m.addAttribute("rbdata", jsonrtBlog);
		     return new ModelAndView("listRatedBlog");
			
		}
	  
	 
	  @RequestMapping("/forum")
		public ModelAndView gotoForum(@ModelAttribute("frm") ForumInfo frm)
		{
			return new ModelAndView("forum").addObject("command",new ForumInfo());
		}
	  
		@Autowired
		ForumInfoValidator forumInfoValidator;
		
		@RequestMapping(value="/createForum",method=RequestMethod.POST)
	    public ModelAndView registerForm(@Valid @ModelAttribute("frm") ForumInfo frm,BindingResult res,Model model,ModelMap m)
	    { 
			
			/*Date dt=new Date();
			SimpleDateFormat formatter=new SimpleDateFormat("d/MM/yyyy HH:mm");
			String r=formatter.format(dt);
			 //m.addAttribute("createdate", res);
			System.out.println("Simple date format pattern for forum creation="+r);*/
			forumInfoValidator.validate(frm, res);
			/*List<ForumInfo> fList=forumService.getList();

	        for (int i=0; i< fList.size(); i++) {
	            

	            if(frm.getFusername().equals(fList.get(i).getFusername())) {
	                model.addAttribute("fusernameMsg", "Username already exists");
	                 
	                return new ModelAndView("forum").addObject("command",new ForumInfo());
	            }
	           
	            
	        } */
	   	    if(res.hasErrors())
	   	 {
	   		 return new ModelAndView("forum").addObject("command",new ForumInfo());
	   	 }
	   	else
	   	 {
	   		 //studentInfoService.insertRow(stud);
	   		forumService.insertRow(frm);
	   		
	   	 return new ModelAndView("redirect:listForum");
	   	 }
	    }
		@RequestMapping("/listForum")
		public @ResponseBody ModelAndView gotolistForum(ModelMap m)
		{
			
			 List<ForumInfo> forumList=forumService.getList();
			    Gson gson = new Gson();
	    	String jsonForum = gson.toJson(forumList);
		    System.out.println("jsonForum = " + jsonForum);
			 m.addAttribute("fdata", jsonForum);
		     return new ModelAndView("listForum");
			
		}
		@RequestMapping(value="/editForum",method=RequestMethod.GET)
	    public ModelAndView editForumInfo(@RequestParam int id,@ModelAttribute("frm") ForumInfo frm)
	    {
	   	 frm=forumService.getRowById(id);
	   	 ModelAndView mv=new ModelAndView("editForum","frmInfo",frm);
	   	 mv.setViewName("editForum");
	   	 return mv.addObject("command", frm);
	    }
	    @RequestMapping(value="/updateForum",method=RequestMethod.POST)
	     public ModelAndView forumUpdate(@Valid @ModelAttribute("frm") ForumInfo frm,BindingResult res,Model model)
	     {
	    	
			forumInfoValidator.validate(frm, res);
	   	    if(res.hasErrors())
	   	 {
	   		 return new ModelAndView("editForum").addObject("command",new ForumInfo());
	   	 }
	   	else
	   	 {
	   		 //studentInfoService.insertRow(stud);
	   		forumService.updateRow(frm);
	   		return new ModelAndView("redirect:listForum").addObject("command", new ForumInfo());
	   	 }
	   	}
	    @RequestMapping(value="/cmtForum",method=RequestMethod.GET)
	    public ModelAndView rateForum(@RequestParam int id,@ModelAttribute("frm") ForumInfo frm,Model model)
	    {
	    	frm=forumService.getRowById(id);
	      	 ModelAndView mv=new ModelAndView("cmtForum","cmtfrmInfo",frm);
	      	//cmtForumService.insertRow(fc);
	      	 mv.setViewName("cmtForum");
	      	 return mv.addObject("command", frm);
	   	}
	    @RequestMapping(value="/saveRating",method=RequestMethod.POST)
	    public ModelAndView saveForumRating(@ModelAttribute("frm") ForumInfo frm,ModelMap model,HttpServletRequest re)
	    {
	    //String r=re.getParameter("rating");	
	    	String s=frm.getFrate();
	    	int r=Integer.valueOf(s).intValue();
	    	if(r>10)
	    	{
	    		model.addAttribute("rtMsg", "value cannot be more than 10");
	    		new ModelAndView("cmtForum");
	    	}
	    	else
	    	{
	      	forumService.updateRow(frm);
	      	
	    	}
	    	return new ModelAndView("redirect:listCmtForum").addObject("command", new ForumInfo());
	   	}
	    @RequestMapping("/listCmtForum")
		public @ResponseBody ModelAndView gotolistCmtForum(ModelMap m)
		{
			
			 List<ForumInfo> cforumList=forumService.getList();
			    Gson gson = new Gson();
	    	String jsoncmtForum = gson.toJson(cforumList);
		    System.out.println("jsoncmtForum = " + jsoncmtForum);
			 m.addAttribute("cfdata", jsoncmtForum);
		     return new ModelAndView("listCmtForum");
			
		}
		@RequestMapping(value="/deleteForum",method=RequestMethod.GET)
	    public ModelAndView deleteforum(@RequestParam int id)
	    {
	   	 ModelAndView m1=new ModelAndView("deleteForum");
	   	 m1.setViewName("deleteForum");
	   	 forumService.deleteRow(id);
	   	 return new ModelAndView("redirect:listForum").addObject("command", new ForumInfo());
	   	 
	    }
		@RequestMapping("/discussForum")
		public @ResponseBody ModelAndView getdiscussed(@RequestParam String s,ModelMap m)
		{    
			List<ForumInfo> topicList=forumService.getTopic(s);
			Gson gs=new Gson();
			String jsontopicList=gs.toJson(topicList);
			System.out.println("jsontopicList="+jsontopicList);
			m.addAttribute("tdata",jsontopicList);
			return new ModelAndView("discussForum");
		}
		@RequestMapping("/postCmt")
		public @ResponseBody ModelAndView getpostForum(@RequestParam int id,@ModelAttribute("frm")ForumInfo frm,ModelMap m)
		{    
			frm=forumService.getRowById(id);
			ModelAndView mv=new ModelAndView("postForumCmt","pfrmInfo",frm);
			mv.setViewName("postForumCmt");
			return mv.addObject("command",frm);
			
		}
		
		@RequestMapping(value="/savePostCmt",method=RequestMethod.POST)
	    public ModelAndView savePost(@Valid @ModelAttribute("frm") ForumInfo frm,BindingResult res,Model model)
	    {
			forumInfoValidator.validate(frm, res);
			
	   	    if(res.hasErrors())
	   	 {
	   		 return new ModelAndView("postForumCmt").addObject("command",new ForumInfo());
	   	 }
	   	    else
	   	    {
	   	    	int  i=forumService.insertRow(frm);
	   	    	frm=forumService.getRowById(i);
	   	    	int id=frm.getForumId();
	   	    	System.out.println("id="+id);
	   	    	   	    	
	      	return new ModelAndView("redirect:postDiscuss","id",id).addObject("command", new ForumInfo());
	   	}
	    } 
		@RequestMapping("/postDiscuss")
		public @ResponseBody ModelAndView getcmtPost(@RequestParam int id,ModelMap m,HttpServletRequest re)
		{   // ForumInfo f=
			/*String s=(String)re.getAttribute("id");
			System.out.println("value of s="+s);
			id=Integer.valueOf(s).intValue();
			System.out.println("get attribute="+id);*/
		
			List<ForumInfo> postList=forumService.getpostTopic(id);
			Gson gs=new Gson();
			String jsonpostList=gs.toJson(postList);
			System.out.println("jsonpostList="+jsonpostList);
			m.addAttribute("pstdata",jsonpostList);
			return new ModelAndView("postDiscuss");
		}
		
		
		@RequestMapping("/mail")
	    public String gotoMail()
	    {
	   	 return "mail";
	    }
	    
	    @RequestMapping("/result")
	    public String gotoResult()
	    {
	   	 return "result";
	    }
	    @RequestMapping("/errPage")
	    public String gotoError()
	    {
	   	 return "errPage";
	    }
	    
	    @RequestMapping(value="sendEmail",method=RequestMethod.POST)
	    public String tosendEmail(String recipientAddress, String fromAddress, String subject, String msgBody,HttpServletRequest request) 
	    {
	   	 try
	   	 {
	   		 
	   	 
	   	recipientAddress = request.getParameter("recipient");
	       subject = request.getParameter("subject");
	        msgBody = request.getParameter("message");
	       fromAddress=request.getParameter("sender");
	        //fromAddress="niyamath.noori@gmail.com";
	         
	        // prints debug info
	        System.out.println("To: " + recipientAddress);
	        System.out.println("Subject: " + subject);
	        System.out.println("Message: " + msgBody);
	        System.out.println("Sender:"+fromAddress);
	   	 
	   	 
	   	 SimpleMailMessage msg = new SimpleMailMessage();
			msg.setFrom(fromAddress);
			msg.setTo(recipientAddress);
			msg.setSubject(subject);
			msg.setText(msgBody);
			mailSender.send(msg);
	   	 }
	   	 catch(Exception ex)
	   	 {
	   		 System.out.println("Exception occurred..."+ex);
	   	 }
			return "result";
		}
		
	    
	    @RequestMapping("/listChat")
		public @ResponseBody ModelAndView gotolistChat(ModelMap m)
		{
			
			 List<ChatMessages> chatList=chatService.getListMessages();
			    Gson gson = new Gson();
	    	String jsonChatList = gson.toJson(chatList);
		    System.out.println("jsonChatList = " + jsonChatList);
			 m.addAttribute("ctdata", jsonChatList);
		     return new ModelAndView("listChat");
			
		} 
	    
	    
		
		@RequestMapping("/QRCheck")
		public String gotoIndex(HttpServletRequest re)
		{
			try
			{
				QRCodeGenerator ob=new QRCodeGenerator();
				//ob.qrGenerator();
				//String filePath="D:\\TrainingDT\\Collaborative\\src\\main\\webapp\\resources\\images\\verifyQR.jpg";
				
				String img="/resources/images/verifyQR.jpg";
				System.out.println("image path="+img);
				re.setAttribute("qrimg", img);
			}
			catch(Exception ex)
			{
				System.out.println("Exception caught..."+ex);
			}
			return "QRCheck";
		}  
}
