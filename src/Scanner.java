
import java.io.File;
import java.io.FileReader;

public class Scanner {
	public static void main(String[] args) throws Exception {
		jflex.Main.generate(new File("src/markdown.jflex"));
		
	}
}
