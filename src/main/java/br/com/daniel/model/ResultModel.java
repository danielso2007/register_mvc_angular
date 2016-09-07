package br.com.daniel.model;

import org.springframework.stereotype.Component;

@Component
public class ResultModel {

	private int id;
	private String msg;

	public ResultModel() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}
