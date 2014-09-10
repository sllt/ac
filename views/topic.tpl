
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Cache-Control" content="max-age=0; must-revalidate" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Language" content="zh-cn" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=yes" />
    <title> - Acfun匿名版</title>

    <link rel="stylesheet" type="text/css" href="/static/css/mainstyle.css" />
    <script type="text/javascript" src="/static/js/mainscript.js"></script>
    <!--[if lt IE 8]><script type="text/javascript" src="/Public/Js/iedivfix.js"></script><![endif]-->
    <script type="text/javascript">
        // <![CDATA[
        var msgs=['在没有附加图片的情况下，请写入内容','附加图片为系统不支持的格式','侦测到您有输入樱花日文假名的可能性，将自动为您转换'];
        var ext="GIF|JPG|PNG|BMP".toUpperCase().split("|");
        // ]]>
        </script>
</head>
<body>
<div id="header">
    <div id="toplink">
        [<a href="/home/forum/showt.html" rel="_top">回首页</a>] 
        [<a href="pixmicat.php?mode=search">搜索</a>]   
        [<a href="pixmicat.php?mode=status">系统信息</a>] 
        [<a href="pixmicat.php?mode=admin">后台管理</a>] 
        [<a href="?">刷新</a>]
    </div>
    <br />
    <h1>{{.Node.Name}}</h1>    <hr class="top" />
