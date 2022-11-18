
import java.io.FileReader;
import java.io.IOException;



public class Main {

	public static void main(String[] args) throws Exception {
		new Parser(new BasicMarkdown(new FileReader("src/program.txt"))).parse();
	}

}
