<?php
class LddsProductExtension extends DataExtension {

    public function SalePrice($originalPrice, $amountOff)
    {
        $origPrice = floatval(ltrim($originalPrice, '$'));
        $origPrice -= $amountOff;
        return $origPrice;
    }

    public function TestDiscounts()
    {
        $discounts = OrderDiscount::get();

        foreach ($discounts as $d) {
            $item = $d->OrderItems();
            error_log(var_export($item, true));


            // foreach ($item as $i) {
            //     error_log(var_export($i, true));
            //}
        }

        //error_log(var_export($discounts, true));

        return $discounts;
    }
}