/**
 * Created by Heath on 30/10/16.
 */
$(document).ready(function () {

    /**
     *
     * 1. when sameAddressCheck is clicked it will run ShippingSameAsBilling function
     *
     * 2. ShippingSameAsBilling is a check to see if the checkbox is checked,
     * if checked we run the ShippingSameAsBilling
     */

    var sameAddressCheck = ('#PaymentForm_OrderForm_SameAddress');

    /**
     * Billing Variables
     */
    var billCountryHolder = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_Country_Holder'),
        billAddress1Holder = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_Address_Holder'),
        billAddress2Holder = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_AddressLine2_Holder'),
        billCityHolder = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_City_Holder'),
        billStateHolder = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_State_Holder'),
        billPostalCodeHolder = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_PostalCode_Holder'),
        billPhoneNumberHolder = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_Phone_Holder'),
        billCountry = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_Country'),
        billAddress1 = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_Address'),
        billAddress2 = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_AddressLine2'),
        billCity = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_City'),
        billState = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_State'),
        billPostalCode = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_PostalCode'),
        billPhoneNumber = ('#PaymentForm_OrderForm_BillingAddressCheckoutComponent_Phone');

    /**
     * Shipping Variables
     */
    var shipCountry = ('#PaymentForm_OrderForm_ShippingAddressCheckoutComponent_Country'),
        shipAddress1 = ('#PaymentForm_OrderForm_ShippingAddressCheckoutComponent_Address'),
        shipAddress2 = ('#PaymentForm_OrderForm_ShippingAddressCheckoutComponent_AddressLine2'),
        shipCity = ('#PaymentForm_OrderForm_ShippingAddressCheckoutComponent_City'),
        shipState = ('#PaymentForm_OrderForm_ShippingAddressCheckoutComponent_State'),
        shipPostalCode = ('#PaymentForm_OrderForm_ShippingAddressCheckoutComponent_PostalCode'),
        shipPhoneNumber = ('#PaymentForm_OrderForm_ShippingAddressCheckoutComponent_Phone');

    $(sameAddressCheck).on('click', function () {
        ShippingSameAsBilling();
    });

    /**
     *  Checkbox check for Billing address as Shipping
     */
    function ShippingSameAsBilling() {
        // Only check this shit if it is clicked
        if ($(sameAddressCheck).is(':checked')){
            CopyShippingFieldsToBilling();
            HideFields();
        } else {
            ShowFields();
        }
    }

    /**
     * Make Billing Fields The Same as shipping fields
     * @constructor
     */
    function CopyShippingFieldsToBilling() {

        $(shipCountry).change(function() {
            $(billCountry).val($(this).val());
        });

        $(shipAddress1).change(function() {
            $(billAddress1).val($(this).val());
        });

        $(shipAddress2).change(function() {
            $(billAddress2).val($(this).val());
        });

        $(shipCity).change(function() {
            $(billCity).val($(this).val());
        });

        $(shipState).change(function() {
            $(billState).val($(this).val());
        });

        $(shipPostalCode).change(function() {
            $(billPostalCode).val($(this).val());
        });

        $(shipPhoneNumber).change(function() {
            $(billPhoneNumber).val($(this).val());
        });

        $(billCountry).val($(shipCountry).val());
        $(billAddress1).val($(shipAddress1).val());
        $(billAddress2).val($(shipAddress2).val());
        $(billCity).val($(shipCity).val());
        $(billState).val($(shipState).val());
        $(billPostalCode).val($(shipPostalCode).val());
        $(billPhoneNumber).val($(shipPhoneNumber).val());
    }

    /**
     *  Hide Billing Fields
     */
    function HideFields() {
        $(billCountryHolder).addClass('hide-field');
        $(billAddress1Holder).addClass('hide-field');
        $(billAddress2Holder).addClass('hide-field');
        $(billCityHolder).addClass('hide-field');
        $(billStateHolder).addClass('hide-field');
        $(billPostalCodeHolder).addClass('hide-field');
        $(billPhoneNumberHolder).addClass('hide-field');
    }

    /**
     *  Show Billing Fields
     */
    function ShowFields() {
        $(billCountryHolder).removeClass('hide-field');
        $(billAddress1Holder).removeClass('hide-field');
        $(billAddress2Holder).removeClass('hide-field');
        $(billCityHolder).removeClass('hide-field');
        $(billStateHolder).removeClass('hide-field');
        $(billPostalCodeHolder).removeClass('hide-field');
        $(billPhoneNumberHolder).removeClass('hide-field');
    }

});