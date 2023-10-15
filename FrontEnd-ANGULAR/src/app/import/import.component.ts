import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import * as XLSX from 'xlsx';

@Component({
  selector: 'app-import',
  template: `
    <input type="file" (change)="onFileChange($event)" />
    <button (click)="uploadFile()">Upload</button>

  `,
})

export class ImportComponent implements OnInit {

  constructor(
    private router: Router,
    private http: HttpClient
  ) {}

  ngOnInit() {

  }

  file: any;

  onFileChange(evt: any) {
    const target: DataTransfer = <DataTransfer>(evt.target);
    
    if (target.files.length !== 1) throw new Error('Cannot use multiple files');

    const reader: FileReader = new FileReader();

    reader.onload = (e: any) => {
      const bstr: string = e.target.result;
      const wb: XLSX.WorkBook = XLSX.read(bstr, { type: 'binary' });

      const wsname: string = wb.SheetNames[0];
      const ws: XLSX.WorkSheet = wb.Sheets[wsname];

      this.file = XLSX.utils.sheet_to_json(ws);
    };

    reader.readAsBinaryString(target.files[0]);
  }

  uploadFile() {
    this.http.post('http://localhost:8000/api/upload', this.file).subscribe(response => {
      console.log('File uploaded successfully', response);
    });
  }
}
