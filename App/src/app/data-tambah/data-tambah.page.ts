import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AlertController, LoadingController } from '@ionic/angular';
import { ApiService } from '../api.service';
import { Http } from '@capacitor-community/http';
import { Alert } from 'selenium-webdriver';

@Component({
  selector: 'app-data-tambah',
  templateUrl: './data-tambah.page.html',
  styleUrls: ['./data-tambah.page.scss'],
})
export class DataTambahPage implements OnInit {
  nama: any;
  nomor_kamar: any;
  no_tlp: any;
  constructor(
    private route: ActivatedRoute,
    private router: Router,
    public _apiService: ApiService,
    private alertController: AlertController,
    public loadingController: LoadingController
  ) {}

  ngOnInit() {}

  addData() {
    let url = this._apiService.apiURL() + '/tambah.php';
    Http.request({
      method: 'POST',
      url: url,
      headers: { 'Content-Type': 'application/json' },
      data: {
        nama: this.nama,
        nomor_kamar: this.nomor_kamar,
        no_tlp: this.no_tlp,
      },
    }).then(
      (data) => {
        this.nama = '';
        this.nomor_kamar = '';
        this.no_tlp = '';
        this.alertController
          .create({
            header: 'Notifikasi',
            message: 'Berhasil Input Data',
            buttons: ['OK'],
          })
          .then((res) => {
            res.present();
          });
        this.router.navigateByUrl('/home');
      },
      (error) => {
        this.alertController
          .create({
            header: 'Notifikasi',
            message: 'Gagal Input Data',
            buttons: ['OK'],
          })
          .then((res) => {
            res.present();
          });
      }
    );
  }
}
