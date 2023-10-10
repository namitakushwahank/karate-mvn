import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class testRunner {

    @Test
    public void karateTestRunner() {
        int threadCount = Integer.parseInt(System.getProperty("karate.threadCount", "5"));
        Results results = Runner
                .path("src/test/java/features")
                .parallel(threadCount);
    }
}
