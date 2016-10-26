<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 26/10/16
 * Time: 10:33 PM
 */
class RegistrationPage extends Page
{

}

class RegistrationPage_Controller extends Page_Controller
{
    // Allow our form as an action
    static $allowed_actions = array(
        'RegistrationForm'
    );
    // Generate the registration form
    function RegistrationForm()
    {
        $fields = new FieldList(
            new TextField('Name', '<span>*</span> Name (or Nickname)'),
            new EmailField('Email', '<span>*</span> Email'),
            new ConfirmedPasswordField('Password', '<span>*</span> Password')
        );
        // Create action
        $actions = new FieldList(
            new FormAction('doRegister', 'Register')
        );
        // Create action
        $validator = new RequiredFields('FirstName', 'Email', 'Password');
        return new Form($this, 'RegistrationForm', $fields, $actions, $validator);
    }
    // Submit the registration form
    function doRegister($data, $form)
    {
        
        // Check if member exists
        $members = Member::get();
        foreach ($members as $m){
            if ($m->Email == Convert::raw2sql($data['Email'])){
                $form->AddErrorMessage('Email', "Sorry, that email address already exists. Please choose another.", 'bad');
                // Set form data from submitted values
                Session::set("FormInfo.Form_RegistrationForm.data", $data);
                return $this->redirectBack();
            }
        }
        
        $Member = new Member();
        $form->saveInto($Member);
        $Member->write();
        $Member->login();
        // Find or create the 'user' group
        if(!$userGroup = DataObject::get_one('Group', "Code = 'users'"))
        {
            $userGroup = new Group();
            $userGroup->Code = "users";
            $userGroup->Title = "Users";
            $userGroup->Write();
            $userGroup->Members()->add($Member);
        }
        // Add member to user group
        $userGroup->Members()->add($Member);

        //$this->redirect('http://google.com');
        $this->redirect('account/');

    }

}