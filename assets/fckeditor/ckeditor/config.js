
CKEDITOR.editorConfig = function( config )
{
        // Define changes to default configuration here. For example:
    config.language = 'en';
    
        // config.uiColor = '#AADC6E';
        
        config.toolbar_Full = [
            ['Source','-','Save','NewPage','Preview','-','Templates'],
            ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
            ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
            '/',
            ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
            ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
            ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
            ['BidiLtr', 'BidiRtl' ],
            ['Link','Unlink','Anchor'],
            ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak','Iframe'],
            '/',
            ['Styles','Format','Font','FontSize'],
            ['TextColor','BGColor'],
            ['Maximize', 'ShowBlocks','-','About']
            ];
        
        config.entities = false;
        //config.entities_latin = false;
        

        config.filebrowserBrowseUrl = ckeditor_congig.base_url + '/' + ckeditor_congig.html_path;

        config.filebrowserImageBrowseUrl = ckeditor_congig.base_url + '/' + ckeditor_congig.html_path + '?type=Images';

        config.filebrowserFlashBrowseUrl = ckeditor_congig.base_url + '/' + ckeditor_congig.html_path + 'ckfinder/type=Flash';

        config.filebrowserUploadUrl = ckeditor_congig.base_url + '/' + ckeditor_congig.connector + '?command=QuickUpload&type=Files';

        config.filebrowserImageUploadUrl = ckeditor_congig.base_url + '/' + ckeditor_congig.connector + '?command=QuickUpload&type=Images';

        config.filebrowserFlashUploadUrl = ckeditor_congig.base_url + '/' + ckeditor_congig.connector + '?command=QuickUpload&type=Flash';

};  