$(function(){

  function buildHTML(chat){
    var addImage = chat.image ? `<img class = "image_size", src="${chat.image}">` : '' ;
      var html =
        `<div class="chat" data-chat_id=${chat.id}>
          <div class="upper-chat">
            <div class="upper-chat__user-name">
              ${chat.user_name}
            </div>
            <div class="upper-chat__date">
              ${chat.created_at}
            </div>
          </div>
          <div class="lower-chat">
            <p class="lower-chat__content">
              ${chat.content}
            </p>
          </div>
        ${addImage}
        </div>`
      return html;
  };

  $('#new_chat').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.chats').append(html); 
      $('form')[0].reset();
      $('.form__submit').prop('disabled', false);
    })
  });

});