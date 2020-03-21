$(document).on('turbolinks:load', function() {
  // カテゴリー選択（ユーザー登録画面）
  function buildHTML(params){
    var skill3_option = ""
    params.forEach(function (skill3){
      skill3_option += `<option value=${skill3.id}>${skill3.name}</option>`
    });
    var html = `<select name="user[skill3_id]" id="user_skill3_id middle3_category">
                  <option value>---</option>
                  ${skill3_option}
                </select>`
    return html;
  };
  // 親カテゴリー選択後のイベント（ユーザー登録画面）
  $('#large3-category').change(function(){
    var skill3_id = $('#large3-category option:selected').val();
    $('#middle3-category').empty();
    if (skill3_id != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        type: 'GET',
        url: '/users/skill',
        data: { id: skill3_id },
        dataType: 'json'
      })
      .done(function(params){
        var html = buildHTML(params);
        $('#middle3-category').append(html);
      })
      .fail(function (jqXHR, textStatus, errorThrown){
        alert('カテゴリー取得に失敗しました');       
      })
    }
  });
});