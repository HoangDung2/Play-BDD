import { Given, When, Then, setDefaultTimeout } from "@cucumber/cucumber";
import { Page, expect, chromium, Browser, test } from "@playwright/test";
import { Admin } from ".../../../utils/app";
// import { pageFixture } from "../../hooks/pageFixture";
setDefaultTimeout(60 * 1000 * 7);
let browser: Browser;
let page: Page;
Given('User navigates to the application', async function () {
    browser = await chromium.launch({headless:false});
    page = await browser.newPage();
    await page.goto("http://localhost:3002/signin");;
});


Given('Login User Name', async function () {
    let admin = new Admin(page);
    await admin.LoginPage.login("khanhkhum113", "1233211");
});


Then('Verify Login Success', async function () {
    let admin = new Admin(page);
    await admin.LoginPage.assertionLoginPage.allElementExist();
});


Then('Click Notification', async function () {
    let admin = new Admin(page);
    await admin.AssertionNotification.clickNotification();
});

Then('Verify Page Notification', async function () {
    let admin = new Admin(page);
    await admin.AssertionNotification.VerifyPageNotification();
});


Then('Delete all Notification', async function () {
    let admin = new Admin(page);
    await admin.AssertionNotification.DeleteNotification.deleteNotification();
});


Then('Verify Delete Success', async function () {
    let admin = new Admin(page);
    await admin.AssertionNotification.verifyDeleteSuccess();
});