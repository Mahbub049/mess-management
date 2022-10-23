<?php 

class Dashboard extends Admin_Controller 
{
	public function __construct()
	{
		parent::__construct();

		$this->not_logged_in();


		$this->data['page_title'] = 'Dashboard';
		
		$this->load->model('model_products');
		$this->load->model('model_orders');
		$this->load->model('model_users');
		$this->load->model('model_stores');
		$this->load->model('model_category');
	}

	public function index()
	{

		$this->data['total_products'] = $this->model_products->countTotalProducts();
		$this->data['total_paid_orders'] = $this->model_orders->countTotalPaidOrders();
		$this->data['total_unpaid_orders'] = $this->model_orders->countTotalUnPaidOrders();
		$this->data['total_orders'] = $this->model_orders->countTotalOrders();
		$this->data['total_users'] = $this->model_users->countTotalUsers();
		$this->data['total_group_users'] = $this->model_users->countTotalGroupUsers();
		$this->data['total_stores'] = $this->model_stores->countTotalStores();
		$this->data['total_tables'] = $this->model_stores->countTotalTables();
		$this->data['total_category'] = $this->model_category->countTotalCategory();

		$user_id = $this->session->userdata('id');
		$is_admin = ($user_id == 1) ? true :false;
		$is_adminPro = ($user_id == 7) ? true :false;

		$this->data['is_admin'] = $is_admin;
		$this->data['is_adminPro'] = $is_adminPro;
		$this->render_template('dashboard', $this->data);
	}
}