package com.neusoft.train.demo.springmvc.controller;

import com.neusoft.train.demo.springmvc.entity.User;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Map;

/**
 * @author tangwei
 * @created on 2016-08-24 14:14
 */

@Controller
@RequestMapping("/demo")
public class DemoController {

	/**
	 * 注解缺省value值，请求“/demo”时执行的方法
	 * @return
	 */
	@RequestMapping
	public String execute(){
      return  "default";
	}

	/**
	 * 访问路径：/demo/do
	 * @return
	 */
	@RequestMapping("/do")
	public String  doSomething(){
		return  "do";
	}

	/**
	 * 指定访问方法
	 * @return
	 */
	@RequestMapping(value = "/do2",method = RequestMethod.GET)
     public String   doSomeThing2(){
		 return  "do2";
	 }

	/**
	 *  带*通配符
	 * @return
	 */
	@RequestMapping("/*/do3")
	public String  doSomething3(){
		return  "do3";
	}

	/**
	 * 带**通配符
	 * @return
	 */
	@RequestMapping("/**/do4")
	public String  doSomething4(){
		return  "do4";
	}

	/**
	 * 带?通配符
	 * @return
	 */
	@RequestMapping("/do5??")
	public String  doSomething5(){
		return  "do5";
	}

	/**
	 * 占位符
	 * @param id
	 * @return
	 */
	@RequestMapping("/pla/{id}")
   public String placeholder(@PathVariable("id") Integer id){
		System.out.println("占位符：" + id);
	   return "pla";
   }


	/**
	 * 绑定请求参数
	 * @param userName
	 * @return
	 */
	@RequestMapping("/handle")
	public String handle(@RequestParam(value = "userName" ,required = true) String userName){
		System.out.println("请求参数：" + userName);
		return "handle";
	}


	/**
	 * 自动绑定请求参数到pojo
	 * @param user
	 * @return
	 */
	@RequestMapping("/pojo")
	public String handlePojo(User user){
		System.out.println("请求参数：" + user.getUserName()+"," + user.getPassword());
		return "pojo";
	}

	@ModelAttribute("user")
    public  User getUser(){
		User user = new User();
		user.setUserName("lisi");

		return user;
	}

	@RequestMapping("/model")
	public String handleModel(ModelMap map){
		User user = new User();
		user.setPassword("456");
		map.addAttribute(user);
		return "model";
	}



}
