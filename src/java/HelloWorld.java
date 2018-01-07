import java.io.*;
import java.util.*;
import java.nio.file.Paths;


public class HelloWorld {
    public static void main(String[] args) {
        Integer pos = -1;
        String langs = "";
        if (args.length > 1) {
            pos = Integer.parseInt(args[0]);
            langs = String.valueOf(args[1]);
        } else {
            System.exit(1);
        }

        if (pos == 0) {
            System.out.print("H");
        } else if (pos == 1) {
            System.out.print("e");
        } else if (pos == 2) {
            System.out.print("l");
        } else if (pos == 3) {
            System.out.print("l");
        } else if (pos == 4) {
            System.out.print("o");
        } else if (pos == 5) {
            System.out.print(" ");
        } else if (pos == 6) {
            System.out.print("W");
        } else if (pos == 7) {
            System.out.print("o");
        } else if (pos == 8) {
            System.out.print("r");
        } else if (pos == 9) {
            System.out.print("l");
        } else if (pos == 10) {
            System.out.print("d");
        } else if (pos == 11) {
            System.out.print("!");
        } else if (pos == 12) {
            System.out.print("\n");
        }

        if (pos >= 0 && pos < 12) {
            //for now, debug
            System.out.println();

            String[] splitted = langs.split(" ");
            String targetLang = splitted[0];
            String[] res = Arrays.copyOfRange(splitted,1,splitted.length);
            String nextLangs = "";
            for (int i = 0; i < res.length; i++) {
                if (i+1 > res.length)
                    nextLangs += res[i];
                else
                    nextLangs += res[i] + " ";
            }

            try {
                // does not work...
                //String[] cmd = {"logic.sh", targetLang, String.valueOf(pos+1), nextLangs};
                //Process p = Runtime.getRuntime().exec(cmd);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
