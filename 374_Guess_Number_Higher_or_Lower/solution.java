/* The guess API is defined in the parent class GuessGame.
   @param num, your guess
   @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
      int guess(int num); */

public class Solution extends GuessGame {
    public int guessNumber(int n) {
        int min = 1, max = n, mid=0, result=2;
        while (result!=0) {
            mid = (max-min)/2+min;
            result = guess(mid);
            if(result==-1) {
                max = mid-1;
            } else if(result==1) {
                min = mid+1;
            }
        }
        return mid;
    }
}