import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AlertController, LoadingController } from '@ionic/angular';
import { ApiService } from '../api.service';
import { Http } from '@capacitor-community/http';

@Component({
  selector: 'app-data-lihat',
  templateUrl: './data-lihat.page.html',
  styleUrls: ['./data-lihat.page.scss'],
})
export class DataLihatPage implements OnInit {
  id: any;
  nama: any;
  nomor_kamar: any;
  no_tlp: any;
  data: any[];

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    public _apiService: ApiService,
    private alertController: AlertController,
    public LoadingController: LoadingController
  ) {
    this.route.params.subscribe((param: any) => {
      this.id = param.id;
      console.log(this.id);
      this.ambilData(this.id);
    });
  }

  ngOnInit() {}

  ambilData(id) {
    this._apiService.ambilData(id).subscribe(
      (res: any) => {
        console.log('sukses', res);
        this.data = res;
      },
      (error: any) => {
        console.log('error', error);
        alert('Gagal Ambil Data');
      }
    );
  }
}
