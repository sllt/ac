package controllers

import (
	"ac/models"
	"github.com/astaxie/beego"
)

type PageController struct {
	beego.Controller
}

func (this *PageController) Menu() {

	nodes, err := models.GetAllNode(false)
	if err == nil {
		this.Data["Nodes"] = nodes
	}
	this.TplNames = "menu.tpl"

}

func (this *PageController) News() {
	this.TplNames = "news.tpl"
}
