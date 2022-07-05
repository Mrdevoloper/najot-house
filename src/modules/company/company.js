const model = require('./model')

module.exports = {
    GET:  async(_, res) => {
        try {
            res.json(await model.getCompany())
        } catch(err) {
            console.log(err);
            res.sendStatus(500)
        }
    },
    POST: async(req, res) =>  {
        try {
            const {name, pic} = req.body
            const postCompany = await model.postCompany(name, pic)
            res.json(postCompany)
        }catch(err){
            console.log(err);
            res.sendStatus(500)
        }
    }
}