// Java 9 test code transcribed from
// https://employment.en-japan.com/engineerhub/entry/2019/04/25/103000

import java.util.List;
import java.util.stream.Collectors;

public class HelloModernJava {
    public static void main(String[] args) {
	List<Integer> numbers = List.of(3, 1, -4, 1, -5, 9, -2, 6, 5, 3, 5);
	List<Integer> sorted = numbers.stream()
	    .sorted((n1, n2) -> n2 - n1)
	    .collect(Collectors.toList());
	System.out.println(numbers);
	System.out.println(sorted);
    }
}

