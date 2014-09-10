package models

import (
	"github.com/Unknwon/com"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/mattn/go-sqlite3"
	"os"
	"path"
	"strconv"
	"time"
)

const (
	_DB_NAME        = "data/qiaoblog.db"
	_SQLITE3_DRIVER = "sqlite3"
)

type Node struct {
	Id      int64
	Name    string `orm:"size(100)"`
	Created time.Time
	Updated time.Time
}

type Topic struct {
	Id      int64
	Uid     string `orm:"size(10)"`
	Fid     int64  `orm:"default(0)"`
	Name    string
	Nid     int64
	Content string    `orm:"size(5000)"`
	Created time.Time `orm:"index"`
	Updated time.Time `orm:"index"`
	Pic     string    `orm:"size(500)"`
}
type User struct {
	Id     int64
	Uid    string `orm:"size(20)"`
	Cookie string `orm:"size(100)"`
	Sage   bool   `orm:"default(false)"`
}

func RegisterDB() {
	if !com.IsExist(_DB_NAME) {
		os.Mkdir(path.Dir(_DB_NAME), os.ModePerm)
		os.Create(_DB_NAME)
	}

	orm.RegisterModel(new(Node), new(Topic), new(User))
	orm.RegisterDriver(_SQLITE3_DRIVER, orm.DR_Sqlite)
	orm.RegisterDataBase("default", _SQLITE3_DRIVER, _DB_NAME, 10)
}

func AddNode(name string) error {
	o := orm.NewOrm()
	node := &Node{
		Name:    name,
		Created: time.Now(),
		Updated: time.Now(),
	}
	_, err := o.Insert(node)
	return err
}

func GetAllNode(isDesc bool) (node []*Node, err error) {
	o := orm.NewOrm()
	node = make([]*Node, 0)
	qs := o.QueryTable("node")
	if isDesc {
		_, err = qs.OrderBy("-created").All(&node)
	} else {
		_, err = qs.All(&node)
	}
	return node, err
}
func GetNodeById(nid string) (node *Node, err error) {
	nidNum, err := strconv.ParseInt(nid, 10, 64)
	if err != nil {
		return nil, err
	}
	o := orm.NewOrm()
	node = new(Node)
	qs := o.QueryTable("node")
	err = qs.Filter("id", nidNum).One(node)
	if err != nil {
		return nil, err
	}
	return node, nil
}

func AddTopic(uid, name, content, pic, nid, fid string) error {
	nidNum, err := strconv.ParseInt(nid, 10, 64)
	if err != nil {
		return err
	}
	fidNum, _ := strconv.ParseInt(fid, 10, 64)
	o := orm.NewOrm()
	topic := &Topic{
		Uid:     uid,
		Nid:     nidNum,
		Fid:     fidNum,
		Name:    name,
		Content: content,
		Pic:     pic,
		Created: time.Now(),
		Updated: time.Now(),
	}
	//判断是否是子串，如果是就更新父串的Update时间
	if fidNum != 0 {
		beego.Info("qwe:")
		otmp := orm.NewOrm()
		qst := otmp.QueryTable("topic")
		tf := new(Topic)
		err = qst.Filter("id", fidNum).One(tf)
		tf.Updated = time.Now()
		otmp.Update(tf)

	}
	_, err = o.Insert(topic)
	return err
}

func GetAllTopic(isDesc bool) (topics []*Topic, err error) {
	o := orm.NewOrm()
	topics = make([]*Topic, 0)
	qs := o.QueryTable("topic")
	if isDesc {
		_, err = qs.OrderBy("-created").All(&topics)
	} else {
		_, err = qs.All(&topics)
	}
	return topics, err
}
func GetTopic(nid string, per, count int) (topics []*Topic, err error) {
	nidNum, err := strconv.ParseInt(nid, 10, 64)
	if err != nil {
		return nil, err
	}
	o := orm.NewOrm()
	topics = make([]*Topic, 0)
	qs := o.QueryTable("topic")
	qs.Filter("nid", nidNum).Filter("fid", 0).Limit(per, count).OrderBy("-updated").All(&topics)
	return topics, err
}

func GetSonTopic(fid string, length, offset int) (topics []*Topic, err error) {
	fidNum, err := strconv.ParseInt(fid, 10, 64)
	if err != nil {
		return nil, err
	}
	o := orm.NewOrm()
	topics = make([]*Topic, 0)
	qs := o.QueryTable("topic")
	qs.Filter("fid", fidNum).Limit(length, offset).All(&topics)
	return topics, err
}
func GetSonTopicCount(fid string) (count int64, err error) {
	fidNum, err := strconv.ParseInt(fid, 10, 64)
	if err != nil {
		return 0, err
	}
	o := orm.NewOrm()
	qs := o.QueryTable("topic")
	count, err = qs.Filter("fid", fidNum).Count()
	return count, err
}
func GetTopicCount() (count int64, err error) {
	o := orm.NewOrm()
	qs := o.QueryTable("topic")
	count, err = qs.Filter("fid", 0).Count()
	return count, err
}
func FindTopicById(id string) (*Topic, error) {
	tidNum, err := strconv.ParseInt(id, 10, 64)
	if err != nil {
		return nil, err
	}
	o := orm.NewOrm()
	qs := o.QueryTable("topic")
	topic := new(Topic)
	err = qs.Filter("id", tidNum).One(topic)
	if err != nil {
		return nil, err
	}
	return topic, nil
}
func AddUser(uid, cookie string) error {
	o := orm.NewOrm()
	user := &User{
		Uid:    uid,
		Cookie: cookie,
	}
	_, err := o.Insert(user)
	return err
}
func FindUidByCookie(cookie string) (uid string, err error) {
	o := orm.NewOrm()
	qs := o.QueryTable("user")
	user := new(User)
	err = qs.Filter("cookie", cookie).One(user)
	if err != nil {
		return "", err
	}
	return user.Uid, nil
}
