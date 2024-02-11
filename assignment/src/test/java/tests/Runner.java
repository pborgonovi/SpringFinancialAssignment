package tests;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/java/tests/resources/test_scenarios.feature",
        glue = "tests",
        plugin = "pretty",
        monochrome = true
)
public class Runner {

}
