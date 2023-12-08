package Setep_defination;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class multipaldata_test {
	WebDriver driver;
	@Given("Open the browser and go to the login page of order placing site")
	public void open_the_browser_and_go_to_the_login_page_of_order_placing_site() {
		WebDriverManager.chromedriver().setup();
		driver=new ChromeDriver();
		driver.get("https://www.saucedemo.com/v1/");
	}
	@When("user enters a valid username {string}")
	public void user_enters_a_valid_username(String username) {
		driver.findElement(By.xpath("//input[@class='form_input']")).sendKeys(username);
	}

	@When("user enters a valid password {string}")
	public void user_enters_a_valid_password(String password) {
		driver.findElement(By.xpath("//input[@type='password']")).sendKeys(password);
	}

	@When("user click on login button")
	public void user_click_on_login_button() {
		driver.findElement(By.xpath("//input[@class='btn_action']")).click();
	}

	@Then("user should see the  {string}")
	public void user_should_see_the(String string) {
		String txt=driver.findElement(By.xpath("//div[@class='app_logo']")).getText();
		if(txt.equalsIgnoreCase("swaglabs")) {
			System.out.print("Homepage is displayed");
		}
	}
	@When("user enters a invalid username {string}")
	public void user_enters_a_invalid_username(String string) {
		driver.findElement(By.xpath("//input[@class='form_input']")).sendKeys("affgah_hfs");
	    
	}
	@When("user enters a invalid password {string}")
	public void user_enters_a_invalid_password(String string) {
		driver.findElement(By.xpath("//input[@type='password']")).sendKeys("yhgstafga_scerate");
	}
	
	@Then("user should see the user name as {string}")
	public void user_should_see_the_user_name_as(String string) {
		String txt=driver.findElement(By.xpath("//div[@class='app_logo']")).getText();
		if(txt.equalsIgnoreCase("swaglabs")) {
			System.out.print("Homepage is not displayed");
		} 
	}




}
