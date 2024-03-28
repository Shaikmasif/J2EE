import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class Demo {
	public static void main(String[] args) throws InterruptedException {
		WebDriver driver = new ChromeDriver();
		driver.get("https://iamsandesh23.github.io/selenium.github.io/");
		driver.manage().window().maximize();
		
//		WebElement textBox = driver.findElement(By.name("q"));
//		Thread.sleep(3000);
//		textBox.sendKeys("abc");
		
//		WebElement box = driver.findElement(By.id("textbox1"));
//		Thread.sleep(2000);
//		box.clear();
		
//		String title = driver.getTitle();
//		System.out.println(title);
//		String url = driver.getCurrentUrl();
//		System.out.println(url);
		
//		WebElement link = driver.findElement(By.linkText("onlytestingblog"));
//		link.click();
		
//		WebElement partialLink = driver.findElement(By.partialLinkText("only"));
//		partialLink.click();
		
//		String attribute = driver.findElement(By.xpath("//img[@src='pic.png']")).getAttribute("height");
//		System.out.println(attribute);
		
//		WebElement pageTitle = driver.findElement(By.className("title"));
//		System.out.println(pageTitle.isDisplayed());
		
//		WebElement enabled = driver.findElement(By.xpath("//input[@value='Car']"));
//		System.out.println(enabled.isEnabled());
		
//		WebElement selected = driver.findElement(By.xpath("//input[@value='Book']"));
//		System.out.println(selected.isSelected());
		
//		driver.findElement(By.partialLinkText("only")).click();
//		driver.navigate().back();
		
//		driver.manage().window().fullscreen();
		
//		WebElement popUp = driver.findElement(By.partialLinkText("Open a"));
//		popUp.click();
//		Set<String> windows = driver.getWindowHandles();
//		Iterator itr = windows.iterator();
//		while(itr.hasNext()) {
//			String win = (String) itr.next();
//			System.out.println(win);
//		}
//		String mainWindow = (String) itr.next();
//		String childWindow = (String) itr.next();
//		driver.switchTo().window(childWindow);
//		String gotText = driver.findElement(By.xpath("//h2")).getText();
//		System.out.println(gotText);
//		
//		
//		Thread.sleep(1000);
//		driver.quit();
		
//		WebElement drop = driver.findElement(By.id("drop1"));
//		Select select = new Select(drop);
//		select.selectByVisibleText("doc 1");
		
//		WebElement dropbtn = driver.findElement(By.className("dropbtn"));
//		dropbtn.click();
//		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(3));
//		driver.findElement(By.xpath("//a[text()='Facebook']")).click();
		
//		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(4));
//		WebElement facebook = wait.until(ExpectedConditions.visibilityOfElementLocated(By.linkText("Facebook")));
//		facebook.click();
		
//		WebElement alertbtn = driver.findElement(By.id("alert1"));
//		alertbtn.click();
//		Alert alert = driver.switchTo().alert();
//		alert.accept();
		
//		WebElement dropdown = driver.findElement(By.id("drop1"));
//		dropdown.click();
//		Select select = new Select(dropdown);
//		select.selectByVisibleText("doc 3");
		
		WebElement multi = driver.findElement(By.id("multiselect1"));
		Select select = new Select(multi);
		select.selectByIndex(0);
		select.selectByIndex(1);
		
		
		
		Thread.sleep(3000);
		driver.quit();
		
		
	}
}
