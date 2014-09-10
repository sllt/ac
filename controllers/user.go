package controllers

import (
	"ac/models"
	"crypto/md5"
	"encoding/hex"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
	"math/rand"
	"time"
)

type UserController struct {
	beego.Controller
}

func (this *UserController) Get() {

	this.TplNames = "index.tpl"
}

func GetID() string {
	a := []byte{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9'}
	rand.Seed(time.Now().Unix())
	str := ""
	for i := 0; i < 8; i++ {
		str += string(a[rand.Intn(len(a))])
	}
	beego.Info(str)
	return str
}

func giveCookie(ctx *context.Context) {
	_, err := ctx.Request.Cookie("uid")
	if err != nil {
		//没有cookie
		uid := GetID()
		h := md5.New()
		h.Write([]byte(uid))
		cookie := hex.EncodeToString(h.Sum(nil))
		err = models.AddUser(uid, cookie)
		if err != nil {
			return
		}
		ctx.SetCookie("uid", cookie, 1<<31-1)
		beego.Info(cookie)

	}
	return
}
