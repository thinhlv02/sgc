<?php
Class News extends MY_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('news_model');
    }

    function index()
    {
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;

        $news = $this->news_model->get_list();
        $this->data['news'] = $news;
        $this->data['temp'] = 'admin/news/index';
        $this->data['view'] = 'admin/news/list';
        $this->load->view('admin/layout', $this->data);
    }

    function add(){
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        if($this->input->post('btnAdd')){
            $config['upload_path'] = './public/images/news';
            $config['allowed_types'] = 'jpg|png|jpeg|JPEG';
            $this->load->library("upload", $config);
            if ($this->upload->do_upload('img_news')) {
                $file_data = $this->upload->data();
//                pre($file_data);
                $created = new DateTime();
                $data = array(
                    'title' => $this->input->post('txtName'),
                    'title_en' => $this->input->post('txtNameEn'),
                    'content' => $this->input->post('txtContent'),
                    'content_en' => $this->input->post('txtContentEn'),
                    'img' => $file_data['file_name'],
                    'created' => $created->getTimestamp()
                );
                if($this->news_model->create($data)){
                    $this->session->set_flashdata('message', 'Thêm tin tức thành công');
                    redirect(base_url('admin/news'));
                }
                else{
                    $this->session->set_flashdata('message', 'Lỗi thao tác cơ sở dữ liệu');
                }
            }
            else{
                $this->session->set_flashdata('message', $this->upload->display_errors('', ''));
            }
        }
        $this->data['temp'] = 'admin/news/index';
        $this->data['view'] = 'admin/news/add';
        $this->load->view('admin/layout', $this->data);
    }

    function edit(){
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        $id = $this->uri->segment(4);
        $news = $this->news_model->get_info($id);
        if(!$news){
            redirect(base_url('admin/news'));
        }

        if($this->input->post('btnEdit')){
            $created = new DateTime();
            $data = array(
                'title' => $this->input->post('txtName'),
                'title_en' => $this->input->post('txtNameEn'),
                'content' => $this->input->post('txtContent'),
                'content_en' => $this->input->post('txtContentEn'),
                'created' => $created->getTimestamp()
            );

            $config['upload_path'] = './public/images/news';
            $config['allowed_types'] = 'jpg|png|jpeg|JPEG';
            $this->load->library("upload", $config);
            if ($this->upload->do_upload('img_news')) {
                $file_data = $this->upload->data();
                $data['img'] = $file_data['file_name'];
                unlink('./public/images/news/'.$news->img);
            }
            else{
                $this->session->set_flashdata('message', $this->upload->display_errors('', ''));
//                return;
            }
            if($this->news_model->update($id, $data)){
                $this->session->set_flashdata('message', 'Cập nhật tin tức thành công');
                redirect(base_url('admin/news'));
            }
            else{
                $this->session->set_flashdata('message', 'Lỗi thao tác cơ sở dữ liệu');
            }
        }

        $this->data['news'] = $news;
        $this->data['temp'] = 'admin/news/index';
        $this->data['view'] = 'admin/news/edit';
        $this->load->view('admin/layout', $this->data);
    }

    function del(){
        $id = $this->uri->segment(4);
        $news = $this->news_model->get_info($id);
        if($news){
            $this->news_model->delete($id);
            unlink('./public/images/news/'.$news->img);
        }
        redirect(base_url('admin/news'));
    }
}