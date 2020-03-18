<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		
				if ($this->session->userdata('role') === '1') {
					redirect('sa/dashboard');
				} elseif ($this->session->userdata('role') === '2') {
					redirect('a/dashboard');
				} elseif ($this->session->userdata('role') === '3') {
					redirect('j/dashboard');
				} elseif ($this->session->userdata('role') === '4') {
					redirect('rt/dashboard');
				} else {
					$this->load->view('layout/backend/auth/header');
					  $this->load->view('auth/login');
					$this->load->view('layout/backend/auth/footer');
				}
	}

}
