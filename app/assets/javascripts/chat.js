$(function(){
  last_chat_id = $('.chat:last').data("chat-id");

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

  var reloadchats = function(){
    var last_chat_id = $('.chat:last').data('chat_id');
    $.ajax({
      //ルーティングで設定した通り/groups/id番号/api/chatsとなるよう文字列を書く
      url: "api/chats",
      type: "get",
      dataType: "json",
      //dataオプションでリクエストに値を含める
      data: {id: last_chat_id}
    })
    .done(function(chats){
      var insertHTML = '';
      $.each(chats, function(i, chat){
        insertHTML += buildHTML(chat)
        // $('.chats').animate({ scrollTop: $('.chats')[0].scrollHeight});
      });
      $('.chats').append(insertHTML);
    })
    .fail(function(){
    });
  };
  setInterval(reloadchats, 7000);

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
    .fail(function() {
      alert("メッセージ送信に失敗しました");
  });
});
});