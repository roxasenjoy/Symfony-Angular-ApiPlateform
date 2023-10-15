import { Component, OnInit,Inject} from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { Router } from '@angular/router';
import { FormBuilder } from '@angular/forms';
import {MatDialog, MatDialogConfig,MatDialogRef,MAT_DIALOG_DATA  } from '@angular/material/dialog';
import { GroupService } from 'src/app/service/group.service';
import {Groups} from "../../model/Groups";
import {AddGroupComponent} from "../add-group/add-group.component";


@Component({
  selector: 'app-list-group',
  templateUrl: './list-group.component.html',
})
export class ListGroupComponent implements OnInit {

  constructor(
              public crudApi: GroupService,
              public toastr: ToastrService,
              private router: Router,
              public fb: FormBuilder,
              private matDialog: MatDialog,
              @Inject(MAT_DIALOG_DATA) public data: any,
              public dialogRef:MatDialogRef<AddGroupComponent>,
  ) { }

  ngOnInit() {
    this.getData();
  }

  getData() {
    this.crudApi.getAll().subscribe(
      response => {
        this.crudApi.list = response["hydra:member"];
        console.log(this.crudApi.list);
      }
    );
  }

  removeData(id:number) {
    if (window.confirm('Etes vous sur de vouloir suppprimer ce groupe ?')) {
      this.crudApi.deleteData(id)
        .subscribe(
          data => {
            this.toastr.warning('Groupe supprimé avec succès !');
            this.getData();
          },
          error => console.log(error));
    }
  }

  selectData(item : Groups) {
    //permet de choisir entre update et add
    this.crudApi.choixmenu = "M";
    this.crudApi.formData = this.fb.group(Object.assign({},item));

    const dialogConfig = new MatDialogConfig();

    dialogConfig.autoFocus = true;
    dialogConfig.disableClose = true;
    dialogConfig.width="50%";

    this.matDialog.open(AddGroupComponent, dialogConfig);
  }

  addGroups()
  {
      //permet de choisir entre update et add
      this.crudApi.choixmenu = "A";
      const dialogConfig = new MatDialogConfig();

      dialogConfig.autoFocus = true;
      dialogConfig.disableClose = true;
      dialogConfig.width="50%";
      this.matDialog.open(AddGroupComponent, dialogConfig);
    }
  }

