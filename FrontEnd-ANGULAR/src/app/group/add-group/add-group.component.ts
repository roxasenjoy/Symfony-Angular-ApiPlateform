import { Component, OnInit,Inject } from '@angular/core';
import {  GroupService } from '../../service/group.service';
import { ToastrService } from 'ngx-toastr';
import { FormBuilder, FormGroup, FormControl, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { MatDialog, MatDialogConfig, MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-add-group',
  templateUrl: './add-group.component.html',
  styles: [

  ]
})
export class AddGroupComponent implements OnInit {
  num : any;
  groupeName !        :string;
  origin !            :string;
  city !              :string;
  date_start!         :number;
  date_separation!    :number | null;
  founders!           :string | null;
  members!            :number | null;
  musicType!          :string | null;
  description!        :string;

  constructor(
    public crudApi: GroupService, 
    public fb: FormBuilder, 
    public toastr: ToastrService,
    private router: Router,
    @Inject(MAT_DIALOG_DATA) public data: any,
    public dialogRef:MatDialogRef<AddGroupComponent>
  ) {

    }

  get f() { return this.crudApi.formData.controls }

  ngOnInit() {

    if (this.crudApi.choixmenu == "A") {
      this.InfoForm()
    }
  }
  //validator
  InfoForm() {
    this.crudApi.formData = this.fb.group({
      id: null,
      groupName      : ['', [Validators.required]],
      origin          : ['', [Validators.required]],
      city            : ['', [Validators.required]],
      date_start      : ['', [Validators.required]],
      date_separation : ['', [Validators.required]],
      founders        : ['', [Validators.required]],
      members         : ['', [Validators.required]],
      musicType       : ['', [Validators.required]],
      description     : ['', [Validators.required]]
    });
  }

  resetForm() {
    this.crudApi.formData.reset();
  }

  onSubmit() {
    this.crudApi.choixmenu == "A" ? this.addData() : this.updateData();
  }

  lister()
  {
    this.router.navigate(['/groups']);
  }

 addData() {
    this.crudApi.createData(this.crudApi.formData.value).subscribe(data => {
      this.dialogRef.close();
      this.data = data;
      this.toastr.success('Groupe ajoutée avec succès !');
      this.crudApi.getAll().subscribe(
        response => { 
          this.crudApi.list = response["hydra:member"];
        },
      );

      }
    );
  }

  updateData() {
    // en cas de fk
    this.crudApi.updatedata(this.crudApi.formData.value.id, this.crudApi.formData.value).
      subscribe((data: any) => {
        this.toastr.success('Groupe modifiée avec succès !');
        this.dialogRef.close();
        this.crudApi.getAll().subscribe(
          response =>{this.crudApi.list = response["hydra:member"];}
         );
        this.router.navigate(['/groups']);
      });
  }


  onChange($event:any){
  }

}

