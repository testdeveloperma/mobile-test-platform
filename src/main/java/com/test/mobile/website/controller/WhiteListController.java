package com.test.mobile.website.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.test.mobile.website.bean.Msg;
import com.test.mobile.website.bean.WhiteList;
import com.test.mobile.website.service.WhiteListService;

@Controller
public class WhiteListController {

	
	@Autowired
	WhiteListService whiteListService;

	@RequestMapping("/whitelist/list")
	public String getWhiteList(Map<String,Object> map,@RequestParam(required=false,defaultValue="1",name="page") Integer page){
		List<WhiteList> whitelists = whiteListService.getAll(page);
		System.out.println(whitelists);
		PageInfo<WhiteList> p = new PageInfo<>(whitelists);
		
		map.put("whitelists", whitelists);
		map.put("page", p);
		
		return "whitelist";
	}
	
	@ResponseBody
	@RequestMapping("whitelist/updatecache")
	public Msg updateWhiteListCache(){
		whiteListService.updateCache();
		
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping("whitelist/add")
	public Msg addWhitelist(@Validated WhiteList whiteList,BindingResult result){
		 if(result.hasErrors()){
			 Map<String, String> map = new HashMap<>();
			 
			 List<FieldError> errors = result.getFieldErrors();
			 for (FieldError fieldError : errors) {
				System.out.println(fieldError.getField() + ":" + fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			 return Msg.fail().add("errorMsg", map);
		 }else{
			 whiteListService.addWhiteList(whiteList);
				
				int id = whiteList.getId();
				
				System.out.println("id:" + id);
				if(id >= 1)
					return Msg.success();
				else
					return Msg.fail();
		 }
		
	}
	
	@ResponseBody
	@RequestMapping("/whitelist/getWhiteListById")
	public Msg getWhiteListById(@RequestParam(name="id") Integer id){
		WhiteList whiteList = whiteListService.getWhiteListById(id);
		
		if(whiteList == null)
			return Msg.fail();
		else
			return Msg.success().add("whitelist", whiteList);
			
	}
	
	@ResponseBody
	@RequestMapping("/whitelist/deleteWhiteListById")
	public Msg deleteWhiteListById(@RequestParam(name="id") Integer id){
	
		Integer line = whiteListService.deleteWhiteListById(id);
		if(line < 1){
			return Msg.fail();
		}else{
			return Msg.success();
		}		
	}
	 
	
	
}
