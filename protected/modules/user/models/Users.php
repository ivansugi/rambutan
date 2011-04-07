<?php

/**
 * This is the model class for table "rambutan_users".
 *
 * The followings are the available columns in table 'rambutan_users':
 * @property integer $user_id
 * @property string $email
 * @property string $password
 * @property integer $level_id
 * @property integer $enabled
 * @property integer $verified
 * @property string $creation_date
 * @property integer $organization_id
 */
class Users extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return Users the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'rambutan_users';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('email, password, level_id, enabled, verified, creation_date, organization_id', 'required'),
			array('level_id, enabled, verified, organization_id', 'numerical', 'integerOnly'=>true),
			array('email, password', 'length', 'max'=>255),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('user_id, email, password, level_id, enabled, verified, creation_date, organization_id', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'user_id' => 'User',
			'email' => 'Email',
			'password' => 'Password',
			'level_id' => 'Level',
			'enabled' => 'Enabled',
			'verified' => 'Verified',
			'creation_date' => 'Creation Date',
			'organization_id' => 'Organization',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('level_id',$this->level_id);
		$criteria->compare('enabled',$this->enabled);
		$criteria->compare('verified',$this->verified);
		$criteria->compare('creation_date',$this->creation_date,true);
		$criteria->compare('organization_id',$this->organization_id);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}
}