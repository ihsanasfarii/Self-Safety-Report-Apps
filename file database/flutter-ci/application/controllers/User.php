<?php
	class User extends CI_Controller{

		public function login(){
			$email = $this->input->post("email");
			$password = $this->input->post("password");

			$dataUser = array();

			$dataLogin = $this->db->query("select * from user where email = '".$email."' and password = '".$password."' ");



			foreach($dataLogin->result() as $dl){
				$dataUser[] = $dl;
			}

			echo json_encode($dataUser);

			$result;
			if(count($dataUser)>0){
				$result['status'] = true;
			}else{
				$result['info'] = "Data login salah";
				$result['status'] = false;
			}

		}
	}
?>