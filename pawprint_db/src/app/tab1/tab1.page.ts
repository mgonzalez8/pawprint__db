import { Component } from '@angular/core';
import { PawprintsService } from '../services/pawprints.service';
import { ActionSheetController, AlertController, ModalController } from '@ionic/angular';
import { ModalPage } from '../modal/modal.page';
import { Router, NavigationExtras } from '@angular/router';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})

export class Tab1Page {
  items = [];
  color = 'primary';
  compareShow = false;
  compare = false;
  public paw_prints = [];

  constructor(public pawprintService : PawprintsService, 
    public actionSheetController: ActionSheetController, 
    public modalController: ModalController,
    public alerctrl: AlertController,
    private router: Router) {
  };

  ngOnInit(): void {
    this.getPawprints();
  }

  public getPawprints() {
    this.pawprintService.getPawPrints().subscribe((res:any) => {
      if (res.status == 500) {
        console.log(res.body);
      } else {
        for (let i = 0; i < res.body.length; i++) {
          const e = res.body[i];
          e.color = 'primary';
          this.items.push(e);
        }
      }
    });
  }

  async presentActionSheet() {
    const actionSheet = await this.actionSheetController.create({
      header: 'Opciones',
      mode: 'ios',
      animated: true,
      buttons: [{
        text: 'Comparar huellas',
        handler: () => {
          this.showCompare();
        },
      },
      {
        text: 'Estado de base de datos',
        handler: () => {
          this.showCompare();
        },
      }, {
        text: 'Cancel',
        icon: 'close',
        role: 'cancel',
        handler: () => {
          console.log('Cancel clicked');
        }
      }]
    });
    await actionSheet.present();
  }

  public showCompare(){
    this.compareShow = !this.compareShow;
  }

  async select(item) {
    const alert = await this.alerctrl.create({
      cssClass: 'my-custom-class',
      header: 'Selección',
      message: 'Ya seleccionó dos huellas.',
      buttons: ['OK']
    });
    if (item.color == 'primary') {
      if (this.paw_prints.length >= 2) {
        await alert.present();
      } else {
        item.color = 'danger';
        this.compare = true;
        this.paw_prints.push(item.idpawprnt);
      }
    } else {
      if (this.paw_prints.length == 1) {
        item.color = 'primary';
        this.compare = false;
        this.paw_prints = [];
      } else if(this.paw_prints.length > 1) {
        for (let i = 0; i < this.paw_prints.length; i++) {
          const e = this.paw_prints[i];
          if (item.idpawprint == e) {
            this.paw_prints.splice(i, 1);
            item.color = 'primary';
          }
        }
      }
    }
  }

  async getState(){
    await this.pawprintService.getState().subscribe((res:any) =>{
      this.compare = false;
      console.log(res);
    });
  }

  async compareItems(){
    const alert = await this.alerctrl.create({
      cssClass: 'my-custom-class',
      header: 'Selección',
      message: 'Debe seleccionar dos huellas.',
      buttons: ['OK']
    });
    const alert2 = await this.alerctrl.create({
      cssClass: 'my-custom-class',
      header: 'Comparación',
      message: 'Las huellas seleccionadas no tienen diferencias.',
      buttons: ['OK']
    });
    let items: any = {
      id1 : this.paw_prints[0],
      id2 : this.paw_prints[1]
    };
    if (this.paw_prints.length > 1) {
      await this.pawprintService.comparePawPrints(items).subscribe( async (res:any) =>{
        this.compare = false;
        this.paw_prints = [];
        if (res.body.length == 0) {
          await alert2.present();
        } else {
          this.presentModal(res.body);
        }
      });
    } else {
      await alert.present();
    }
  }

  public goToPaw(paw:any){
    let navigationExtras: NavigationExtras = {
      queryParams: paw
    };
    this.router.navigate(['/pawprint'], navigationExtras);
  }

  public isEmpty(obj) {
    for(var prop in obj) {
      if(obj.hasOwnProperty(prop)) {
        return false;
      }
    }
  
    return JSON.stringify(obj) === JSON.stringify({});
  }

  async presentModal(items) {
    const modal = await this.modalController.create({
      component: ModalPage,
      cssClass: 'my-custom-class',
      componentProps: {
        'paw_prints': items
      },
    });
    return await modal.present();
  }
  
}