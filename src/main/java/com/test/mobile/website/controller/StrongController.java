package com.test.mobile.website.controller;

import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.test.mobile.util.mAndroidUtil;
import com.test.mobile.website.bean.Msg;
import com.test.mobile.website.bean.Scheme;
import com.test.mobile.website.bean.SchemeSearch;
import com.test.mobile.website.bean.StateEnum;
import com.test.mobile.website.bean.TestTask;
import com.test.mobile.website.bean.TestTaskDetail;
import com.test.mobile.website.bean.WeightConfig;
import com.test.mobile.website.bean.WeightJSON;
import com.test.mobile.website.bean.WhiteList;
import com.test.mobile.website.service.StrongService;
import com.test.mobile.website.service.TestTaskService;
import com.test.mobile.website.service.WeightConfigService;
import com.test.mobile.website.service.WhiteListService;

@RequestMapping("strong")
@Controller
public class StrongController {

	@Autowired
	StrongService strongService;
	
	@Autowired
	WhiteListService whiteListService;
	
	@Autowired
	WeightConfigService weightConfigService;
	
	@Autowired
	TestTaskService testTaskService;
	
	
	@ResponseBody
	@RequestMapping("testtask/run")
	public Msg executeTest(Integer id){
		
		
		
		
		return Msg.success();
	}
	
	@RequestMapping("testtask/list")
	public String getTestTaskList(Map<String,Object> map,@RequestParam(required=false,defaultValue="1",name="page") Integer page){
		List<TestTaskDetail>  testTaskDetails= testTaskService.getAll(page);
		
		PageInfo<TestTaskDetail> p = new PageInfo<>(testTaskDetails);
		map.put("testTaskDetails", testTaskDetails);
		map.put("page", p);
		
		return "testtask";
	}
	
	@ResponseBody
	@RequestMapping("testtask/add")
	public Msg addTestTasl(TestTask testTask){
		
		testTask.setState(StateEnum.waiting);
		testTaskService.add(testTask);
		
		
		int id = testTask.getId();		
		if(id >= 1)
			return Msg.success();
		else
			return Msg.fail();
		
	}
	
	
	@RequestMapping("weightconfig/list")
	public String getWeightConfigList(Map<String,Object> map,@RequestParam(required=false,defaultValue="1",name="page") Integer page){
		List<WeightConfig> weightConfigs = weightConfigService.getAll();
		PageInfo<WeightConfig> p = new PageInfo<>(weightConfigs);
		map.put("weightConfigs", weightConfigs);
		map.put("page", p);
		
		return "weightconfig";
	}
	
	@ResponseBody
	@RequestMapping("weightconfig/getWeightConfigs")
	public Msg getWeightConfigs(){
		List<WeightConfig> weightConfigs = weightConfigService.getAll();
		List<WeightJSON> wjList = new ArrayList<>();
		
		for (WeightConfig weightConfig : weightConfigs) {
			WeightJSON weightJSON = new WeightJSON();
			weightJSON.setId(weightConfig.getId());
			weightConfig.setId(null);
			weightJSON.setWeightJsonStr(JSONObject.toJSONString(weightConfig));
			wjList.add(weightJSON);
		}
		
		
		return Msg.success().add("wjList", wjList);
	}
	
	
	public static void main(String[] args) {
		String weightstr= "{\"del\":20,\"changeType\":10,\"changeValue\":40,\"emptyValue\":30}";
		
		JSONObject parseObject = JSONObject.parseObject(weightstr);
		WeightConfig javaObject = parseObject.toJavaObject(WeightConfig.class);
		
		System.out.println(JSONObject.toJSONString(javaObject));
	}
	
	
	
	@ResponseBody
	@RequestMapping("weightconfig/add")
	public Msg add(WeightConfig weightConfig){
		
		weightConfigService.save(weightConfig);
		
		
		int id = weightConfig.getId();		
		if(id >= 1)
			return Msg.success();
		else
			return Msg.fail();
		
	}
	
	
	
	
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
	 
	
	@ResponseBody
	@RequestMapping("scheme/update")
	public Msg updateScheme(Scheme scheme){
		System.out.println(scheme.toString());
		Integer line = strongService.updateScheme(scheme);
		
		if(line == 1)
			return Msg.success();
		else
			return Msg.fail();
				
	}
	
	@ResponseBody
	@RequestMapping("scheme/add")
	public Msg addScheme(@Validated Scheme scheme,BindingResult result){
		 if(result.hasErrors()){
			 Map<String, String> map = new HashMap<>();
			 
			 List<FieldError> errors = result.getFieldErrors();
			 for (FieldError fieldError : errors) {
				System.out.println(fieldError.getField() + ":" + fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			 return Msg.fail().add("errorMsg", map);
		 }else{
			 strongService.addScheme(scheme);
				
				int id = scheme.getId();
				
				System.out.println("id:" + id);
				if(id >= 1)
					return Msg.success();
				else
					return Msg.fail();
		 }
		
		
	}
	
	@ResponseBody
	@RequestMapping("scheme/deleteById")
	public Msg deleteById(@RequestParam(required=true,name="id") int id){
		if(id < 1)
			return Msg.fail();
		else{
			int deleteById = strongService.deleteById(id);
			System.out.println("deleteById:" + deleteById);
			if(deleteById >= 1)
				return Msg.success();
			else
				return Msg.fail();
			
		}	
	}
	
	@ResponseBody
	@RequestMapping("scheme/getSchemeById")
	public Msg getSchemeById(@RequestParam(name="id") int id){
		
		
		Scheme scheme = strongService.getSchemeById(id);
		return Msg.success().add("scheme", scheme);
	}
	@ResponseBody
	@RequestMapping("scheme/getSchemes")
	public Msg getSchemes(){
		
		
		List<Scheme> schemes = strongService.getScheme(0, null);
		return Msg.success().add("schemes", schemes);
	}
	
	@RequestMapping("/scheme/list")
	public ModelAndView getScheme(SchemeSearch search){
		System.out.println(search);
		ModelAndView mv = new ModelAndView("schemelist");
		int page = 0;
		if(search.getPage() == null)
			page = 1;
		else
			page = search.getPage();
		List<Scheme> schemeList = strongService.getScheme(page,search);
		PageInfo<Scheme> p = new PageInfo<>(schemeList);
		System.out.println(p);
		mv.addObject("schemeList",schemeList);
		mv.addObject("page", p);
		return mv;
	}
	
	
	
	
	
	
}
