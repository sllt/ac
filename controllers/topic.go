package controllers

import (
	"ac/models"
	"ac/untils"
	"github.com/astaxie/beego"
	"path"
	"regexp"
	//"strconv"
)

type TopicController struct {
	beego.Controller
}

func (this *TopicController) SetPaginator(per int, nums int64) *utils.Paginator {
	p := utils.NewPaginator(this.Ctx.Request, per, nums)
	this.Data["paginator"] = p
	return p
}
func (this *TopicController) Get() {
	id := this.Input().Get("id")
	nid := this.Input().Get("nid")
	beego.Info("nid:" + nid)
	this.Data["Tid"] = id
	this.Data["Nid"] = nid
	topic, _ := models.FindTopicById(id)
	this.Data["Topic"] = topic
	//stopic, _ := models.GetSonTopic(id)
	count, _ := models.GetSonTopicCount(id)
	p := this.SetPaginator(10, count)
	stopic, _ := models.GetSonTopic(id, 10, p.Offset())
	reg := regexp.MustCompile(`>>No\.(.*?)\n`)

	for _, v := range stopic {
		stmp := `<a class="qlink" href="#r${1}" onclick="replyhl(${1});">  >>No.${1}</a><br>`
		//beego.Info(strconv.FormatInt(v.Id, 10))

		//beego.Info(reg.ReplaceAllString(v.Content, stmp))
		v.Content = reg.ReplaceAllString(v.Content, stmp)
	}
	this.Data["Test"] = stopic

	//beego.Info(id)
	this.TplNames = "content.tpl"
}

func (this *TopicController) Post() {

	name := this.Input().Get("name")
	content := this.Input().Get("content")
	nid := this.Input().Get("nid")
	fid := this.Input().Get("fid")
	beego.Info("name:" + name + "content:" + content)
	cookie, err := this.Ctx.Request.Cookie("uid")
	if err != nil {
		this.Ctx.WriteString("没有授权")
	}
	uid, err := models.FindUidByCookie(cookie.Value)
	if name == "" {
		name = "无名氏"
	}
	beego.Info("fid:" + fid)
	_, fh, err := this.GetFile("upfile")
	if err != nil {
		beego.Error(err)
	}

	var attachment string
	if fh != nil {
		// 保存附件
		attachment = fh.Filename
		beego.Info(attachment)
		err = this.SaveToFile("upfile", path.Join("images", attachment))
		if err != nil {
			beego.Error(err)
		}
		err = models.AddTopic(uid, name, content, fh.Filename, nid, fid)
	} else {
		models.AddTopic(uid, name, content, "", nid, fid)
	}

	beego.Error(err)
	this.Ctx.WriteString("发送成功")
}
