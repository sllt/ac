package main

import (
	"ac/controllers"
	"ac/models"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

func init() {
	//register dabase
	models.RegisterDB()
	beego.SetStaticPath("/images", "images")
}
func main() {
	//start ORM debug
	orm.Debug = true
	//create table
	orm.RunSyncdb("default", false, true)
	beego.Router("/", &controllers.MainController{})
	beego.Router("/menu", &controllers.PageController{}, "get:Menu")
	beego.Router("/news", &controllers.PageController{}, "get:News")
	beego.Router("/node/:id", &controllers.NodeController{})
	beego.Router("/topic", &controllers.TopicController{})
	beego.Router("/admin/menu", &controllers.AdminController{})
	beego.Run()
}
