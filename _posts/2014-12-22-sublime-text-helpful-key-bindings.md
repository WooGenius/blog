---
layout: post
title: Sublime Text 유용한 단축키 세팅하기. & 몇가지 팁들
tags: [Sublime Text]
share: True
excerpt: Sublime Text 유용한 단축키 세팅하기.
comments: True
categories: blog

---

## 단축키 세팅하기

eclipse를 사용하다가 Sublime Text를 사용하면 eclipse에서 쓰는 여러가지 단축키들을 쓸 수 없어서 불편했다. 그래서 eclipse의 여러가지 단축키들을 Sublime Text에서도 쓸 수 있게 Sublime Text의 Key Bindings세팅을 변경했다. 그리고 유용한 단축키들을 추가했는데, 필요한 사람이 있을 것 같아 내 Sublime Text Key Bindings 세팅을 공유한다. 

Mac OS기준이며 ```Sublime Text > Preferences > Key Bindings - User```를 클릭하면 열리는 파일을 수정하면 된다.

{% highlight javascript %}
// Default (OSX).sublime-keymap
[
    // alt + 위/아래 방향키를 이용하여 라인을 위,아래로 옮기는 단축키이다.
    { "keys": ["alt+up"], "command": "swap_line_up" },
    { "keys": ["alt+down"], "command": "swap_line_down" },

    // cmd + d를 사용하여 한줄을 지우는 단축키이다.
    // 단어를 선택하는 Sublime Text의 기본단축키를 cmd + r로 옮겼다.
    { "keys": ["super+d"], "command": "run_macro_file", "args": {"file": "Packages/Default/Delete Line.sublime-macro"} },

    // amd + alt + 아래 방향키를 사용하여 한줄을 아래로 복사하는 단축키이다.
    { "keys": ["super+alt+down"], "command": "duplicate_line" },

    // 단어를 선택하고 아래로 내려가며 찾아 커서를 만드는 Sublime Text기본 단축키이다.
    { "keys": ["super+r"], "command": "find_under_expand" },

    // cmd + k : 위의 단축키를 사용하면서 특정 단어를 건너뛰고 싶을 때 사용하는 단축키이다.
    { "keys": ["super+k", "super+r"], "command": "find_under_expand_skip" },

    // cmd + shift + r : 블록을 한 부분의 indent를 맞추는 단축키이다.
    { "keys": ["super+shift+r"],  "command": "reindent" },

    // cmd + v를 하면 indent가 안맞아 짜증나는 경우가 많은데 붙여넣기와 동시에
    // indent를 맞춰주는 명령을 cmd + v로 설정하였다. 기존 붙여넣기는 
    // cmd + shift + v로 이동하였다.(매우 유용)
    { "keys": ["super+v"], "command": "paste_and_indent" },
    { "keys": ["super+shift+v"], "command": "paste" }
]
{% endhighlight %}

주석을 보고 필요한 단축키만 추가해서 사용하거나, 키가 맘에 들지 않으면 수정해서 사용하면 되겠다.

## 몇가지 팁들

* ```cmd + click```을 통해 커서를 원하는 위치에 여러개 만들 수 있다.
* ```cmd + l```을 누르면 한줄 선택이 되고 여러번 누르면 여러줄 선택이 된다. 그리고 ```cmd + shift + l```을 통해 모든 라인의 끝에 커서를 생성 할 수 있다.
* ```Project``` 메뉴에 ```Save Project As...```을 통해 프로젝트를 저장하고 ```cmd + ctl + p```를 통해 프로젝트를 불러 올 수 있다.
* 아래의 명령어를 터미널에 사용하면 터미널 어디에서든 ```$ subl ./ ```명령을 통해 현재 위치한 폴더를 기반으로 Sublime Text를 실행 시킬 수 있다.[^1]

[^1]:<https://www.sublimetext.com/docs/2/osx_command_line.html>

{% highlight bash %}
# Sublime Text 2 일 경우
$ ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
# Sublime Text 3 일 경우
$ ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
{% endhighlight %}

* ```cmd + p```를 누르면 창이 뜨는데 여기에 파일이름을 입력하면 어디서든 원하는 파일로 이동 할 수 있다.