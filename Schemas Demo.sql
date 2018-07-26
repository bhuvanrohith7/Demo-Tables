CREATE TABLE IF NOT EXISTS user(
    userid   INT AUTO_INCREMENT PRIMARY KEY 
    username char(30) NOT NULL default '',
    pass_word VARCHAR(255) NOT NULL default '',
    last_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

); 
//----Passwords stored as INSERT INTO user(userid,username, password) 
//------VALUES('mypassword','myUserName', SHA1('myPassword')); for security purposes------------//


CREATE TABLE IF NOT EXISTS candidates (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name char(25) NOT NULL default '',
last_name char(25) NOT NULL default '',
email_id  char(50) NOT NULL default '',
phone_no BIGINT(12) NOT NULL default '0',
tech_skills VARCHAR(100) NOT NULL default '',
degree VARCHAR(50) NOT NULL default '',
college VARCHAR(50) NOT NULL default '',
year_passing INT(10) NOT NULL default '0',
present_working_company VARCHAR(80) NOT NULL default '',
years_expereince INT NOT NULL default '0',
KEY(email_id),
last_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);


CREATE TABLE IF NOT EXISTS company (
    id INT AUTO_INCREMENT ,
    company_name VARCHAR(50) NOT NULL default '' ,
    technologies VARCHAR(100) NOT NULL default '',
    no_employees INT NOT NULL default '0', 
    openings_roles VARCHAR(80) default '',
    no_openings INT NOT NULL default '0',
    KEY(openings_roles),
    KEY(no_openings), 
    PRIMARY KEY (id),
    last_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    
);

/*CREATE TABLE IF NOT EXISTS education (
    id INT AUTO_INCREMENT,
    degree VARCHAR(50) NOT NULL default '',
    college VARCHAR(50) NOT NULL default '',
    year_passing INT(10) NOT NULL default '0',
    FOREIGN KEY fk_id(id) REFERENCES candidates(id)
    ON DELETE CASCADE

);*/
