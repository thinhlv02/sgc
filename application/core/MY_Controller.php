<?php

Class MY_Controller extends CI_Controller
{
    public $data = array();

    function __construct()
    {
        parent::__construct();
        $new_url = $this->uri->segment(1);
//        var_dump($new_url);
        switch ($new_url) {
            case 'admin' : {
//                pre('abc');
                $this->_check_login();
                $this->data['admin'] = $this->session->userdata('admin');
                break;
            }

            default: {
                $this->load->model('contact_model');
                $contact = $this->contact_model->get_info(1);
                $this->data['contact'] = $contact;
                $language = $this->session->userdata('language');
                if(!$language){
                    $this->session->set_userdata('language', 'vn');
                    $language = 'vn';
                }
                $this->data['language'] = $language;
                $this->lang->load($language, 'language');
            }
        }
    }

    private function _check_login()
    {
        $controller = $this->uri->rsegment('1');
        $controller = strtolower($controller);

        $login = $this->session->userdata('login');
        //neu ma chua dang nhap,ma truy cap 1 controller khac login
        if (!$login && $controller != 'login') {
            redirect(base_url('admin/login'));
        }
        //neu ma admin da dang nhap thi khong cho phep vao trang login nua.
        if ($login && $controller == 'login') {
            redirect(base_url('admin/product'));
        }
    }
}