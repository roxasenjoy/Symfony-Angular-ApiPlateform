import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthModule } from './auth/auth.module';
import { ListGroupComponent } from './user/list-group/list-group.component';
import { Error404Component } from './error404/error404.component';
import {AuthGuard} from './auth/auth.guard';

const routes: Routes = [
  {path: '/groups', redirectTo: 'localhost:8000/api/groups', pathMatch: 'full' },
  
  {path: '', redirectTo: '', pathMatch: 'full' },

  {
    path: "groups",
    component: ListGroupComponent,
    canActivate: [AuthGuard]
  },
  
  {path: '**', component: Error404Component },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes),
    AuthModule,
    CommonModule
  ],
  exports: [RouterModule],
  declarations: [Error404Component]
})
export class AppRoutingModule {}
