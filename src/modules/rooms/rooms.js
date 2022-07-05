const model = require('./model');

module.exports = {
	GET: async (req, res) => {
		try {
			const { id } = req.params;
			console.log(id);
			const roomALL = await model.getBranchRooms(id);
			res.json(roomALL);
		} catch (err) {
			console.log(err);
			res.sendStatus(500);
		}
	},

	POST: async (req, res) => {
		try{
			const { room_of_number, room_kv, room_per_price, cmp_branch_id} = req.body
			const postroompost = await model.postRooms(room_of_number, room_kv, room_per_price, cmp_branch_id)
			res.json(postroompost)
		}catch(err){
			console.log(err);
			res.sendStatus(5000)
		}
	}
   
};
