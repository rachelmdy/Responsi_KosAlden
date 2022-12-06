import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root',
})
export class ApiService {
  constructor(public http: HttpClient) {}

  //link API
  apiURL() {
    return 'http://localhost/backend';
  }

  getData() {
    return this.http.get(this.apiURL() + '/tampil.php');
  }

  deleteData(id2) {
    return this.http.delete(this.apiURL() + '/hapus.php?id=' + id2);
  }

  ambilData(id2) {
    return this.http.get(this.apiURL() + '/lihat.php?id=' + id2);
  }
}
