import { Component, OnInit } from '@angular/core';
import {FormService} from '../../shared/form.service';

@Component({
  selector: 'app-form-list',
  templateUrl: './form-list.component.html',
  styleUrls: ['./form-list.component.css']
})
export class FormListComponent implements OnInit {

  constructor(private formService: FormService) { }

  ngOnInit() {
    this.formService.getForms().subscribe(data => {
      console.log(data)
    });
  }

}
