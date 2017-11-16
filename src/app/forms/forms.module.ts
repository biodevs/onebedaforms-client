import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormListComponent } from './form-list/form-list.component';
import { ActiveComponent } from './shared/active/active.component';
import { FormEditComponent } from './form-edit/form-edit.component';
import { FormNewComponent } from './form-new/form-new.component';

@NgModule({
  imports: [
    CommonModule
  ],
  declarations: [FormListComponent, ActiveComponent, FormEditComponent, FormNewComponent]
})
export class FormsModule { }
