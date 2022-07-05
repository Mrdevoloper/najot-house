const { fetchData } = require('../../utils/postgres')

const company = `SELECT * FROM company`;


const creteCompany = `INSERT INTO company(company_name, company_pic) VALUES($1, $2) RETURNING * `


const postCompany = (name, pic) => fetchData(creteCompany, name, pic)

const getCompany = () => fetchData(company)

module.exports = {
    getCompany,
    postCompany
}
