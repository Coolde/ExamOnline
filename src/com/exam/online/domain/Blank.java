package com.exam.online.domain;

import java.util.Date;

/**
 * 填空
 * @author Administrator
 */
public class Blank {
	//天空id
	private Integer id;
	//题号
	private String number;
	//问题
	private String question;
	//答案
	private String answer;
	//科目
	private String subject;
	//作者
	private String author;
	//注册日期
	private Date regDate = new Date();
	//难易程度
	private Integer difficult;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Integer getDifficult() {
		return difficult;
	}
	public void setDifficult(Integer difficult) {
		this.difficult = difficult;
	}
}
