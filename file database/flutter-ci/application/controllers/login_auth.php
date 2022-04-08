<?php
	class login_auth extends CI_Controller{

		public function login(){
			$email = $this->input->post("email");
			$password = $this->input->post("password");

			$dataAuth = array();

			$dataLogin = $this->db->query("select * from user where email = '".$email."' and password = '".$password."' ");



			foreach($dataLogin->result() as $dl){
				$dataAuth[] = $dl;
			}

			echo json_encode($dataAuth);

		}

	}
?>