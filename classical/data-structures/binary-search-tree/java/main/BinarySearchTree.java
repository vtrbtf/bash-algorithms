

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class BinarySearchTree<T extends Comparable<T>> {
	
	private List<T> bst = new ArrayList<>();
	
	private Comparator<T> customComparator = Comparator.naturalOrder();
	
	public BinarySearchTree(Comparator<T> customComparator) {
		this.customComparator = customComparator;
	}
	
	public void insert(T e){
		if (contains(e)) {
			bst.add(e);
			Collections.sort(bst, customComparator);
		}				
	}
	
	public T root(){
		return bst.get(rootIndex());
	}
	
	private int rootIndex(){
		return isOdd() ? halfSize() + 1 : halfSize();
	}
	
	private int midpoint(List<T> l){
		return isOdd(l) ? halfSize(l) + 1 : halfSize(l);
	}
	
	private int midpointIndex(List<T> l){
		return midpoint(l) - 1;
	}
	
	
	public boolean contains(T e){		
		List<T> searchTree = bst;
		int upperBound = bst.size() - 1;
		int lowerBound = 0;		
		
		while (lowerBound < upperBound) {
			if (e.equals(searchTree.get(midpointIndex(searchTree)))) {
				return true;
			} else {
				if (customComparator.) {
					
				}
				
				
			}
		}
	}
	
	public void remove(T e){
		bst.remove(e);
	}
	
	public int size(){
		return bst.size();
	}
	
	public List<T> childs(T e){
		
	}
	
	
	private boolean isOdd() {
		return isOdd(bst);
	}
	
	private boolean isOdd(List<T> l) {
		return halfSize(l) != 0;
	}

	private int halfSize() {
		return halfSize(bst);
	}
	
	private int halfSize(List<T> l) {
		return l.size()/2;
	}
}
