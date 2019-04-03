
package com.numbers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class RandomGenerator {
    
    Random rndm = new Random();

    public int generate() {
        List<Integer> numbers = new ArrayList<Integer>();
        for(int i = 1; i < 10; i++){
            numbers.add(i);
        }
        Collections.shuffle(numbers);
        String result = "";
        for(int i = 0; i < 4; i++){
            result += numbers.get(i).toString();
        } 
        return Integer.parseInt(result);
    }  
}
