import { Component } from '@angular/core';

import { AccountService } from '@app/_services';

@Component({ templateUrl: 'home.component.html' })
export class HomeComponent {
    account = this.accountService.accountValue;
    users: any;
    transactionTotal: number;
    role = 'admin';

    constructor(private accountService: AccountService) { }
}
