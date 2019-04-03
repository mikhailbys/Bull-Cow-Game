
package com.numbers;

/**
 *
 * @author bystr
 */
public class ResultCounter {
    //count nuber of "guesses"
    public int tryCounter(int i){
        i++;
        return i;
    }
    //appending answers to string
    public String stringConcatenator(String s,String ans){
        if(s == ""){
        s = s + ans; 
        }else{
        s = s + " , " + ans;
        }
        return s;
    }
        
}