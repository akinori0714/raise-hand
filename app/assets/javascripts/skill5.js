$(document).on('turbolinks:load', function() {
  // カテゴリー選択（ユーザー登録画面）
  function buildHTML(params){
    var skill5_option = ""
    params.forEach(function (skill5){
      skill5_option += `<option value=${skill5.id}>${skill5.name}</option>`
    });
    var html = `<select name="user[skill5_id]" id="user_skill5_id middle5_category">
                  <option value>---</option>
                  ${skill5_option}
                </select>`
    return html;
  };
  // 親カテゴリー選択後のイベント（ユーザー登録画面）
  $('#large5-category').change(function(){
    var skill5_id = $('#large5-category option:selected').val();
    $('#middle5-category').empty();
    if (skill5_id != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        type: 'GET',
        url: '/users/skill',
        data: { id: skill5_id },
        dataType: 'json'
      })
      .done(function(params){
        var html = buildHTML(params);
        $('#middle5-category').append(html);
      })
      .fail(function (jqXHR, textStatus, errorThrown){
        alert('カテゴリー取得に失敗しました');       
      })
    }
  });
});