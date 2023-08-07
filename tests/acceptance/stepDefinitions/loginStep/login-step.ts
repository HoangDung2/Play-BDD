import { Given, When, Then,setDefaultTimeout } from "@cucumber/cucumber";
import { Page, expect, chromium, Browser, test} from "@playwright/test";
import { Admin } from ".../../../utils/app";
setDefaultTimeout(60*1000*5) // set toan cuc
let browser: Browser;
let page: Page;
Given('User navigates to the application ', async function (url:string) {
    browser = await chromium.launch({headless:false});
    page = await browser.newPage();
    if(url='khanh'){
      await page.goto("http://localhost:3002/signin");;
    } else {
      await page.goto("http://localhost:3002/signin");
    }
    
});
Given('User enter the username as {string}', async function (username) {
  let admin = new Admin(page);
  await admin.LoginPage.fillUsername(username);
});
Then('Verify username as {string} & passworld all Fill as {string}', async function (username,password) {
  let admin = new Admin(page);
  await admin.LoginPage.verifyUserPasswordFill(username,password);
});

Given('User enter the password as {string}', async function (password) {
  let admin = new Admin(page);
  await admin.LoginPage.fillPassword(password);
});

When('User click on the login button', async function () {
  let admin = new Admin(page);
  await admin.LoginPage.clickSigup();
});

Then('Login should be success', async function () {
  let admin = new Admin(page);
  await admin.LoginPage.assertionLoginPage.allElementExist();
  await admin.SideMenu.assertionsAccountExist();
});
Then('Login should be failed notification username & password is invalid', async function () {
  let admin = new Admin(page);
  await admin.LoginPage.assertionLoginPage.requiredInvalid();
});
Then('Verify username unfill and password fill and Login should be failed', async function () {
  let admin = new Admin(page);
  await admin.LoginPage.assertionLoginPage.requiredUser();
});
When('Click Check Remenber', async function () {
  let admin = new Admin(page);
  await admin.LoginPage.clickCheck();
});
Then('Login should be failed notification Password must be more four characters', async function () {
  let admin = new Admin(page);
  await admin.LoginPage.assertionLoginPage.requidPass();
});

Given('User enter the username', async  (dataTable)=> {
  let admin = new Admin(page);
  const credentials = dataTable.rows();
  const username = credentials[0][0];
  await admin.LoginPage.fillUsername(username);
});

Given('User enter the password', async (dataTable)=> {
  let admin = new Admin(page);
  const credentials = dataTable.rows();
  const password = credentials[0][1];
  await admin.LoginPage.fillPassword(password);
});


Then('Verify username {string} & passworld all Fill as {string}', async function (string, string2) {
  let admin = new Admin(page);
  await admin.LoginPage.verifyUserPasswordFill(string,string2);
});

