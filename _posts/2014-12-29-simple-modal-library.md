---
layout: post
title: Simple Modal Library
tags: [javascript, css]
categories: blog
comments: True
share: True
excerpt: Simple Modal Library

---

javascript, css를 사용하여 간단한 Modal Library를 만들었다.

## 데모
데모는 [여기](http://runnable.com/VKFzYKeH-B5cQrY_/output)서 확인 할 수 있다.

## 사용법
css와 javascript 파일을 import한 후

{% highlight javascript %}
var modal = new Modal();
modal.show({
    title: 'title',
    content: 'content',
    // up, down, left, right
    move: 'up'
});
{% endhighlight %}

이런식으로 코드를 추가해주면 title과 content를 가진 Modal이 만들어진다. 모달은 슬라이드로 움직이는데 위, 아래, 오른쪽, 왼쪽의 옵션이 있다. 이 움직임을 move인자에 'up', 'down', 'left', 'right'를 할당하여 컨트롤 할 수 있다.(기본값 down)

## 코드
코드는 [여기](http://runnable.com/VKFzYOaRlXBPdYiC/simple-modal-example-for-jquery-and-javascript)서 확인 할 수 있다.