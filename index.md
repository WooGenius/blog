---
layout: page
title: About
excerpt: "About WooGenius."
---

# 저는
NHN NEXT에서 공부하고 있는 **Front-end Developer 김우진**입니다.
**행복하게 사는 것**과 **Hiphop**, **Programming**에 관심이 있습니다.

# 연락주세요.
현재 자유로운 분위기에서 열정을 쏟아 즐기며 일할 곳을 찾고있습니다.
저에게 관심이 있으시다면 아래로 연락주세요.

<div class="social-icons">
	<a href="http://twitter.com/woogenius" title="WooGenius on Twitter" target="_blank"><i class="fa fa-twitter-square fa-4x"></i></a><a href="http://facebook.com/woogenius" title="WooGenius on Facebook" target="_blank"><i class="fa fa-facebook-square fa-4x"></i></a><a href="http://linkedin.com/in/woogenius" title="WooGenius on LinkedIn" target="_blank"><i class="fa fa-linkedin-square fa-4x"></i></a><a href="http://github.com/WooGenius" title="WooGenius on Github" target="_blank"><i class="fa fa-github-square fa-4x"></i></a><a href="mailto:woog2nius@gmail.com" title="Mailto WooGenius"><i class="fa fa-envelope-square fa-4x"></i></a>
</div>

# 이 사이트는
Portfolio와 Blog의 목적으로 [jekyll](http://jekyllrb.com/)을 사용하여 만들어졌습니다. 
**문의사항:** [woog2nius@gmail.com](mailto:woog2nius@gmail.com)

# Latest Posts
<ul class="post-list">
{% for post in site.posts limit:10 %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a></article></li>
{% endfor %}
</ul>