package com.bookforest.manager.controller.webmag.rotation;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bookforest.manager.bean.Rotation;
import com.bookforest.manager.bean.User;
import com.bookforest.manager.service.webmag.RotationService;
import com.bookforest.manager.utils.Maps;
import com.bookforest.manager.utils.RequestUtil;
import com.bookforest.manager.utils.TimeUtil;

@Controller
public class RotaionController {

	@Autowired
	RotationService rotationService;
	
	@RequestMapping("rotationAllJson")
	@ResponseBody
	public List<Rotation> rotationAllJson()
	{
		List<Rotation> rotationAll = rotationService.getRotationAll();
		
		return rotationAll;
	}
	
	@RequestMapping("/uploadFile")
    @ResponseBody
    public Map<String, Object> uploadFile(MultipartFile imgFile)
            throws IllegalStateException, IOException {
		/*System.out.println(imgFile);*/
        // 原始名称
        String oldFileName = imgFile.getOriginalFilename(); // 获取上传文件的原名
//      System.out.println(oldFileName);
        // 存储图片的虚拟本地路径（这里需要配置tomcat的web模块路径，双击猫进行配置）
        String saveFilePath = "D://JavaDeveloper//images";
        // 上传图片
        if (imgFile != null && oldFileName != null && oldFileName.length() > 0) {
            // 新的图片名称
            String newFileName = UUID.randomUUID() + oldFileName.substring(oldFileName.lastIndexOf("."));
            // 新图片
            File newFile = new File(saveFilePath + "\\" + newFileName);
            // 将内存中的数据写入磁盘
            imgFile.transferTo(newFile);
            // 将新图片名称返回到前端
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("success", "成功啦");
            map.put("url", newFileName);
            return map;
        } else {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("error", "图片不合法");
            return map;
        }
    }

	
	@RequestMapping("addRotation")
	@ResponseBody
	public Map<String, Object> addRotation(HttpServletRequest request) 
	{
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		Map<String, Object> map=new HashMap<>();
		System.out.println(parameter);
		boolean flag=false;
		
		Rotation rotation=new Rotation();
		User loginUser = (User) request.getSession().getAttribute("loginUser");
		
		rotation.setOperatorId(loginUser.getUserId());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		rotation.setOperatorTime(df.format(new Date()));
		rotation.setImgName(Maps.getString(parameter, "imgName"));
		rotation.setImgRemark(Maps.getString(parameter, "imgRemark"));
		rotation.setRotationUrl(Maps.getString(parameter, "rotationUrl"));
		if(Maps.getString(parameter, "state")==null)
		{
			rotation.setImgState(0);
		}
		else
		{
			rotation.setImgState(1);
		}
		rotation.setImgUrl("http://localhost/pic/"+Maps.getString(parameter, "url"));
		rotation.setOrder(Maps.getInt(parameter, "order"));
		
		flag=rotationService.addRotation(rotation);
		
		if(flag==true)
		{
			map.put("data", "true");
		}
		
		return map;
	}
	
	@RequestMapping("delRotationBatch")
	@ResponseBody
	public Map<String, Object> delRotationBatch(HttpServletRequest request)
	{
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		Map<String, Object> map=new HashMap<>();
		boolean flag=false;
		String strImgId=Maps.getString(parameter, "imgIds");
		strImgId=strImgId.substring(1);
		String[] imgIds=strImgId.split("[|]");
		
		flag = rotationService.delRotationBatch(imgIds);
		
		if(flag==true)
		{
			map.put("data", "true");
		}
		else
		{
			map.put("data", "false");
		}
		
		return map;
	}
}
