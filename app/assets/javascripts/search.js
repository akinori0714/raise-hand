$(document).on('turbolinks:load', function() {
  // カテゴリー選択(ユーザー検索)
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
  // 親カテゴリー選択後のイベント(ユーザー検索)
  $('#large-search').on("mouseover", function(){
    var category_id = this.id //どのリンクにマウスが乗ってるのか取得します
      $.ajax({
        type: 'GET',
        url: '/users/category',
        data: { id: category_id },
        dataType: 'json'
      })
      .done(function(params){
        console.log(this);
        params.forEach(function(){
          var html = buildHTML(params);
          $('#middle-serch').append(html);
        })
      })
      .fail(function (jqXHR, textStatus, errorThrown){
        alert('カテゴリー取得に失敗しました');
        console.log("選択失敗");
        console.log("jqXHR          : " + jqXHR.status); // HTTPステータスが取得
        console.log("textStatus     : " + textStatus);    // タイムアウト、パースエラー
        console.log("errorThrown    : " + errorThrown.message); // 例外情報
        console.log("URL            : " + url);
      })
  });
});