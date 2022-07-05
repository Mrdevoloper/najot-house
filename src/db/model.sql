CREATE EXTENSION "uuid-ossp";
CREATE DATABASE exam;

CREATE TABLE company(
    company_id SERIAL NOT NULL PRIMARY KEY,
    company_name text not null,
    company_pic text not null
);

CREATE TABLE company_branches(
    cmp_branch_id SERIAL NOT NULL PRIMARY KEY,
    cmp_branch_name text not null,
    company_id int not null,
     FOREIGN KEY (company_id)
     REFERENCES company(company_id)         
);

CREATE TABLE company_rooms(
    room_id SERIAL NOT NULL PRIMARY KEY,
    room_of_number int,
    room_kv bigint,
    room_per_price bigint,
    cmp_branch_id int not null,
        FOREIGN KEY(cmp_branch_id)
        REFERENCES company_branches(cmp_branch_id)
        ON DELETE CASCADE
);

CREATE TABLE bank(
    bank_id SERIAL NOT NULL PRIMARY KEY,
    bank_name text not null,
    bank_pic text not null,
    bank_limit_year BIGINT,
    bank_limit_price BIGINT,
    bank_limit_persent BIGINT
);


INSERT INTO company(company_name, company_pic) VALUES('Murad Buildings', 'https://www.mbc.uz/includes/images/new_layout/logo.svg');
INSERT INTO company(company_name, company_pic) VALUES('Golden House', 'https://i.pinimg.com/originals/55/7c/62/557c626d71ce806dd2bd102b5a126001.png');
INSERT INTO company(company_name, company_pic) VALUES('Tashkent City', 'https://www.afisha.uz/ui/catalog/2019/11/0831960.png');
INSERT INTO company(company_name, company_pic) VALUES('Akay City', 'https://bravo.uz/uploads/1/miQf9LgWwKao4g-tAEgpb4a0qhooczBF.png');

INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Murad City', 1);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Murad Olmazor',  1);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Murad Chilonzor',  1);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Gold Olmazor',2);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Golden Home', 2);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Golden Olma', 2);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Tashkent park', 3);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Tashkent City park',  3);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Tash City', 3);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Hilton', 3);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Akay park', 4);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Akay City park', 4);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Akay TAshket park',  4);
INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('Olmazor park',  4);



INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 2387676, 1);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 2387676, 1);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 2387676, 1);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234,13245, 2);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342,13245, 2);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432,13245, 2);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543,13245, 2);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 123324, 3);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 123324, 3);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 123324, 3);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 123324, 3);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 2345345, 4);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 2345345, 4);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 2345345, 4);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 2345345, 4);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 123434, 5);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 123434, 5);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 123434, 5);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 123434, 5);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 12344, 6);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 12344, 6);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 12344, 6);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 12344, 6);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 12344, 7);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 12344, 7);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 12344, 7);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 12344, 7);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 1234500, 8);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 1234500, 8);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 1234500, 8);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 1234500, 8);


INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 5000000, 9);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 5000000, 9);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 5000000, 9);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 5000000, 9);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 230000, 10);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 230000, 10);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 230000, 10);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 230000, 10);


INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 450000, 11);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 450000, 11);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 450000, 11);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 450000, 11);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 65433323, 12);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 65433323, 12);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 65433323, 12);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 65433323, 12);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 23453123, 13);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 23453123, 13);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 23453123, 13);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 23453123, 13);

INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 2, 234, 3456754323, 14);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 3, 342, 3456754323, 14);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 4, 432, 3456754323, 14);
INSERT INTO company_rooms(room_of_number, room_kv, room_per_price, cmp_branch_id) VALUES( 6, 543, 3456754323, 14);




INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('NBU', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/NBU_new_logo.jpg', 10, 74000000, 10);
INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('NBU', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/NBU_new_logo.jpg', 10, 74012342190000, 10);
INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('NBU', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/NBU_new_logo.jpg', 17, 740000, 18);


INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('IPoteka Bank', 'https://bank.uz/upload/iblock/e3b/e3b003f0b4927ba5563de413eefcfd94.png', 15, 54087657560000, 18);
INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('IPoteka Bank', 'https://bank.uz/upload/iblock/e3b/e3b003f0b4927ba5563de413eefcfd94.png', 22, 5400000, 25);

INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('Orient Finance Bank', 'https://marketing.uz/adweek-2020/uploads/articles/51/article-original.png', 16,  12008708765000, 14);
INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('Orient Finance Bank', 'https://marketing.uz/adweek-2020/uploads/articles/51/article-original.png', 20,  12000000, 20);
INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('Orient Finance Bank', 'https://marketing.uz/adweek-2020/uploads/articles/51/article-original.png', 20,  1200000, 20);



INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('Islom Bank', 'https://static.review.uz/crop/2/0/736__85_204966669.jpg?v=1607177187', 12, 1000875876560, 12);
INSERT INTO bank(bank_name, bank_pic, bank_limit_year, bank_limit_price, bank_limit_persent ) VALUES('Islom Bank', 'https://static.review.uz/crop/2/0/736__85_204966669.jpg?v=1607177187', 20, 45999000, 17);




CREATE TABLE bank(
    bank_id SERIAL NOT NULL PRIMARY KEY,
    bank_name text not null,
    bank_pic text not null,
    bank_limit_year BIGINT,
    bank_limit_price BIGINT,
    bank_limit_persent BIGINT
);


SELECT
    bank_name, 
    bank_limit_price, 
    bank_limit_year,
    bank_limit_persent,
   ( $1 * bank_limit_persent)/100 as payment ,
   ($1 -( $1 * bank_limit_persent)/100 ) / ($2 *12) as month
FROM
    bank
WHERE
    bank_limit_price > $1
ORDER BY
   bank_limit_price
   LIMIT 1


    INSERT INTO company_branches (cmp_branch_name, company_id) VALUES( 'arab complex', 1);

    INSERT INTO company_branches(cmp_branch_name, company_id) VALUES('arab bank', 4);

























--      const url = "http://localhost:5000/company"
--     const [data, setData] = useState({
--          name: "",
--          pic: ""
--     })

--     function submit (e) {
--          e.preventDefault();
--          axios.post(url, {
--             name: data.name,
--             pic: data.pic,
               
--          })
--          .then( res => {
--             console.log(res.data);
--          })
--     }

--     function handle (e){
--               const newData = {... data}
--               newData[e.target.id] = e.target.value
--               setData(newData)
--     }
    



--     const url1 = "http://localhost:5000/complex"
--     const [complex, setcomplex] = useState({
--         cmp_branch_name:"",
--         company_id:""
--     })


--     function submit (e) {
--         e.preventDefault();
--         axios.post(url1, {
--            cmp_branch_name: complex.cmp_branch_name,
--            company_id: parseInt(complex.company_id)

--         })
--         .then( res => {
--            console.log(res.complex);
--         })
     
--     }
--     function handlee (e) {
--         const newComplex = {... complex}
--         newComplex[e.target.id] = e.target.value
--         setcomplex(newComplex)
--         console.log(newComplex);
-- }

--     return(
--         <>
        
--         <h1>Admin</h1>
--         <div>
--             <form onSubmit={(e) => submit(e)}>
--                 <input onChange={ e => handle(e) } id="name" value={data.name} placeholder="CompanyName" type="text" />
--                 <input onChange={ e => handle(e) } id="pic" value={data.pic} placeholder="CompanyPic" type="text" />
--                 <button>submit</button>
--             </form>
--         </div>

--         <div>
--             <form onSubmit={(e) => submit(e)}>
--                 <input onChange={ e => handlee (e) } id="cmp_branch_name" value={complex.cmp_branch_name} placeholder="complex_name" type="text" />
--                 <input onChange={ e => handlee (e) } id="company_id" value={complex.company_id} placeholder="complex_name" type="number" />
--                 <button>submit</button>
--             </form>
--         </div>
--         </>
--     )