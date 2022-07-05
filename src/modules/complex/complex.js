const model = require('./model');

module.exports = {
    GET: async (req, res) => {
        try{ 
            const {complexId} = req.params
            const complexAll = await model.getBranchCompany(complexId)
            res.json(complexAll)
        }catch(err){
            console.log(err);
            res.sendStatus(500)
        }
    },

    POST_COMPLEX: async (req, res) => {
        try{
            const { cmp_branch_name, company_id} = req.body
            const cretacomplex = await model.postcomplex(cmp_branch_name, company_id)
            res.json(cretacomplex)
        }catch(err){
            console.log(err);
            res.sendStatus(500)
        }
    }
  
}