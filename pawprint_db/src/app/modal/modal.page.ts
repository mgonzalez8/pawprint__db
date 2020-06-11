import { Component, OnInit, Input } from '@angular/core';
import { ModalController } from '@ionic/angular';

@Component({
  selector: 'app-modal',
  templateUrl: './modal.page.html',
  styleUrls: ['./modal.page.scss'],
})
export class ModalPage implements OnInit {

  @Input() paw_prints: any;
  name : string;
  password : any = [];
  items = [];
  constructor(public modalCtrl: ModalController) { }

  ngOnInit() {
    for (let i = 0; i < this.paw_prints.length; i++) {
      const e = this.paw_prints[i];
      this.name = e['e'].item;
      this.password.push(e['e'].password)
      this.password.push(e['f'].password)
      const temp = {
        name : this.name,
        password : this.password
      }
      this.items.push(temp);
      this.name = '';
      this.password = [];
      console.log(this.items);
    }
  }


  dismiss() {
    this.modalCtrl.dismiss({
      'dismissed': true
    });
  }

}
