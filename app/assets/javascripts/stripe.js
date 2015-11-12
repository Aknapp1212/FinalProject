charges = function(){


  var handler = StripeCheckout.configure({
    key: 'pk_test_Oz0wKrCjmupYOVi890hPkeuQ',
    locale: 'auto',
    token: function(token) {
      // Use the token to create the charge with a server-side script.
      // You can access the token ID with `token.id`
    }
  });

  $('#payment').on('click', function(e) {
    // Open Checkout with further options
    var amount = $('#amount').attr('price') * 100;

    handler.open({
      name: 'TopOutlines',
      description: 'Purchase',
      amount: amount
    });
    e.preventDefault();
  });

  // Close Checkout on page navigation
  $(window).on('popstate', function() {
    handler.close();
    });
  };

  $(document).ready(charges);
  $(document).on('page:load', charges);

