import java.util.Arrays;

public class Main {
    public static void main(String[] args) {

        int[] Array = {1,4,5,3,2};

        int result = somaArray(Array, 0);
        System.out.println("Array somados:" + Arrays.toString(Array));
        System.out.println("Soma dos números: " + result);
        System.out.println("Número máximo: " + maiorNum(Array, 0, Array.length-1));
    }

    static int somaArray(int[] Array, int x){
        if (x < Array.length)
            return Array[x] + somaArray(Array, x + 1);
        else
            return 0;
    }

    static int maiorNum(int[] Array, int start, int end) {
        if (start == end)
            return Array[start];

        int max = maiorNum(Array, start+1, end);
        return Math.max(Array[start], max);
    }
}
