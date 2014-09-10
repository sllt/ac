
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="background:#F0E0D6;">
<head>
    <meta http-equiv="Cache-Control" content="max-age=0; must-revalidate" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Language" content="zh-cn" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=yes" />

    <link rel="stylesheet" type="text/css" href="/static/css/mainstyle.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/menuGlobal.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/sitemenuFutaba.css" />
<body>
    <img src="http://bcs.duapp.com/postquery/qrcode58.png" style="height: 90px;width: 90px;padding:10px">
</br>
<ul>
    <li><a href="/" target="_top" style="font-size: 12pt;padding:7px">主页</a></li>
</ul>
</br>
<h1>版块</h1>
</br>
<div id="forum">
<ul>
    {{range .Nodes}}
    <li><a href="/node/{{ .Id}}" class="boardlink" target="main" style="font-size: 12pt;padding:7px">
    {{ .Name}}</a></li>
    {{ end }}
</ul>
</div>

</body>
</html>