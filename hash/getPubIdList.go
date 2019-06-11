package hashtest


import (
	"github.com/globalsign/mgo"
	"github.com/globalsign/mgo/bson"
)

type App struct {
	id string
}
type Application struct {
	ID bson.ObjectId `bson:"_id"`
}

func getPubList() []string {
	selector := bson.M{
		"_id": 1,
	}
	session, _:= mgo.Dial("mongodb://mongo:27017")
	defer session.Close()
	c := session.DB("vvv-repl").C("applications")
	mQuery := c.Find(bson.M{
		"archived": false,
		"type":     bson.M{"$ne": "advertiser"},
		"status":   bson.M{"$in": []string{"a", "t"}}}).
		Select(selector)
	iter := mQuery.Iter()

	results := make([]string, 0)
	for {
		record := &Application{}
		if !iter.Next(record) {
			break
		}

		app := &App{id: record.ID.Hex()}
		if app != nil {
			results = append(results, app.id)
		}
	}

	if err := iter.Close(); err != nil {
		return []string{}
	}

	return results
}