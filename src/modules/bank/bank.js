const model = require('./model')

module.exports = {
    GET: async(req, res) => {
        try{
            const { roomINFOID } = req.params
            const AllroomINFOID  = (await model.GET_Room_INFO(roomINFOID))
            res.json(AllroomINFOID)
        }catch(err){
            console.log(err);
			res.sendStatus(500);
        }
    },

    BANK_GET: async(req, res) => {
        try{
            const {bank_limit_price, bank_month} = req.params
            const AllBANKPRICE = (await model.getBanks(bank_limit_price, bank_month))
            res.json(AllBANKPRICE)
        }catch(err){
            console.log(err)
            res.sendStatus(500);
        }
     },
     POST : async (req, res) => {
        try{
            const { bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent} = req.body
            const addbank = await model.postBAnk(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent)
            res.json(addbank)
        }catch(err){
            console.log(err);
            res.sendStatus(5000)
        }
     }
}