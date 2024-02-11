package tests;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.After;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.junit.Assert.*;

public class StepDefinitions {
    WebDriver browser = new ChromeDriver();


    @Given("I have successfully launched Contact Us page")
    public void i_have_successfully_launched_contact_us_page() {
        System.setProperty("webdriver.chrome.driver", "/Users/humbertogoncalves/Drivers/chromedriver");
        browser.get("http://webdriveruniversity.com/Contact-Us/contactus.html");
        browser.findElement(By.id("contact_me"));
    }

    @Given("I entered a first name {string}")
    public void i_entered_a_firstName(String firstName) {
        browser.findElement(By.name("first_name")).sendKeys(firstName);
    }

    @Given("I entered a last name {string}")
    public void i_entered_a_lastName(String lastName) {
        browser.findElement(By.name("last_name")).sendKeys(lastName);
    }

    @Given("I entered an email {string}")
    public void i_entered_an_email(String email) {
        browser.findElement(By.name("email")).sendKeys(email);
    }

    @Given("I entered a comment {string}")
    public void i_entered_a_comment(String comment) {
        browser.findElement(By.name("message")).sendKeys(comment);
    }

    @When("I click submit button")
    public void i_click_submit_button() {
        browser.findElement(By.xpath("/html/body/div[1]/div/div/section/div/div[2]/form/div/input[2]")).click();
    }

    @Then("I will see the success message")
    public void i_will_see_the_success_message() {
        WebElement response = browser.findElement(By.xpath("//*[@id=\"contact_reply\"]/h1"));
        String responseMessage = response.getText();
        assertEquals("Thank You for your Message!",responseMessage);
    }

    @Then("I get an all fields are required error message")
    public void i_get_an_all_fields_are_required_error_message() {
        WebElement errorElement = browser.findElement(By.xpath("/html/body"));
        String message = errorElement.getText();
        assertTrue(message.contains("Error: all fields are required"));
    }

    @Then("I get invalid email address error message")
    public void i_get_invalid_email_address_error_message() {
        WebElement errorElement = browser.findElement(By.xpath("/html/body"));
        String message = errorElement.getText();
        assertTrue(message.contains("Error: Invalid email address"));
    }

    @When("I click reset button")
    public void i_click_reset_button() {
        browser.findElement(By.xpath("/html/body/div[1]/div/div/section/div/div[2]/form/div/input[1]")).click();
    }

    @Then("all fields are reset")
    public void all_fields_are_reset() {
        String[] fieldNames = {"first_name", "last_name", "email", "message"};

        for (String fieldName : fieldNames) {
            WebElement field = browser.findElement(By.name(fieldName));
            String fieldValue = field.getAttribute("value");
            assertEquals("", fieldValue);
        }
    }

    @After
    public void tearDown(){
        browser.quit();
    }
    }

