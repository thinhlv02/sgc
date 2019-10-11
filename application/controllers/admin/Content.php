<?php
Class Content extends MY_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('content_model');
    }

    function index()
    {
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        $service = $this->content_model->get_list(array('where'=>array('type'=>1)));
        $intro = $this->content_model->get_list(array('where'=>array('type'=>2)));
        $styles = $this->content_model->get_list(array('where'=>array('type'=>3)));
        $this->data['intro'] = $intro;
        $this->data['service'] = $service;
        $this->data['styles'] = $styles;
        $this->data['temp'] = 'admin/content/index';
        $this->load->view('admin/layout', $this->data);
    }

    function add_intro(){
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        if($this->input->post('btnAdd')){
            $data = array(
                'title' => $this->input->post('txtName'),
                'prioriti' => $this->input->post('txtPrioriti'),
                'content' => $this->input->post('txtContent'),
                'type' => 2
            );
            if($this->content_model->create($data)){
                $this->session->set_flashdata('message', 'Thêm thành công!');
            }
            else{
                $this->session->set_flashdata('message', 'Thêm thất bại!');
            }
            redirect(admin_url('content'));
        }
        $this->data['temp'] = 'admin/content/add_intro';
        $this->load->view('admin/layout', $this->data);
    }

    function edit_intro(){
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        $id = $this->uri->segment(4);
        $intro = $this->content_model->get_info($id);
        if($intro){
            $this->data['intro'] = $intro;
        }
        else{
            redirect(admin_url('content'));
        }
        if($this->input->post('btnEdit')){
            $data = array(
                'title' => $this->input->post('txtName'),
                'title_en' => $this->input->post('txtNameEn'),
                'prioriti' => $this->input->post('txtPrioriti'),
                'content' => $this->input->post('txtContent'),
                'content_en' => $this->input->post('txtContentEn'),
                'type' => 2
            );
            if($this->content_model->update($id, $data)){
                $this->session->set_flashdata('message', 'Chỉnh sửa thành công!');
            }
            else{
                $this->session->set_flashdata('message', 'Chỉnh sửa thất bại!');
            }
            redirect(admin_url('content'));
        }
        $this->data['temp'] = 'admin/content/edit_intro';
        $this->load->view('admin/layout', $this->data);
    }

    function del(){
        $id = $this->uri->segment(4);
        if($this->content_model->get_info($id)){
            $this->content_model->delete($id);
            $this->session->set_flashdata('message', 'Xóa thành công!');
        }
        redirect(admin_url('content'));
    }

    function edit_service(){
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        $id = $this->uri->segment(4);
        $intro = $this->content_model->get_info($id);
        if($intro){
            $this->data['intro'] = $intro;
        }
        else{
            redirect(admin_url('content'));
        }
        if($this->input->post('btnEdit')){
            $data = array(
                'title' => $this->input->post('txtName'),
                'title_en' => $this->input->post('txtNameEn'),
                'content' => $this->input->post('txtContent'),
                'content_en' => $this->input->post('txtContentEn'),
                'icon' => $this->input->post('txtIcon'),
            );
            if($this->content_model->update($id, $data)){
                $this->session->set_flashdata('message', 'Chỉnh sửa thành công!');
            }
            else{
                $this->session->set_flashdata('message', 'Chỉnh sửa thất bại!');
            }
            redirect(admin_url('content'));
        }
        $this->data['temp'] = 'admin/content/edit_service';
        $this->load->view('admin/layout', $this->data);
    }
}