package ordernow

import java.sql.SQLClientInfoException;

import groovy.sql.Sql

class LoginController {

	static def Username, Password
	def fail_flag = '0'
	
    def index() {
		render(view: "index")
	}
	
	public def UserAuthentication() {
		Username = "${params.username}"
		Password = "${params.password}"
		
		if (Password != '') {
			boolean flag = UserValidate(Username, Password)
			if (flag == true)
				redirect (controller: 'Admin', action: 'index')
			else {
				fail_flag = '1'
				render (view: 'invalidLogin', model: [fail_flag: fail_flag])
			}
		}
		
		else {
				fail_flag = '1'
				render (view: 'invalidLogin', model: [fail_flag: fail_flag])
		}
	}
	
	boolean UserValidate(def user, def pass) {
		def dbDriver = 'com.mysql.jdbc.Driver'
		def dbUser = 'root'
		def dbPassword = 'admin'
		def dbURL = 'jdbc:mysql://localhost:3306/order_now'
		
		def sql = Sql.newInstance(dbURL, dbUser, dbPassword, dbDriver)
		
		def checkAdminQuery = 'select id from users where email = "' + user + '" and pass = "' + pass + '" and user_type=3'
		def status = sql.rows(checkAdminQuery)
		if (status.size() > 0) {
			return true
		}
		
		else
			return false
	}
}
