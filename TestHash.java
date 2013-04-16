package tp2compile;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;

public class TestHash {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Hashtable<String, Integer> h = new Hashtable<>();
		h.put("bob", 3);
		h.put("bob", h.get("bob") + 3);
		System.out.println(h.get("bob"));
	}

}
