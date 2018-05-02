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
import com.test.mobile.redis.SingleValueRedis;
import com.test.mobile.website.bean.Msg;
import com.test.mobile.website.bean.Scheme;
import com.test.mobile.website.bean.SchemeSearch;
import com.test.mobile.website.bean.StateEnum;
import com.test.mobile.website.bean.StrongResult;
import com.test.mobile.website.bean.TestTask;
import com.test.mobile.website.bean.TestTaskDetail;
import com.test.mobile.website.bean.WeightConfig;
import com.test.mobile.website.bean.WeightJSON;
import com.test.mobile.website.bean.WhiteList;
import com.test.mobile.website.service.StrongService;
import com.test.mobile.website.service.StrongTestResultService;
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
	
	@Autowired
	StrongTestResultService strongTestResultService;
	
	@RequestMapping("submitCrashInfo")
	public Msg submitCrashInfo(String crashInfo){
		 SingleValueRedis.getInstance().addCrashInfo(crashInfo);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping("testresult/autoplayback")
	public Msg autoplayback(Integer resultId,String schemeUrl){
		String result = testTaskService.playbackCrash(schemeUrl, resultId);
		if(result.equals("fail"))
			return Msg.fail().add("errorMsg", "没有测试设备");
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping("testresult/playback")
	public Msg playback(Integer resultId){
		testTaskService.playbackCrash(resultId);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping("testresult/stopplayback")
	public Msg stopPlayback(){
		testTaskService.stopPlayback();
		return Msg.success();
	}
	
	
	
	
	
	@RequestMapping("testresult/getByTaskId")
	public String getTestResultByTaskId(Map<String, Object> map,Integer taskId){
		TestTaskDetail testtaskDetail = testTaskService.getTestTaskById(taskId);
		List<StrongResult> strongResult = strongTestResultService.getStrongResult(taskId);
		map.put("taskdetail", testtaskDetail);
		map.put("strongresultList", strongResult);
		
		return "strongtestresult";
	}
	
	
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
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping("scheme/update")
	public Msg updateScheme(Scheme scheme){
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
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			 return Msg.fail().add("errorMsg", map);
		 }else{
			 strongService.addScheme(scheme);
				
				int id = scheme.getId();
				
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
		ModelAndView mv = new ModelAndView("schemelist");
		int page = 0;
		if(search.getPage() == null)
			page = 1;
		else
			page = search.getPage();
		List<Scheme> schemeList = strongService.getScheme(page,search);
		PageInfo<Scheme> p = new PageInfo<>(schemeList);
		mv.addObject("schemeList",schemeList);
		mv.addObject("page", p);
		return mv;
	}
	
	
	
	
	
	
}
