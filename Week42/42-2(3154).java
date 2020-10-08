import java.io.*;
import java.util.StringTokenizer;

public class Main {
    private static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

    public static void main(String[] args) throws IOException {
        int[][] dial = {{4, 2}, {1, 1}, {2, 1}, {3, 1}, {1, 2}, {2, 2}, {3, 2}, {1, 3}, {2, 3}, {3, 3}};

        StringTokenizer st = new StringTokenizer(br.readLine());
        int time = Integer.parseInt(st.nextToken(":"));
        int minute = Integer.parseInt(st.nextToken());

        int[] digit = new int[4];
        for (int i = 0; i < 2; i++) {
            if (i == 0 && time < 10) digit[0] = 0;

            digit[1 - i] = time % 10;
            digit[3 - i] = minute % 10;

            time /= 10;
            minute /= 10;
        }
        int effort = Integer.MAX_VALUE;

        System.out.print(digit[0] + "" + digit[1] + "" + digit[2] + "" + digit[3]);
//        System.out.print(getEffort(dial[2], dial[2], dial[4], dial[5]));
    }

    public static int getEffort(int[] dial1, int[] dial2, int[] dial3, int[] dial4) {
        int sum1 = Math.abs(dial1[0] - dial2[0]) + Math.abs(dial1[1] - dial2[1]);
        int sum2 = Math.abs(dial2[0] - dial3[0]) + Math.abs(dial2[1] - dial3[1]);
        int sum3 = Math.abs(dial3[0] - dial4[0]) + Math.abs(dial3[1] - dial4[1]);
        return sum1 + sum2 + sum3;
    }
}