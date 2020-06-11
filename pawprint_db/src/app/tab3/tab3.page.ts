import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { PawprintsService } from '../services/pawprints.service';

@Component({
  selector: 'app-tab3',
  templateUrl: 'tab3.page.html',
  styleUrls: ['tab3.page.scss']
})
export class Tab3Page {

  id: String;
  name: String;
  configurationsitems: any;
 
  constructor(private route: ActivatedRoute, private router: Router, private pawprintService: PawprintsService) {}

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
        this.id = params.idpawprnt;
        this.name = params.namepawprint;
    });   
    this.getPawPrint(); 
  }

  public getPawPrint(){
    this.pawprintService.getPawPrint(this.id).subscribe((res) =>{
      this.configurationsitems = res;
    })
  }

  public back(){
    this.router.navigate(['/']);
  }

}
