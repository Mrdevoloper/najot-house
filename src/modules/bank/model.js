const { fetchData } = require('../../utils/postgres')

const roomInfo = `
SELECT room_kv * room_per_price as infoALL FROM company_rooms WHERE room_id = $1
`
const banks = `
SELECT
    bank_pic,
    bank_name, 
    bank_limit_price, 
    bank_limit_year,
    bank_limit_persent,
   ( $1 * bank_limit_persent)/100 as payment ,
   ($1 - ( $1 * bank_limit_persent)/100 ) / ($2 * 12) as month
FROM
    bank
WHERE
    bank_limit_price >= $1
ORDER BY
   bank_limit_price
LIMIT 1
`

const addBank = ` INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent) VALUES($1, $2, $3, $4, $5) RETURNING *`


const GET_Room_INFO = (roomINFOID) => fetchData(roomInfo, roomINFOID)

const getBanks = (bank_limit_price, bank_month) => fetchData(banks, bank_limit_price, bank_month)

const postBAnk = (bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent) => fetchData( addBank, bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent)

module.exports = {
    getBanks,
    GET_Room_INFO,
    postBAnk
}




