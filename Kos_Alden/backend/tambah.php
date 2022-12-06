<?php 
require 'koneksi.php';

$input = file_get_contents('php://input');
$data = json_decode($input,true);

$pesan = [];
$nama = trim($data['nama']);
$nomor_kamar = trim($data['nomor_kamar']);
$no_tlp = trim($data['no_tlp']);

if ($nama != '' and $no_tlp != '') {
	$query = mysqli_query($con,"insert into penghuni(id,nama,nomor_kamar,no_tlp) values('','$nama','$nomor_kamar','$no_tlp')");

}else{
	$query = mysqli_query($con,"delete from penghuni where id='$id'");
}


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