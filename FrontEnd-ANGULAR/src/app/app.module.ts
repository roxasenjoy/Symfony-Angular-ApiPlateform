import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './navbar/navbar.component';
import {ListGroupComponent} from './group/list-group/list-group.component';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {HttpClientModule} from '@angular/common/http';
import {MAT_DIALOG_DATA, MatDialogModule, MatDialogRef} from '@angular/material/dialog';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatIconModule} from '@angular/material/icon';
import {NgxPaginationModule} from 'ngx-pagination';
import {MatCardModule} from '@angular/material/card';
import {DatePipe} from '@angular/common';
import {ToastrModule} from 'ngx-toastr';
import { ImportComponent } from './import/import.component';
import { AddGroupComponent } from './group/add-group/add-group.component';

const MATERIAL_MODULES = [MatToolbarModule,
  MatIconModule
];
@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    ImportComponent,
    ListGroupComponent,
    AddGroupComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    ToastrModule.forRoot(),
    FormsModule,
    HttpClientModule,
    MatDialogModule,
    MatToolbarModule,
    MatIconModule,
    NgxPaginationModule,
    MatCardModule,
  ],
  exports : MATERIAL_MODULES,
  providers: [DatePipe,{ provide: MAT_DIALOG_DATA, useValue: {} ,},
    { provide: MatDialogRef, useValue: {} }],
  bootstrap: [AppComponent]
})
export class AppModule {}
