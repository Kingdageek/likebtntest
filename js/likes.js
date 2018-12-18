function like_add(id) {
    $.post(
        'ajax/like_add.php',
        {id:id},
        function (data) {
            if (data == 'success') {
                $('#like_btn_'+id).text('Liked');
                like_get(id);
            } else if (data == 'removed') {
                // Unlike the life
                $('#like_btn_'+id).text('Like');
                like_get(id);
                //alert(data);
            } else {
                alert("Couldn't unlike post. Try again later.");
            }
        }
    );
}

function like_get(id) {
    $.post(
        'ajax/like_get.php',
        {id:id},
        function (data) {
            $('#article_'+id+'_likes').text(data);
        }
    )
}