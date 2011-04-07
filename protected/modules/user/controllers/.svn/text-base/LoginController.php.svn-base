<?php

class LoginController extends Controller
{
	
	public function actionIndex()
	{
		//$this->render('index');
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			//var_dump ($_POST['LoginForm']);
			$model->attributes=$_POST['LoginForm'];
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}
	
	public function actionSignoff()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	} 
	
}