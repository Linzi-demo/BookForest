package com.bookforest.service.article;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforest.bean.Article;
import com.bookforest.dao.article.ArticleDao;

@Service
public class ArticleService {

	
	@Autowired
	ArticleDao articleDao;
	
	public boolean addArticle(Article article) 
	{
		int i=articleDao.addArticle(article);
		
		return i>0?true :false;
	}
	
	public List<Article> getArticleByType(Integer type)
	{
		List<Article> articleAllByType = articleDao.getArticleAllByType(type);
		
		return articleAllByType;
	}
	
	public Article getArticleById(String articleId)
	{
		Article article = articleDao.getArticleById(articleId);
		
		return article;
	}
	
	public List<Article> getArticleByAuthor(String userId)
	{
		List<Article> articleByAuthor = articleDao.getArticleByAuthor(userId);
		
		return articleByAuthor;
	}
	
	public String getArticleByAuthorToString(String userId)
	{
		List<Article> articleByAuthor = articleDao.getArticleByAuthor(userId);
		String result="";
		for(Article a:articleByAuthor)
		{
			result=result+
						"<li><span class=\"article-title\">"
								+a.getArticleTitle()
								+"</span><button id=\""+
									a.getArticleId()
								+"\" onclick=\"sub('"+
									a.getArticleId()
								+"')\" class=\"btn btn-success\" data-toggle=\"tooltip\" data-placement=\"right\" >投稿</button></li>";
			
		}
		
		return result;
	}
	
	public List<Article> getPlateArticleRec(String plateId)
	{
		List<Article> articles = articleDao.getArticleByPlateId(plateId, 1, 1);
		
		return articles;
	}
	
	public List<Article> getArticleMoreByAuthor(String userId)
	{
		return articleDao.getArticleMoreByAuthor(userId);
	}
}
