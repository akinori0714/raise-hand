$(document).on('turbolinks:load', function() {
  // カテゴリー選択（ユーザー登録画面）
  function buildHTML(params){
    var skill4_option = ""
    params.forEach(function (skill4){
      skill4_option += `<option value=${skill4.id}>${skill4.name}</option>`
    });
    var html = `<select name="user[skill4_id]" id="user_skill4_id middle4_category">
                  <option value>---</option>
                  ${skill4_option}
                </select>`
    return html;
  };
  // 親カテゴリー選択後のイベント（ユーザー登録画面）
  $('#large4-category').change(function(){
    var skill4_id = $('#large4-category option:selected').val();
    $('#middle4-category').empty();
    if (skill4_id != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        type: 'GET',
        url: '/users/skill',
        data: { id: skill4_id },
        dataType: 'json'
      })
      .done(function(params){
        var html = buildHTML(params);
        $('#middle4-category').append(html);
      })
      .fail(function (jqXHR, textStatus, errorThrown){
        alert('カテゴリー取得に失敗しました');       
      })
    }
  });
});