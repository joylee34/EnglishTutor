package com.english.tutor;

import java.io.Serializable;

public class Vocab implements Serializable
{
	private String words;
	private String defs;
	
	private String word;
	private String def;
	
	public Vocab() {}

	public Vocab(String word, String def) {
		super();
		this.word = word;
		this.def = def;
	}

	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return word;
	}

	public String getWords() {
		return words;
	}

	public void setWords(String words) {
		this.words = words;
	}

	public String getDefs() {
		return defs;
	}

	public void setDefs(String defs) {
		this.defs = defs;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getDef() {
		return def;
	}

	public void setDef(String def) {
		this.def = def;
	}
	
	
}
