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
}
