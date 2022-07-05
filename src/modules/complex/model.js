const { fetchData } = require('../../utils/postgres');

const complex = `
   SELECT
      *
   FROM
      company_branches cb
   WHERE
      cb.company_id = $1
`

const creteComplex = `INSERT INTO company_branches(cmp_branch_name, company_id) VALUES($1, $2::int) RETURNING *`



const postcomplex = ( cmp_branch_name, company_id) => fetchData(creteComplex, cmp_branch_name, company_id);


const getBranchCompany = (company_id) => fetchData(complex, company_id);



module.exports = {
	getBranchCompany,
   postcomplex
};