const { fetchData } = require('../../utils/postgres')

const roomComplex = `
   SELECT
     *
   FROM
      company_rooms cr
   WHERE
      cr.cmp_branch_id = $1    
`

const creteRoom = ` INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES($1, $2, $3, $4) RETURNING * `

const postRooms = (room_of_number, room_kv, room_per_price, cmp_branch_id) => fetchData(creteRoom, room_of_number, room_kv, room_per_price, cmp_branch_id)

const getBranchRooms = (cmp_branch_id) => fetchData(roomComplex, cmp_branch_id)

module.exports = {
    getBranchRooms,
    postRooms
}
