$(document).on('turbolinks:load', function() {
  // カテゴリー選択（ユーザー登録画面）
  function buildHTML(params){
    var skill1_option = ""
    params.forEach(function (skill1){
      skill1_option += `<option value=${skill1.id}>${skill1.name}</option>`
    });
    var html = `<select name="user[skill1_id]" id="user_skill1_id middle1_category">
                  <option value>---</option>
                  ${skill1_option}
                </select>`
    return html;
  };
  // 親カテゴリー選択後のイベント（ユーザー登録画面）
  $('#large1-category').change(function(){
    var skill1_id = $('#large1-category option:selected').val();
    $('#middle1-category').empty();
    if (skill1_id != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        type: 'GET',
        url: '/users/skill',
        data: { id: skill1_id },
        dataType: 'json'
      })
      .done(function(params){
        var html = buildHTML(params);
        $('#middle1-category').append(html);
      })
      .fail(function (jqXHR, textStatus, errorThrown){
        alert('カテゴリー取得に失敗しました');       
      })
    }
  });
});