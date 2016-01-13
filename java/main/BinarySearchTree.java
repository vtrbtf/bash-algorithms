

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class BinarySearchTree {
	
	private List<Integer> bst = new ArrayList<>();
	
	public void insert(int e){
		if (contains(e)) {
			bst.add(e);
			Collections.sort(bst);
		}				
	}
	
	public int root(){
		return bst.get(rootIndex());
	}
	
	private int rootIndex(){
		return isOdd() ? halfSize() + 1 : halfSize();
	}
	
	private int midpoint(List<Integer> l){
		return isOdd(l) ? halfSize(l) + 1 : halfSize(l);
	}
	
	private int midpointIndex(List<Integer> l){
		return midpoint(l) - 1;
	}
	
	public boolean contains(int e){		
		List<Integer> searchTree = bst;
		int upperBound = bst.size();
		int lowerBound = 0;		
		
		while (lowerBound < upperBound) {
			searchTree = searchTree.subList(lowerBound, upperBound);
			Integer middleman = searchTree.get(midpointIndex(searchTree));
			if (middleman.equals(e)) {
				return true;
			} else {
				if (e > middleman) {
					lowerBound = middleman + 1;					
				} else {
					upperBound = middleman - 1;
				}
			}
		}		
		return false;
	}
	
	public void remove(int e){
		bst.remove(e);
	}
	
	public int size(){
		return bst.size();
	}
		
	private boolean isOdd() {
		return isOdd(bst);
	}
	
	private boolean isOdd(List<Integer> l) {
		return halfSize(l) != 0;
	}

	private int halfSize() {
		return halfSize(bst);
	}
	
	private int halfSize(List<Integer> l) {
		return l.size()/2;
	}
}
