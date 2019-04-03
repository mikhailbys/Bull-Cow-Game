
package com.numbers;

/**
 *
 * @author bystr
 */
public class CheckVar {
    // compare secret number and our guess
    public String check(int gen,int var){
        // variants to string
        String s1 = Integer.toString(gen);
        String s2 = Integer.toString(var);
        // string to arrays
        char[] array1 = s1. toCharArray();
        char[] array2 = s2. toCharArray();
        // compare
        int bullCount = 0;
        int cowCount = 0;
        
        for (int i = 0; i < array1.length; i++) {
            for (int j = 0; j < array2.length; j++) {
                    // bull
                    if(array1[i] == array2[j] && i == j){
                        bullCount++;
                    }
                    // cow
                    if(array1[i] == array2[j] && i != j){
                        cowCount++; 
                    }
                }
            }

        return bullCount + "B" + cowCount + "C";       
    }
}