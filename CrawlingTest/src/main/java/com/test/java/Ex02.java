package com.test.java;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Ex02 {
	
public static void main(String[] args) {
	
		try {
			String url = "https://serieson.naver.com/v3/movie/ranking/monthly";
			
			//접속해서 읽어온 문서 내용을 다 담고있는 참조
			Document document = Jsoup.connect(url).get();
			
//			System.out.println(document.html());
			
//			Elements list = document.select(".Title_title__s9o0D");
//			System.out.println(list.size());
//			list.forEach(title -> System.out.println(title.text()));
			
			
//			Element ol = document.selectFirst(".RankingList_ranking_list__N4QsH");
			
			Elements list = document.select(".RankingList_ranking_list__N4QsH > li");
			
//			System.out.println(list.size());
			
			
			for(Element movie : list) {
				String title = movie.selectFirst(".Title_title__s9o0D").text();
				
				Elements nlist = movie.select("a > div > em > span > span");
				String no = "";
				
				
				System.out.println();
				for (Element nitem : nlist) {
					no += nitem.text();
				}
				System.out.println(no + ":" + title);
				
				String href = movie.firstElementChild().attr("href");
				System.out.println("https://serieson.naver.com" + href);
				
				String src = movie.selectFirst("img").attr("src");
				System.out.println(src);
				
			}
			
		} catch (Exception e) {
			
			System.out.println("Ex02.main");
			
			e.printStackTrace();
		}
		
	}//main
}
