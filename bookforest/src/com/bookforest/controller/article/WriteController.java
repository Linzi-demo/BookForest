package com.bookforest.controller.article;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bookforest.bean.Article;
import com.bookforest.bean.User;
import com.bookforest.service.article.ArticleService;
import com.bookforest.utils.Maps;
import com.bookforest.utils.RequestUtil;
import com.bookforest.utils.UUIDUtils;

@Controller
public class WriteController {

	@Autowired 
	ArticleService articleService;
	
	@RequestMapping("write")
	public ModelAndView write(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		HttpSession session = request.getSession();
		if(session.getAttribute("loginUser")==null)
		{
			request.getRequestDispatcher("login").forward(request, response);
			return null;
		}
		else
		{
			return new ModelAndView("write/write");
		}
	}
	
	
	@RequestMapping(value="uploadArticleImg",method=RequestMethod.POST)
	  public void hello(HttpServletRequest request,HttpServletResponse response,@RequestParam(value = "editormd-image-file", required = false) MultipartFile attach){
	      try {
	          request.setCharacterEncoding( "utf-8" );
	          response.setHeader( "Content-Type" , "text/html" );
	          String rootPath = "D://JavaDeveloper//images//user";

	          /**
	           * 文件路径不存在则需要创建文件路径
	           */
	          File filePath=new File(rootPath);
	          if(!filePath.exists()){
	              filePath.mkdirs();
	          }

	          //最终文件名
	          File realFile=new File(rootPath+File.separator+attach.getOriginalFilename());
	          FileUtils.copyInputStreamToFile(attach.getInputStream(), realFile);

	          //下面response返回的json格式是editor.md所限制的，规范输出就OK
	          response.getWriter().write( "{\"success\": 1, \"message\":\"上传成功\",\"url\":\"/pic/user/" + attach.getOriginalFilename() + "\"}" );
	      } catch (Exception e) {
	          try {
	              response.getWriter().write( "{\"success\":0}" );
	          } catch (IOException e1) {
	              e1.printStackTrace();
	          }
	      }
	  }
	
	@RequestMapping("addArticle")
	public ModelAndView addArticle(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		Article article=new Article();
		System.out.println(parameter);
		
		HttpSession session = request.getSession();
		User loginUser=(User) session.getAttribute("loginUser");
		if(loginUser==null)
		{
			request.getRequestDispatcher("login").forward(request, response);
			return null;
		}
		
		article.setArticleId(UUIDUtils.getUUID());
		article.setArticleTitle(Maps.getString(parameter, "articleTitle"));
		article.setContent(Maps.getString(parameter, "editorhtml"));
		article.setAuthor(loginUser.getUserId());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		article.setDate(df.format(new Date()));
		article.setTag(Maps.getString(parameter, "bookmarks"));
		if(Maps.getString(parameter, "type")!=null && Maps.getString(parameter, "type").equals("on"))
		{
			article.setType(1);
		}
		else
		{
			article.setType(0);
		}
		
		Pattern p = Pattern.compile("<img src=(.*) alt");  
		Matcher m = p.matcher(Maps.getString(parameter, "editorhtml"));  
		while(m.find()){  
		/*System.out.println(m.group(1));  */
			article.setArticleImg("http://localhost"+m.group(1).substring(1,m.group(1).length()-1));
			break;
		}
		
		String articleText=Maps.getString(parameter, "articleText");
		articleText.replaceAll("\r|\n", "");
		article.setArticleInfo(articleText.substring(0, 90)+"...");
		
		boolean b = articleService.addArticle(article);
		
		if(b==true)
		{
			return new ModelAndView("write/success");
		}
		else
		{
			return new ModelAndView("write/error");
		}
		
		
	}
}
