package com.english.tutor;
import java.io.*;
import java.util.*;

import javax.servlet.http.HttpSession;

public class EnglishService 
{
	private HttpSession session;
	private String fpath = "C:/EclipsePractice/list_vocab.ser";
	
	public EnglishService(){}

	public List<Vocab> extractEachV(Vocab vs)
	{
		List<Vocab> list = deserialize();
		String[] words = vs.getWords().split("\\n");
		String[] defs = vs.getDefs().split("\\n");
		
		for(int i=0; i<words.length; i++)
		{
			Vocab v = new Vocab();
			v.setWord(words[i]);
			v.setDef(defs[i]);
			list.add(v);
		}
		serialize(list);
		return list;
	}
	
	public Vocab randomWords()
	{
		List<Vocab> list = deserialize();
		Random rd = new Random();
		int i = rd.nextInt(list.size()-1);
		return list.get(i);
	}
	
	public List<Vocab> randomWordsArray()
	{
		List<Vocab> list = deserialize();
		Collections.shuffle(list);
		System.out.println(list.get(0));
		return list;
	}
	
	private List<Vocab> deserialize()
	{
		
		File f = new File(fpath);
		if(!f.exists()) 
		{
			return new ArrayList<>();
		}
		try {
				ObjectInputStream ois = new ObjectInputStream(new FileInputStream(fpath));
				return (List<Vocab>) ois.readObject();
			} catch (Exception e) {
				e.printStackTrace();
			} 
		
		return null;
	}
	
	private boolean serialize(List<Vocab> list)
	{
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(fpath));
			oos.writeObject(list);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return false;
	}
	public HttpSession getSession() {
		return session;
	}

	public void setSession(HttpSession session) {
		this.session = session;
	}

	public String getFpath() {
		return fpath;
	}

	public void setFpath(String fpath) {
		this.fpath = fpath;
	}
	
	
}
