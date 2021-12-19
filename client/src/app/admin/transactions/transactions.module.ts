import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';
import { TransactionsRoutingModule } from './transactions-routing.module';
import { ListComponent } from './list.component';



@NgModule({
  imports: [
    CommonModule,
    ReactiveFormsModule,
    TransactionsRoutingModule
  ],
  declarations: [
    ListComponent,
]
})
export class TransactionsModule { }
