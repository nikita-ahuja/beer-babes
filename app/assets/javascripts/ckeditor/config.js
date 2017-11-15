CKEDITOR.editorConfig = function(config) {
  config.language = 'en';
  //config.width = '410';
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
  config.filebrowserImageUploadUrl = "/ckeditor/pictures";
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";

  config.toolbar_Pure = [
    '/', {
      name: 'basicstyles',
      items: ['Bold', 'Italic', 'Underline', 'Strike', 'RemoveFormat']
    }, {
      name: 'paragraph',
      items: ['NumberedList', 'BulletedList', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']
    }, {
      name: 'colors',
      items: ['TextColor']
    }, {
      name: 'insert',
      items: ['Image', 'HorizontalRule', 'Smiley']
    }
  ];
  config.toolbar = 'Pure';


  config.toolbar_Mini = [
    '/', {
      name: 'basicstyles',
      items: ['Bold', 'Italic', 'RemoveFormat']
    }, {
      name: 'insert',
      items: ['Image','Smiley']
    }
  ];
  config.toolbar = 'Mini';
  return true;
};
