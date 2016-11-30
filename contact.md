---
layout: page
title: Contact
permalink: /contact
---

<div class="row align-center">
  <div class="medium-6 columns">
    <div class="columns">
      <h1>Contact</h1>
    </div>
    <form class="cform" action="https://formspree.io/jon@jmparsons.com" method="post">
      <div class="columns">
        <label>Name
          <input type="text" placeholder="Name" name="name" required>
        </label>
      </div>
      <div class="columns">
        <label>E-mail
          <input type="email" placeholder="E-mail" name="email" required>
        </label>
      </div>
      <div class="columns">
        <label>Subject
          <input type="text" placeholder="Subject" name="subject" required>
        </label>
      </div>
      <div class="columns">
        <label>Message
          <textarea placeholder="Message" name="message" rows="8" required></textarea>
        </label>
      </div>
      <div class="columns">
        <button class="button" type="submit">Send</button>
      </div>
      <input type="hidden" name="_subject" value="JMParsons Request Form">
      <input type="hidden" name="_format" value="plain">
      <input type="text" name="_gotcha" style="display:none">
    </form>
    <div class="columns confirm">
      <h3>Mail Sent</h3>
      <p>Thank you <span class="cfname"></span>.</p>
      <p>Your information has been sent.</p>
    </div>
  </div>
</div>