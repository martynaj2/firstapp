
// nasluchiwanie na zdarzenie
  $('.new-autor').on('ajax:send', function(){
    $('.autors').append('<img class="loader" style="height: 50px;" src="https://loading.io/spinners/balls/lg.circle-slack-loading-icon.gif"/>');
    });

    $('.new-autor').on('ajax:complete', function(){
      $('.loader').remove();
});
