import java.io.*;
import java.util.*;

public class Main {
    private static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    private static BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

    public static void main(String[] args) throws IOException {
        List<Character> doc = new ArrayList<>();

        char[] s = br.readLine().toCharArray();
        char[] token = br.readLine().toCharArray();
        for (int i = 0; i < s.length; i++) doc.add(s[i]);

        int count = 0;
        for (int i = 0, j = 0; i < doc.size(); ) {
            if (doc.get(i) != token[j]) {
                i++;
                j = 0;
                continue;
            }
            if (j == token.length - 1) {
                count++;
                i++;
                j = 0;
                continue;
            }
            i++;
            j++;
        }

        System.out.println(count);
    }
}