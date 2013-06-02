package pl.jug.trojmiasto.lucene.facade;

import java.util.LinkedList;
import java.util.List;

import pl.jug.trojmiasto.lucene.model.Article;

public class SearchFacade {

	private List<Article> results = new LinkedList<Article>();

	public List<Article> results(String query) {

		if (query.length() == 1) {
			results.add(new Article("tytul1", "tresc1"));

		} else if (query.length() == 2) {
			results.add(new Article("tytul1", "tresc1"));
			results.add(new Article("tytul2", "aaa bbb ccc dddd eee fff"));

		} else if (query.length() >= 3){
			results.add(new Article("tytul1", "tresc1"));
			results.add(new Article("tytul2", "aaa bbb ccc dddd eee fff"));
			results.add(new Article("tytul3", "jakas tresc artykulu"));
		}

		return results;
	}

}
