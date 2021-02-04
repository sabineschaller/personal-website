---
title: "Contact"
date: 2021-02-03T20:18:18+01:00
draft: false
---

Send me a message. I'll get back to you as soon as possible.

<div>
  <form
    id="contact"
    action="https://formspree.io/f/maylkjgr"
    method="POST"
  >
    <label for="_replyto">Your email:</label><br>
    <input type="text" id="_replyto" name="_replyto">
    <label for="message">Your message:</label><br>
    <textarea id="message" name="message"></textarea>
    <input id="submit" type="button" onclick="submitAndClear()" value="Send">
  </form>
</div>

<script>
  function submitAndClear() {
    document.getElementById("contact").submit(); 
    document.getElementById("contact").reset();
  }
</script>
