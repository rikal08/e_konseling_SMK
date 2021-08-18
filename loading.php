<?php 

$page=(isset($_GET['p']))? $_GET['p'] : '';
switch ($page) {
		case 'beranda-admin':
		include "admin/beranda.php";
		break;
		case 'beranda-guru':
		include "guru/beranda.php";
		break;
		case 'beranda-siswa':
		include "siswa/beranda.php";
		break;
		case 'beranda-ortu':
		include "ortu/beranda.php";
		break;
		case 'beranda-kepsek':
		include "kepsek/beranda.php";
		break;
// form
		case 'data_guru':
		include "data_guru.php";
		break;
		case 'data_siswa':
		include "data_siswa.php";
		break;
		case 'data_jurusan':
		include "data_jurusan.php";
		break;
		case 'data_kelas':
		include "data_kelas.php";
		break;
		case 'data_pelanggaran':
		include "data_pelanggaran.php";
		break;
		case 'data_sanksi':
		include "data_sanksi.php";
		break;
		case 'data_user':
		include "data_user.php";
		break;

// and

// hapus
		case 'hapus_data_guru':
		include "admin/action/hapus/hapus_data_guru.php";
		break;		
		case 'hapus_data_jurusan':
		include "admin/action/hapus/hapus_data_jurusan.php";
		break;
		case 'hapus_data_kelas':
		include "admin/action/hapus/hapus_data_kelas.php";
		break;
		case 'hapus_data_pelanggaran':
		include "admin/action/hapus/hapus_data_pelanggaran.php";
		break;
		case 'hapus_data_sanksi':
		include "admin/action/hapus/hapus_data_sanksi.php";
		break;
		case 'hapus_data_siswa':
		include "admin/action/hapus/hapus_data_siswa.php";
		break;
		case 'hapus_kelas_siswa':
		include "admin/action/hapus/hapus_kelas_siswa.php";
		break;
		case 'hapus_pela_siswa':
		include "admin/action/hapus/hapus_pela_siswa.php";
		break;
// hapus

// form
		case 'form_tambah_guru':
		include "admin/form_tambah_guru.php";
		break;
		case 'form_tambah_siswa':
		include "admin/form_tambah_siswa.php";
		break;
		case 'cari_siswa':
		include "guru/cari_siswa.php";
		break;
		case 'tambah_siswa_kelas':
		include "admin/tambah_siswa_kelas.php";
		break;
		case 'action_tambah_siswa_kelas':
		include "admin/action/tambah/action_tambah_siswa_kelas.php";
		break;
		case 'view_siswa':
		include "guru/view_siswa.php";
		break;
		case 'chat':
		include "guru/chat.php";
		break;
		
		
		
// end

		case 'pelanggaran_siswa':
		include "admin/pelanggaran_siswa.php";
		break;
		case 'pelanggarn_siswa':
		include "guru/pelanggaran_siswa.php";
		break;



		// siswa
		case 'pelanggaran_saya':
		include "siswa/pelanggaran_saya.php";
		break;
		case 'anak_saya':
		include "ortu/anak_saya.php";
		break;
		case 'obrolan':
		include "admin/pesan.php";
		break;
		case 'obrolan-ortu':
		include "ortu/pesan.php";
		break;
		case 'mulai_obrolan':
		include "ortu/tampil_chat.php";
		break;
		case 'mulai_obrolan':
		include "admin/.php";
		break;
		case 'kontak_guru':
		include "ortu/kontak_guru.php";
		break;

		case 'beri_sanksi':
		include "admin/action/edit/beri_sanksi.php";
		break;



		case 'laporan_pela_siswa':
		include "admin/laporan_pela_siswa.php";
		break;
		case 'laporan_sanksi_siswa':
		include "admin/laporan_sanksi_siswa.php";
		break;





}

 ?>