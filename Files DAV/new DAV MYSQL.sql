SELECT lname,fname,mname,Date_Converter(dob)as dob1,dob from cif
group by lname,fname,mname,dob
order by lname,fname,mname
