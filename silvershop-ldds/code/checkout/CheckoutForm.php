<?php

class CheckoutForm extends Form
{
    protected $config;

    protected $redirectlink;

    public function __construct($controller, $name, CheckoutComponentConfig $config)
    {
        $this->config = $config;
        $fields = $config->getFormFields();

        //$fields->add( new TextField('Tron'), 'City');
        $fields->insertAfter(new CheckboxField('SameAddress'), 'ShippingAddressCheckoutComponent_Phone')
            ->setTitle('Billing Address Same as Shipping address');
//        PaymentForm_OrderForm_ShippingAddressCheckoutComponent_Phone

        $actions = FieldList::create(
            FormAction::create(
                'checkoutSubmit',
                _t('CheckoutPage.ProceedToPayment', 'Proceed to payment')
            )
        );
        $validator = CheckoutComponentValidator::create($this->config);

        // For single country sites, the Country field is readonly therefore no need to validate
        if (SiteConfig::current_site_config()->getSingleCountry()) {
            $validator->removeRequiredField("ShippingAddressCheckoutComponent_Country");
            $validator->removeRequiredField("BillingAddressCheckoutComponent_Country");
        }

        parent::__construct($controller, $name, $fields, $actions, $validator);
        //load data from various sources
        $this->loadDataFrom($this->config->getData(), Form::MERGE_IGNORE_FALSEISH);
        if ($member = Member::currentUser()) {
            $this->loadDataFrom($member, Form::MERGE_IGNORE_FALSEISH);
        }
        if ($sessiondata = Session::get("FormInfo.{$this->FormName()}.data")) {
            $this->loadDataFrom($sessiondata, Form::MERGE_IGNORE_FALSEISH);
        }
    }

    public function setRedirectLink($link)
    {
        $this->redirectlink = $link;
    }

    public function checkoutSubmit($data, $form)
    {
        //form validation has passed by this point, so we can save data
        $this->config->setData($form->getData());
        if ($this->redirectlink) {

            return $this->controller->redirect($this->redirectlink);
        }

        return $this->controller->redirectBack();
    }

    public function getConfig()
    {
        return $this->config;
    }

}
