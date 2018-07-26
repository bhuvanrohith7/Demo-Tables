SELECT c.id,c.name,c.emailid,c.contactinfo,e.degree,e.college,e.yearofpassing,w.domain,w.companyworked,w.yearsofexpereince FROM candidates as c  JOIN
education as e on e.id = c.id  JOIN
workexperience as w on w.id = c.id 
GROUP BY c.id;