<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 2/08/16
 * Time: 7:35 PM
 */


class LddsSiteConfig extends DataExtension {

    private static $db = array(
        'facebook' => 'Text',
        'instagram' => 'Text',
        'snapchat' => 'Text',
        'DesignerPolicy' => 'HTMLText'

    );

    public function updateCMSFields(FieldList $fields) {
        $fields->addFieldToTab("Root.Main",
            new TextField("facebook", "facebook link")
        );
        $fields->addFieldToTab("Root.Main",
            new TextField("instagram", "instagram link")
        );
        $fields->addFieldToTab("Root.Main",
            new TextField("snapchat", "snapchat link")
        );
        $fields->addFieldToTab("Root.Main",
            new HtmlEditorField("DesignerPolicy", "Designer Policy")
        );
    }
}