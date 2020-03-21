$(document).on('turbolinks:load', function() {
  // カテゴリー選択（ユーザー登録画面）
  function buildHTML(params){
    var skill2_option = ""
    params.forEach(function (skill2){
      skill2_option += `<option value=${skill2.id}>${skill2.name}</option>`
    });
    var html = `<select name="user[skill2_id]" id="user_skill2_id middle2_category">
                  <option value>---</option>
                  ${skill2_option}
                </select>`
    return html;
  };
  // 親カテゴリー選択後のイベント（ユーザー登録画面）
  $('#large2-category').change(function(){
    var skill2_id = $('#large2-category option:selected').val();
    $('#middle2-category').empty();
    if (skill2_id != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        type: 'GET',
        url: '/users/skill',
        data: { id: skill2_id },
        dataType: 'json'
      })
      .done(function(params){
        var html = buildHTML(params);
        $('#middle2-category').append(html);
      })
      .fail(function (jqXHR, textStatus, errorThrown){
        alert('カテゴリー取得に失敗しました');       
      })
    }
  });
});