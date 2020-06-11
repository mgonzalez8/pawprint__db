import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class PawprintsService {

  constructor(private http: HttpClient) { }

  public getPawPrints(){
    return this.http.get('http://127.0.0.1:3000/pawprints');
  }

  public getPawPrint(idpaw: String){
    return this.http.get(`http://127.0.0.1:3000/pawprints/${idpaw}`);
  }

  public getState(){
    return this.http.get(`http://127.0.0.1:3000/pawprints/compare`);
  }

  public comparePawPrints(pawprint: any){
    return this.http.post(`http://127.0.0.1:3000/pawprints/compare/`, pawprint);
  }

  public createPawPrints(pawprint: any){
    return this.http.post('http://127.0.0.1:3000/pawprints/create', pawprint);
  }
}
