# Auction Countdown Timer Demo

In this demo, I have added a simple JavaScript-based countdown timer to the "show" page for each auction in a simple auction-themed app that looks like this:

![Screenshot of a show-auction page that includes a countdown timer](screenshot.png)

To build the demo app, I started from a basic Rails scaffold for an `Auction` model class, like this:

```bash
rails generate scaffold Auction title description deadline:datetime
```

To add the countdown timer, I adapted this JS countdown timer example: <https://www.w3schools.com/howto/howto_js_countdown.asp>

In particular, check out the following timer code in `app/views/auctions/show.html.erb` (and note the embedded Ruby that retrieves the `deadline` attribute from the `Auction` object):

```erb
<p>
  <strong>Countdown:</strong>

  <!-- Display the countdown timer in an element -->
  <span id="countdown-timer">???</span>

  <script>
    // Set the date we're counting down to
    var countDownDate = new Date("<%= @auction.deadline %>").getTime();

    // Update the count down every 1 second
    var x = setInterval(function() {

      // Get today's date and time
      var now = new Date().getTime();

      // Find the distance between now and the count down date
      var distance = countDownDate - now;

      // Time calculations for days, hours, minutes and seconds
      var days = Math.floor(distance / (1000 * 60 * 60 * 24));
      var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      var seconds = Math.floor((distance % (1000 * 60)) / 1000);

      // Display the result in the element with id="demo"
      document.getElementById("countdown-timer").innerHTML = days + "d " + hours + "h "
      + minutes + "m " + seconds + "s ";

      // If the count down is finished, write some text
      if (distance < 0) {
        clearInterval(x);
        document.getElementById("countdown-timer").innerHTML = "EXPIRED";
      }
    }, 1000);
  </script>

</p>
```

It's fair to mention that this approach has some important shortcomings:

- The countdown displayed in the browser may be out of sync with the deadline on the server side.
- Changes to the deadline on the server side will not be reflected in the countdown timer without a page reload.

Still, hopefully you will find this demo to be helpful to get started developing a countdown timer for your auction (or other) themed app.

Cheers!
