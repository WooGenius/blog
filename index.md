---
layout: page
title: About
excerpt: "About WooGenius."
---

# 연락주세요.
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

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- 리뷰리퍼블릭 테스트 -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-7723263421107958"
     data-ad-slot="4491171021"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
