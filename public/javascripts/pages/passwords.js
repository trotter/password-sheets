PasswordSheets.Passwords = {
  showPassword: function () {
    var website, col, row, i, id, zChar, password = '';
    $('td').removeClass('password');
    $('#password').html('');
    website = $('#website_name').val().toUpperCase().replace(/^www\./, '');
    col = website.charCodeAt(0);
    row = website.charCodeAt(1);
    aChar = "A".charCodeAt(0);
    zChar = "Z".charCodeAt(0);
    for(i=0;i<8;i++) {
      if (col > zChar || col < aChar) {
        col = aChar;
      }
      if (row > zChar || row < aChar) {
        row = aChar;
      }
      id = "#" + String.fromCharCode(col) + String.fromCharCode(row);
      $(id).addClass('password');
      password += $(id).text();
      col++; row++;
    }
    $('#password').text("Password: " + password);
    return false;
  }
};

$(function () {
  $('#show-password').submit(PasswordSheets.Passwords.showPassword);
});
