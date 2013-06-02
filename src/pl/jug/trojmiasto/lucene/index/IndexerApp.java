package pl.jug.trojmiasto.lucene.index;

public class IndexerApp {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		Indexer indexer = new Indexer();
		
		indexer.index(5);
//		indexer.indexAll();
		
		
		
//		indexer.startIndexing();
		
//		indexer.stopIndexing();
		
	}

}
