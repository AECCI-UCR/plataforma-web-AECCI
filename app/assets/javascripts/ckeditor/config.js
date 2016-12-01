/**
 * Created by fabian on 19/11/16.
 */

// El config original se puede encontrar en: https://github.com/galetahub/ckeditor/blob/master/app/assets/javascripts/ckeditor/config.js
CKEDITOR.editorConfig = function (config) {
    // Define changes to default configuration here.
    config.language = 'es';
    config.height = 300;
    //config.skin = 'office2013,../../stylesheets/office2013/';

    config.removeDialogTabs = 'link:upload;image:Upload';

    config.allowedContent = true;

    // Toolbar groups configuration.
    config.toolbar = [
        {name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source']},
        {
            name: 'clipboard',
            groups: ['clipboard', 'undo'],
            items: ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo']
        },
        //{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker' ], items: [ 'Find', 'Replace', '-', 'SelectAll', '-', 'Scayt' ] },
        // { name: 'forms', items: [ 'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField' ] },
        {name: 'links', items: ['Link', 'Unlink', 'Anchor']},
        {name: 'insert', items: ['HorizontalRule', 'SpecialChar']},
        {
            name: 'basicstyles',
            groups: ['basicstyles', 'cleanup'],
            items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat']
        },
        {
            name: 'paragraph',
            groups: ['list', 'indent', 'blocks', 'align', 'bidi'],
            items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']
        },
        {name: 'styles', items: ['Styles', 'Format', 'Font', 'FontSize']},
        {name: 'colors', items: ['TextColor', 'BGColor']}
    ];
};