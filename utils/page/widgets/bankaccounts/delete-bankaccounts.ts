import { Page, Locator, expect } from '@playwright/test';
export default class DeleteBankAccount{
    readonly page:Page;
    readonly deleteBtn:Locator;
    constructor(page:Page){
        this.page=page;
        this.deleteBtn=page.locator("button.MuiButton-sizeLarge>span.MuiButton-label");
    }
    async deleteAccount(){  
        const list = this.deleteBtn.all();
        let count=0;
        for(const i of await list ){
            await i.nth(count).click();
            count++;
        }
    await expect(this.deleteBtn).toBeHidden();
    }
}