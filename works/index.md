---
layout: page
title: Works
excerpt: "Works by WooGenius"
---

* Table of Contents
{:toc}

제가 공부하면서 진행한 일부 프로젝트들입니다. 대부분 혼자 개발하였고, 협업을 통해 개발 한 프로젝트는 제 역할을 명시하였습니다.

---

## Black and White 2 Online

<img src="/images/works/bnw2.png" alt="image" style="float:right; width:50%; margin:10px;">

[더 지니어스 시즌3 블랙가넷](http://program.interest.me/tvn/thegenius3)에 나온 흑과백2게임의 온라인버젼입니다. 팀원들과 프로젝트를 진행하면서 혼자 공부의 목적으로 2주에 걸쳐 개발하였습니다. 개발하면서 사용성과 접근성에 대해 고민하였고, 그 결과 플레이어가 필요한 부분들을 섹션별로 보여주는 카드 디자인으로, 모든 디바이스에서 즐길 수 있도록 [Bootstrap](http://getbootstrap.com/)을 사용하여 개발하였습니다. 게임룰에 대한 설명은 [여기](http://www.youtube.com/watch?v=eb5cGFRrmsg)서 확인하실 수 있습니다.

* 개발기간 : 2주일
* [github](https://github.com/WooGenius/genius-game-bnw2)
* **사용기술:** node.js, socket.io, bootstrap

<hr style="clear:both;">

## todoGenius

<img src="/images/works/todoGenius.png" alt="image" style="float:right; width:50%; margin:10px;">

HTML5스펙을 사용하여 개발한 todo어플리케이션 입니다. [MEAN.JS](http://meanjs.org/)를 사용하여 javascript로 풀스택을 구현하였습니다. 사용한 HTML5 스펙으로는 Local Storage, Geolocation, Drag and Drop API가 있습니다. Local Storage에 todo항목을 저장하고, Geolocation을 통해 위치를 받아 저장한 위치를 표시하고, Drag and Drop을 통해 순서를 바꿀 수 있도록 구현했습니다. 현재 MEAN.JS의 오류로 인하여 데모는 동작하지 않습니다.ㅠㅠ

* 개발기간 : 4주
* [github](https://github.com/WooGenius/todoGenius)
* **사용기술:** HTML5, MEAN.JS

<hr style="clear:both;">

## Runaway for chicken

<img src="/images/works/rafc.png" alt="image" style="float:right; width:50%; margin:10px;">

HTML5를 이용한 간단한 멀티플레이 러너게임입니다. 준비를 마친 2명을 한 방으로 보내고, 소켓통신을 통해 멀티플레이 게임을 할 수 있도록 구현하였습니다. 해카톤에 참가하여 24시간만에 팀원들과 만들어 전체에서 2등을 하였습니다.

* 개발기간 : 24시간
* [github](https://github.com/WooGenius/runawayforchicken)
* 역할 : angular.js와 bootstrap을 활용하여 One page application을 구성하였고, socket.io를 활용하여 게임과 채팅에 필요한 소켓통신을 구현하였습니다.
* **사용기술:** node.js, socket.io, angular.js, express framework, bootstrap, HTML5 canvas

<hr style="clear:both;">


## Highlighter

<img src="/images/works/highlighter.png" alt="image" style="float:right; width:50%; margin:10px;">

javascript를 사용하여 만든 Highlighting Library입니다. 기존의 사용자경험을 개선하여, 오른쪽으로 드래그하면 하이라이팅이 되고, 왼쪽으로 드래그하면 하이라이팅 한 부분이 지워지게 만들었습니다. 그리고 serialize함수를 통해 하이라이팅을 저장하고, deserialize함수를 통해 하이라이팅 한 부분을 다시 불러 올 수 있게하여, 서버에서 하이라이팅한 부분을 쉽게 저장하고 다시 불러 올 수 있도록 하였습니다. 현재 크롬에서만 동작합니다.

* 개발기간 : 4주
* [github](https://github.com/WooGenius/HighlighterJs)
* **사용기술:** javascript

<hr style="clear:both;">

## SketchBook

<img src="/images/works/sketchbook.png" alt="image" style="float:right; width:50%; margin:10px;">

HTML5 canvas를 사용하여 만든 그림판 서비스 입니다. 실제펜과 비슷한 필기감을 주고자 마우스의 이동속도를 계산하여 빠르게 그리면 펜이 가늘어지고, 느리게 그리면 펜이 굵어지도록 하였습니다.

* 개발기간 : 4주
* [github](https://github.com/WooGenius/sketchbook)
* **사용기술:** HTML5 canvas, javascript

<hr style="clear:both;">

## WebGL

<img src="/images/works/webgl.png" alt="image" style="float:right; width:50%; margin:10px;">

공부(과제)의 목적으로 WebGL을 사용하여 만든것들입니다. 일부는 three.js를 사용하여 구현하였습니다. 현재 크롬에서만 동작합니다.

* 개발기간 : 2주
* [github](https://github.com/WooGenius/webgl-homework)
* **사용기술:** WebGL, three.js

<hr style="clear:both;">
