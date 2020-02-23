$(document).on('turbolinks:load', function() {
  // カテゴリー選択
  function buildHTML(params){
    var category_option = ""
    params.forEach(function (category){
      category_option += `<option value=${category.id}>${category.name}</option>`
    });
    var html = `<select name="user[category_id]" id="user_category_id middle_category">
                  <option value>---</option>
                  ${category_option}
                </select>`
    return html;
  };
  // 親カテゴリー選択後のイベント
  $('#large-category').change(function(){
    var category_id = $('#large-category option:selected').val();
    $('#middle-category').empty();
    if (category_id != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        type: 'GET',
        url: '/users/category',
        data: { id: category_id },
        dataType: 'json'
      })
      .done(function(params){
        var html = buildHTML(params);
        $('#middle-category').append(html);
      })
      .fail(function (jqXHR, textStatus, errorThrown){
        alert('カテゴリー取得に失敗しました');       
      })
    }
  });
});