<?php 
require 'koneksi.php';
$input = file_get_contents('php://input');
$data = json_decode($input,true);
$pesan = [];
$id = $data['id'];
$nama = $data['nama'];
$nomor_kamar = $data['nomor_kamar'];
$no_tlp = $data['no_tlp'];

$query = mysqli_query($con,"update penghuni set nama='$nama', nomor_kamar='$nomor_kamar', no_tlp='$no_tlp' where id='$id'");
// if ($query) {
// 	http_response_code(201);
// 	$pesan['status'] = 'sukses';
// }else{
// 	http_response_code(422);
// 	$pesan['status'] = 'gagal';

// }

echo json_encode($pesan);
echo mysqli_error($con);


?>