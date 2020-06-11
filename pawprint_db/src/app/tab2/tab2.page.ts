import { Component } from '@angular/core';
import { PawprintsService } from '../services/pawprints.service';
import { FormBuilder, Validators, FormGroup, FormControl } from '@angular/forms';

@Component({
  selector: 'app-tab2',
  templateUrl: 'tab2.page.html',
  styleUrls: ['tab2.page.scss']
})
export class Tab2Page {
  name: FormControl;
  version: FormControl;

  pawprintform: FormGroup;

  constructor(public pawprintService : PawprintsService, 
    private builder: FormBuilder) {
    this.name = new FormControl('', Validators.required);
    this.version = new FormControl('', Validators.required);

    this.pawprintform = builder.group({
      name: this.name,
      version: this.version
    });
  }

  onSubmit(){
    this.pawprintService.createPawPrints(this.pawprintform.value).subscribe((res) =>{
      console.log(res);
      
    })
  }

}
