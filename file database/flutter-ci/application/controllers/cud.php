<?php
		class cud extends CI_Controller{
		
			public function tambahUser(){
				$id_user = $this->input->post("id_user");
				$nama = $this->input->post("nama");
				$email = $this->input->post("email");
				$password = $this->input->post("password");
				$no_telp = $this->input->post("no_telp");
				$tgl_lahir = $this->input->post("tgl_lahir");
				$lokasi = $this->input->post("lokasi");

				$dataUser = array(
					"id_user" => $id_user,
					"nama" => $nama,
					"email" => $email,
					"password" => $password,
					"no_telp" => $no_telp,
					"tgl_lahir" => date("Y-m-d", strtotime($tgl_lahir)),
					"lokasi" => $lokasi,
				);
				$this ->db->insert("user", $dataUser);
			}

			public function editUser(){
				$id_user = $this->input->post("id_user");
				$nama = $this->input->post("nama");
				$email = $this->input->post("email");
				$password = $this->input->post("password");
				$no_telp = $this->input->post("no_telp");
				$tgl_lahir = $this->input->post("tgl_lahir");
				$lokasi = $this->input->post("lokasi");

				$dataUser = array(
					"nama" => $nama,
					"email" => $email,
					"password" => $password,
					"no_telp" => $no_telp,
					"tgl_lahir" => date("Y-m-d", strtotime($tgl_lahir)),
					"lokasi" => $lokasi,
				);
				$this->db->update("user", $dataUser);
				$this->db->where("id_user", $id_user);
			}

			public function hapusUser(){
				$id_user = $this->input->post("id_user");

				this->db->query("delete from user where id_user = '"$id_user"' ");

		}
}
?>