/* Author: Trumpetarn
 * Date: 2015-04-21
 */

/* Project Euler 35
 * Circular Primes
 * Find the number of circular primes exsisting below 1 000 000
 * 
 * https://projecteuler.net/problem=35
 */
import java.util.*;
import java.math.*;

public class CircularPrimes {
	List<Integer> primes = new ArrayList<Integer>();
	List<Integer> circPrimes = new ArrayList<Integer>();
	
	public CircularPrimes(int n){
		this.generatePrimes(n);
		for(int i: primes){
			
		}
	}
	
	private void generatePrimes(int n){
		if (n>=2) {
			this.primes.add(2);
		}
		for (int i=3; i<=n; i++){
			if (isPrime(i)){
				this.primes.add(i);
			}
		}
		return;
	}
	
	private boolean isPrime(int n){
	    if (n%2==0) 
	    	return false;
	    //if not, then just check the odds
	    for(int i=3;i*i<=n;i+=2) {
	        if(n%i==0)
	            return false;
	    }
	    return true;
	}
	
	private int[] permutations(int n){
		int numOfPerms = factorial(numOfDigits(n));
		int [] perms = new int[numOfPerms];
		String number = String.valueOf(n);
		for (int i=0; i<numOfPerms; i++){
			perms[i] = Integer.decode(number);
		}
		return perms;
	}
	
	private int numOfDigits(int n){
		int length = String.valueOf(n).length();
		return length;
	}
	
	private int factorial(int n) {
        int fact = 1; // this  will be the result
        for (int i = 1; i <= n; i++) {
            fact *= i;
        }
        return fact;
    }
}
