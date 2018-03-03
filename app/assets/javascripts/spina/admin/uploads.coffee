$(this).fileupload
  dataType: "script"
  singleFileUploads: true
  replaceFileInput: true
  dropZone: $(this).find('.photo-field')
  add: (e, data) ->
    types = /(\.|\/)(gif|jpe?g|png)$/i
    file = data.files[0]