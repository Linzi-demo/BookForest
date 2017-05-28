package com.bookforest.dao.article;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bookforest.bean.Article;

public interface ArticleDao {

	//插入文章
	public int addArticle(Article article);
	
	//按照类型查询文章 所有
	public List<Article> getArticleAllByType(Integer type);
	
	//根据文章ID查找
	public Article getArticleById(String articleId);
	
	//根据作者id查找文章
	public List<Article> getArticleByAuthor(String userId);
	
	//根据作者id查找文章全部信息
	public List<Article> getArticleMoreByAuthor(String userId);
	
	//根据板块查找文章
	public List<Article> getArticleByPlateId(@Param("plateId")String plateId,@Param("state")Integer state,@Param("recommend")Integer recommend);
	
	//根据用户ID查文章总数
	public Integer getArticleNum(String userId);
}
