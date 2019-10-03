<?php
Class Contact extends MY_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('contact_model');
    }

    function index()
    {
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        if($this->input->post('btnUpdateContact')){
            $company = $this->input->post('txtCompany');
            $company_en = $this->input->post('txtCompanyEn');
            $phone = $this->input->post('txtPhone');
            $email = $this->input->post('txtEmail');
            $address = $this->input->post('txtAddress');
            $address_en = $this->input->post('txtAddressEn');
            $office = $this->input->post('txtOffice');
            $office_en = $this->input->post('txtOfficeEn');
            $email_recruit = $this->input->post('txtEmailRecruit');
            if($phone && $email && $address && $office){
                $contact_submit = array(
                    'company' => $company,
                    'company_en' => $company_en,
                    'phone' => $phone,
                    'email' => $email,
                    'email_recruit' => $email_recruit,
                    'address'=> $address,
                    'address_en'=> $address_en,
                    'office' => $office,
                    'office_en' => $office_en,
                );
                $this->contact_model->update(1, $contact_submit);
                $this->session->set_flashdata('message', 'Cập nhật thông tin thành công!');
                redirect(base_url('admin/contact'));
            }
        }
        $contact = $this->contact_model->get_info(1);
//        $contact = array(
//            'address' => 'Số 18, Lô 5, Đền Lừ 2, Tổ 44, Phường Hoàng văn Thụ, Quận Hoàng Mai, Thành Phố Hà Nội',
//            'office' => 'Tầng 3, Số 206, đường Đê La Thành, P. Thổ Quan, Q.Đống Đa, TP. Hà Nội.'
//        );
        $this->data['contact'] = $contact;
        $this->data['temp'] = 'admin/contact';
        $this->load->view('admin/layout', $this->data);
    }

}