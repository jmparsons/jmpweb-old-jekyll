---
layout: default
fixed: false
permalink: /
styles:
- nopad
---
<div class="home">
  <div class="index-image"></div>
  <div class="row medium-unstack">
    <div class="columns">
      <h3>Github</h3>
    </div>
    <div class="columns">
      <h3>Posts</h3>
      <ul class="post-list">
        {% for post in site.posts %}
          <li>
            <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
            <h2>
              <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
            </h2>
          </li>
        {% endfor %}
      </ul>
    </div>
  </div>
</div>