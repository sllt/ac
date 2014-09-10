package controllers

import (
	"ac/models"
	"ac/untils"
	"github.com/astaxie/beego"
)

type NodeController struct {
	beego.Controller
}

func (this *NodeController) SetPaginator(per int, nums int64) *utils.Paginator {
	p := utils.NewPaginator(this.Ctx.Request, per, nums)
	this.Data["paginator"] = p
	return p
}

func (this *NodeController) Get() {
	nid := this.Ctx.Input.Param(":id")
	node, err := models.GetNodeById(nid)
	count, _ := models.GetTopicCount()
	p := this.SetPaginator(10, count)
	topics, err := models.GetTopic(nid, 10, p.Offset())
	if err == nil {
		this.Data["Topics"] = topics
	}
	this.Data["Node"] = node
	beego.Info(count)
	this.TplNames = "topic.tpl"
}
