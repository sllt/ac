package controllers

import (
	"ac/models"
	"github.com/astaxie/beego"
)

type AdminController struct {
	beego.Controller
}

func (this *AdminController) Get() {
	models.AddNode("综合版")
	models.AddNode("小说")
	this.TplNames = "admin.tpl"

}
