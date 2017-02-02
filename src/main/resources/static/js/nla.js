/*
 * javascript specific to the demo: one function only- for managing the modal display
 * of loaned books for a user.
 */

/*
 * Register for all loanitems buttons.
 */
$(".loanitems").click(function() {

    var id = $(this).attr('id');  // $(this) is the loanitems button that was clicked

    // get book loans by given person, summary view
    var bookLoansURL = '/api/people/' + id + '/bookLoans?projection=summary';

    $.getJSON(bookLoansURL, function(data) {

      var html = '<ul class="media-list">';

      // data binding frameworks avoid this wickedness..
      $.each(data._embedded.bookLoans, function(i, item) {
        html += '<li class="media">\n';
        html += '  <div class="media-left"><span class="glyphicon glyphicon-book" aria-hidden="true"></span></div>\n';
        html += '  <div class="media-body">\n';
        html += '    <h4 class="media-heading">' + item.book.title + ' <small>(ISBN ' + item.book.isbn + ')</small></h4>\n';
        html += '    <p> Loaned from <em>' + new Date(item.issueDate) + '</em> through <em>' + new Date(item.dueDate) + '</em></p>\n';
        html += '  </div></li>\n';
      });
      html += '</ul>'

      $('#myModal').find('.modal-body').html(html);
    });

    $('#myModal').modal('show');

});
