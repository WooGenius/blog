---
layout: post
title: Sublime Text 2/3 Javascript 자동완성 수정하기.
tags: [Sublime Text]
categories: blog
comments: True
excerpt: Sublime Text 2/3 Javascript 자동완성 수정하기.
share: True

---

Sublime Text를 사용하면서 javascript코드완성 기능을 자주 사용하는데 기본 내장된 javascript 코드완성 기능에 문제가 있어 항상 불편했다. 어떤 문제냐면

{% highlight javascript %}
for (var i = 0; i < Things.length; i++) {
    Things[i]
}; // <- 불필요한 semicolon
{% endhighlight %}

for문이나 if문의 코드완성을 사용할때 이런식으로 불필요한 semicolon이 붙는 것이다. 그래서 구글링 한 결과 Sublime Text의 기본 code snippet을 바꿔서 해결 할 수 있다는 사실을 알았다.

지금부터 Mac OS기준으로 Sublime Text 2, 3의 기본 code snippet을 바꾸는 법에 대해 설명하겠다. 하지만 Windows사용자들도 해당 폴더를 찾을 수 있다면 어렵지 않게 따라 할 수 있을 것 이다.

---

## Sublime Text 2

Sublime Text를 켜고 **Sublime Text > Preferences > Browse Packages...** 를 클릭하면 Finder에 Package가 설치된 폴더가 표시된다. 경로를 바꾸지 않았다면 터미널에 다음과 같이 입력하면 된다.

{% highlight bash %}
$ cd ~/Library/Application Support/Sublime Text 2
{% endhighlight %}

그리고 Packages폴더를 보면 JavaScript폴더가 존재한다. 폴더안에 여러가지 Package관련 파일이 있는데 그 중 if와 for에관한 sublime-snippet파일을 Text Editor로 열어서 중괄호 뒤에 붙은 semicolon을 제거한다. 예를들어 **for-()-{}.sublime-snippet** 파일을 바꾼다면

{% highlight xml %}
<snippet>
    <content><![CDATA[for (var ${20:i} = 0; ${20:i} < ${1:Things}.length; ${20:i}++) {
    ${100:${1:Things}[${20:i}]}$0
--  };]]></content>
++  }]]></content>
    <tabTrigger>for</tabTrigger>
    <scope>source.js</scope>
    <description>for (…) {…}</description>
</snippet>
{% endhighlight %}

이렇게 될 것 이다. --가 앞에 있는 줄이 바꾸기 전이고, ++가 앞에 있는 줄이 바꾼 후 이다. 저장하고 다시 Sublime Text를 실행 시켜보면 javascript 문법에 맞는 코드완성을 볼 수 있을 것이다.

---

## Sublime Text 3

Sublime Text 2와 동일한 경로엔 기본 Package가 아닌 내가 설치한 Package만 있다. 기본 Package는 Application파일에 내장되어 있다. 만약 Applications폴더로 Application을 옮겼다면 다음과 같이 터미널에 입력한다. 그게 아니거나 실행파일의 위치를 알고 있다면, 설치한 장소로 이동하여 오른쪽 버튼을 클릭하고 **Show Package Contents**를 클릭한다.

{% highlight bash %}
$ cd /Applications/Sublime Text.app
{% endhighlight %}

그리고 **Contents/MacOS/Packages**폴더로 가면 여러종류의 sublime-package파일이 있다. 이것들이 모두 Sublime Text 3와 함께 기본으로 설치되는 Package인데, 그 중 JavaScript.sublime-package파일의 압축을 풀어준다. 터미널을 이용한다면 명령어는 다음과 같다.

{% highlight bash %}
$ unzip JavaScript.sublime-package -d ./JavaScript/
{% endhighlight %}

이렇게 하면 JavaScript폴더가 생기고 들어가보면, 여러가지 Package관련 파일이 있는데 그 중 if와 for에관한 sublime-snippet파일을 Text Editor로 열어서 중괄호 뒤에 붙은 semicolon을 제거한다. 예를들어 **for-()-{}.sublime-snippet** 파일을 바꾼다면

{% highlight xml %}
<snippet>
    <content><![CDATA[for (var ${20:i} = 0; ${20:i} < ${1:Things}.length; ${20:i}++) {
    ${100:${1:Things}[${20:i}]}$0
--  };]]></content>
++  }]]></content>
    <tabTrigger>for</tabTrigger>
    <scope>source.js</scope>
    <description>for (…) {…}</description>
</snippet>
{% endhighlight %}

이렇게 될 것 이다. --가 앞에 있는 줄이 바꾸기 전이고, ++가 앞에 있는 줄이 바꾼 후 이다. 그리고 다시 압축을 하고 이름을 JavaScript.sublime-package으로 바꾼 후 원래의 파일에 덮어씌워 준다. 압축을 하는 터미널 명령어는 아래와 같다.

{% highlight bash %}
# JavaScript 폴더로 들어가기
$ cd JavaScript
# 압축하기
$ zip -r JavaScript.sublime-package ./
# 덮어쓰기
$ mv -f JavaScript.sublime-package ../
# 상위폴더로 이동 한 후 폴더 삭제하기
$ cd .. && rm -rf JavaScript
{% endhighlight %}

그리고 다시 Sublime Text를 실행 시켜보면 javascript 문법에 맞는 코드완성을 볼 수 있을 것이다.