</div>
    <script type="text/javascript">
    window.onload=function(){
    var ds_textarea = document.getElementById("fcom");
    var faceList = ["|∀ﾟ", "(´ﾟДﾟ`)", "(;´Д`)", "(｀･ω･)", "(=ﾟωﾟ)=", "| ω・´)", "|-` )", "|д` )", "|ー` )", "|∀` )", "(つд⊂)", "(ﾟДﾟ≡ﾟДﾟ)", "(＾o＾)ﾉ", "(|||ﾟДﾟ)", "( ﾟ∀ﾟ)", "( ´∀`)", "(*´∀`)", "(*ﾟ∇ﾟ)", "(*ﾟーﾟ)", "(　ﾟ 3ﾟ)", "( ´ー`)", "( ・_ゝ・)", "( ´_ゝ`)", "(*´д`)", "(・ー・)", "(・∀・)", "(ゝ∀･)", "(〃∀〃)", "(*ﾟ∀ﾟ*)", "( ﾟ∀。)", "( `д´)", "(`ε´ )", "(`ヮ´ )", "σ`∀´)", " ﾟ∀ﾟ)σ", "ﾟ ∀ﾟ)ノ", "(╬ﾟдﾟ)", "(|||ﾟдﾟ)", "( ﾟдﾟ)", "Σ( ﾟдﾟ)", "( ;ﾟдﾟ)", "( ;´д`)", "(　д ) ﾟ ﾟ", "( ☉д⊙)", "(((　ﾟдﾟ)))", "( ` ・´)", "( ´д`)", "( -д-)", "(>д<)", "･ﾟ( ﾉд`ﾟ)", "( TдT)", "(￣∇￣)", "(￣3￣)", "(￣ｰ￣)", "(￣ . ￣)", "(￣皿￣)", "(￣艸￣)", "(￣︿￣)", "(￣︶￣)", "ヾ(´ωﾟ｀)", "(*´ω`*)", "(・ω・)", "( ´・ω)", "(｀・ω)", "(´・ω・`)", "(`・ω・´)", "( `_っ´)", "( `ー´)", "( ´_っ`)", "( ´ρ`)", "( ﾟωﾟ)", "(oﾟωﾟo)", "(　^ω^)", "(｡◕∀◕｡)", "/( ◕‿‿◕ )\\", "ヾ(´ε`ヾ)", "(ノﾟ∀ﾟ)ノ", "(σﾟдﾟ)σ", "(σﾟ∀ﾟ)σ", "|дﾟ )", "┃電柱┃", "ﾟ(つд`ﾟ)", "ﾟÅﾟ )　", "⊂彡☆))д`)", "⊂彡☆))д´)", "⊂彡☆))∀`)", "(´∀((☆ミつ"];
    var optionsList = document.getElementById("emotion").options;
    for (var i = 0; i < faceList.length; i++) {
        optionsList[1 + i] = new Option(faceList[i], faceList[i]);
    }
    document.getElementById("emotion").onchange = function (i) { 
        if (this.selectedIndex != 0) { 
            ds_textarea.value += this.value; 
            //alert(this.value);
            var l = ds_textarea.value.length; 
            ds_textarea.focus(); 
            ds_textarea.setSelectionRange(l, l); 
        } 
    }
    }
    </script>
    <form action="/topic" method="post" enctype="multipart/form-data" onsubmit="return c();" id="postform_main">
    <div id="postform">

    <input type="hidden" name="mode" value="regist" />
    <input type="hidden" name="MAX_FILE_SIZE" value="2048000" />
    <input type="hidden" name="upfile_path" value="" />
    <input type="hidden" name="nid" value="{{.Node.Id}}">
    <input type="hidden" name="fid" value="0">

    <div style="text-align: center;">
        <table cellpadding="1" cellspacing="1" id="postform_tbl" style="margin: 0px auto; text-align: left;">
        <tr><td class="Form_bg"><b>名 称</b></td><td>
        <input type="text" name="name" id="fname" size="28" value="" />
        <input type="submit" name="sendbtn" value="送 出" /></td></tr>
        <tr style="display:none"><td class="Form_bg"><b>E-mail</b></td><td>
        <input type="text" name="email" value="" /></td></tr>
        <tr style="display:none"><td class="Form_bg"><b>标 题</b></td><td>
        <input type="text" name="title" id="fsub" size="28" value="" /></td></tr>
        <tr><td class="Form_bg"><b>颜文字</b></td>
        <td><select id='emotion'><option value='' selected='selected'>颜文字</option><option value='|∀ﾟ'>|∀ﾟ</option><option value='(´ﾟДﾟ`)'>(´ﾟДﾟ`)</option><option value='(;´Д`)'>(;´Д`)</option><option value='(｀･ω･)'>(｀･ω･)</option><option value='(=ﾟωﾟ)='>(=ﾟωﾟ)=</option><option value='| ω・´)'>| ω・´)</option><option value='|-` )'>|-` )</option><option value='|д` )'>|д` )</option><option value='|ー` )'>|ー` )</option><option value='|∀` )'>|∀` )</option><option value='(つд⊂)'>(つд⊂)</option><option value='(ﾟДﾟ≡ﾟДﾟ)'>(ﾟДﾟ≡ﾟДﾟ)</option><option value='(＾o＾)ﾉ'>(＾o＾)ﾉ</option><option value='(|||ﾟДﾟ)'>(|||ﾟДﾟ)</option><option value='( ﾟ∀ﾟ)'>( ﾟ∀ﾟ)</option><option value='( ´∀`)'>( ´∀`)</option><option value='(*´∀`)'>(*´∀`)</option><option value='(*ﾟ∇ﾟ)'>(*ﾟ∇ﾟ)</option><option value='(*ﾟーﾟ)'>(*ﾟーﾟ)</option><option value='(　ﾟ 3ﾟ)'>(　ﾟ 3ﾟ)</option><option value='( ´ー`)'>( ´ー`)</option><option value='( ・_ゝ・)'>( ・_ゝ・)</option><option value='( ´_ゝ`)'>( ´_ゝ`)</option><option value='(*´д`)'>(*´д`)</option><option value='(・ー・)'>(・ー・)</option><option value='(・∀・)'>(・∀・)</option><option value='(ゝ∀･)'>(ゝ∀･)</option><option value='(〃∀〃)'>(〃∀〃)</option><option value='(*ﾟ∀ﾟ*)'>(*ﾟ∀ﾟ*)</option><option value='( ﾟ∀。)'>( ﾟ∀。)</option><option value='( `д´)'>( `д´)</option><option value='(`ε´ )'>(`ε´ )</option><option value='(`ヮ´ )'>(`ヮ´ )</option><option value='σ`∀´)'>σ`∀´)</option><option value=' ﾟ∀ﾟ)σ'> ﾟ∀ﾟ)σ</option><option value='ﾟ ∀ﾟ)ノ'>ﾟ ∀ﾟ)ノ</option><option value='(╬ﾟдﾟ)'>(╬ﾟдﾟ)</option><option value='(|||ﾟдﾟ)'>(|||ﾟдﾟ)</option><option value='( ﾟдﾟ)'>( ﾟдﾟ)</option><option value='Σ( ﾟдﾟ)'>Σ( ﾟдﾟ)</option><option value='( ;ﾟдﾟ)'>( ;ﾟдﾟ)</option><option value='( ;´д`)'>( ;´д`)</option><option value='(　д ) ﾟ ﾟ'>(　д ) ﾟ ﾟ</option><option value='( ☉д⊙)'>( ☉д⊙)</option><option value='(((　ﾟдﾟ)))'>(((　ﾟдﾟ)))</option><option value='( ` ・´)'>( ` ・´)</option><option value='( ´д`)'>( ´д`)</option><option value='( -д-)'>( -д-)</option><option value='(&gt;д&lt;)'>(&gt;д&lt;)</option><option value='･ﾟ( ﾉд`ﾟ)'>･ﾟ( ﾉд`ﾟ)</option><option value='( TдT)'>( TдT)</option><option value='(￣∇￣)'>(￣∇￣)</option><option value='(￣3￣)'>(￣3￣)</option><option value='(￣ｰ￣)'>(￣ｰ￣)</option><option value='(￣ . ￣)'>(￣ . ￣)</option><option value='(￣皿￣)'>(￣皿￣)</option><option value='(￣艸￣)'>(￣艸￣)</option><option value='(￣︿￣)'>(￣︿￣)</option><option value='(￣︶￣)'>(￣︶￣)</option><option value='ヾ(´ωﾟ｀)'>ヾ(´ωﾟ｀)</option><option value='(*´ω`*)'>(*´ω`*)</option><option value='(・ω・)'>(・ω・)</option><option value='( ´・ω)'>( ´・ω)</option><option value='(｀・ω)'>(｀・ω)</option><option value='(´・ω・`)'>(´・ω・`)</option><option value='(`・ω・´)'>(`・ω・´)</option><option value='( `_っ´)'>( `_っ´)</option><option value='( `ー´)'>( `ー´)</option><option value='( ´_っ`)'>( ´_っ`)</option><option value='( ´ρ`)'>( ´ρ`)</option><option value='( ﾟωﾟ)'>( ﾟωﾟ)</option><option value='(oﾟωﾟo)'>(oﾟωﾟo)</option><option value='(　^ω^)'>(　^ω^)</option><option value='(｡◕∀◕｡)'>(｡◕∀◕｡)</option><option value='/( ◕‿‿◕ )\'>/( ◕‿‿◕ )\</option><option value='ヾ(´ε`ヾ)'>ヾ(´ε`ヾ)</option><option value='(ノﾟ∀ﾟ)ノ'>(ノﾟ∀ﾟ)ノ</option><option value='(σﾟдﾟ)σ'>(σﾟдﾟ)σ</option><option value='(σﾟ∀ﾟ)σ'>(σﾟ∀ﾟ)σ</option><option value='|дﾟ )'>|дﾟ )</option><option value='┃電柱┃'>┃電柱┃</option><option value='ﾟ(つд`ﾟ)'>ﾟ(つд`ﾟ)</option><option value='ﾟÅﾟ )　'>ﾟÅﾟ )　</option><option value='⊂彡☆))д`)'>⊂彡☆))д`)</option><option value='⊂彡☆))д´)'>⊂彡☆))д´)</option><option value='⊂彡☆))∀`)'>⊂彡☆))∀`)</option><option value='(´∀((☆ミつ'>(´∀((☆ミつ</option></select></td>
        </tr>
        <tr><td class="Form_bg"><b>内 文</b></td><td>
        <textarea name="content" id="fcom" cols="48" rows="4" style="width: 400px; height: 80px;"></textarea></td></tr>
        <tr><td class="Form_bg"><b>附加图片</b></td><td><input type="file" name="upfile" id="fupfile" size="25" />
        </td></tr>
        <tr style="display:none"><td class="Form_bg"><b>类别</b></td><td><input type="text" name="category" size="28" value="" /><small>(请以 , 逗号分隔多个标籤)</small></td></tr>
        <tr style="display:none"><td class="Form_bg"><b>删除用密码</b></td><td><input type="password" name="pwd" size="8" maxlength="8" value="" /><small>(删除文章用。英数字8字元以内)</small></td></tr>
        <tr><td colspan="2">
        <div id="postinfo">
        <ul><li>可附加图档类型：GIF, JPG, PNG, BMP，浏览器才能正常附加图档</li><li>附加图档最大上传资料量为 2000 KB。</li><li>当档桉超过宽 250 像素、高 250 像素时会自动缩小尺寸显示</li>
        </ul>
            <noscript><div>＊您选择关闭了JavaScript，但这对您的浏览及发文应无巨大影响</div></noscript>
        </div>
        </td></tr>
        </table>
    </div>
    <script type="text/javascript">l1();</script>
    <hr />
    </div>
    </form>

<div id="contents">
<form action="/topic" method="post">
<div id="threads" class="autopagerize_page_element">
    {{ range .Topics}}
    <div class="threadpost" id="r51887">
            <span class="comments" style="display:none">0</span>
            {{ if .Pic}}
            <a href="/images/{{.Pic}}" rel="_blank" target="_blank">
                <img src="/images/{{.Pic}}" class="img" style="max-width:250px; max-height:250px"> 
            </a>
            {{ end }}
            <input type="checkbox" name="51887" value="delete" />
            <span class="title" style="display:none">无标题</span>
            名称: 
                            <span class="name">{{ .Name}}</span>            [{{dateformat .Created "2006-01-02 15:04:05"}} ID:{{ .Uid}}] <a href="/topic?id={{.Id}}&nid={{$.Node.Id}}#51887" class="qlink">No.{{ .Id}}</a>&nbsp;[<a href="/topic?id={{.Id}}&nid={{$.Node.Id}}">回应</a>]
                        <div class="quote">{{ .Content}}</div>
            <br />
            </div> <hr>
    {{ end }}
</div>
        

<div id="del">
    <table style="float: right;">
        <tr><td align="center" style="white-space: nowrap;">
        <input type="hidden" name="mode" value="usrdel" />【刪除文章】[<input type="checkbox" name="onlyimgdel" id="onlyimgdel" value="on" /><label for="onlyimgdel">仅删除附加图片</label>]<br />
        删除用密码: <input type="password" name="pwd" size="8" value="" /><input type="submit" value=" 执行 " />
        </td></tr>
    </table>
</div>
<script type="text/javascript">l2();</script>
</from>


<div id="page_switch">
{{if gt .paginator.PageNums 1}}
    {{if .paginator.HasPrev}}
        <a class="prev" style="white-space: nowrap;" href="{{.paginator.PageLinkPrev}}">上一页</a>
    {{end}}
    {{range $index, $page := .paginator.Pages}}
        {{if $.paginator.IsActive .}}
            [{{$page}}]
        {{ else }}
        [<a class="num" href="{{$.paginator.PageLink $page}}">{{$page}}</a>] 
        {{ end}}
    {{end}}
    {{if .paginator.HasNext}}
        <a class="prev" style="white-space: nowrap;" href="{{.paginator.PageLinkNext}}">下一页</a>
    {{end}}
{{end}}
</div>
</body>
</html>
