package com.bookforest.dao.article;

import java.util.List;

import com.bookforest.bean.Article;

public interface ArticleDao {

	//插入文章
	public int addArticle(Article article);
	
	//按照类型查询文章 所有
	public List<Article> getArticleAllByType(Integer type);
	
	//根据文章ID查找
	public Article getArticleById(String articleId);
}
