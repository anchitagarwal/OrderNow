package ordernow

import groovy.sql.Sql

class AddMemberController {

	def user_type_null_flag = '0'
	def password_flag = '0'
	def user_exist_flag = '0'

	def index() {
	}

	def addMembertoDB() {
		def name = params.name
		def email = params.email
		def password = params.password
		def password_confirm = params.password_confirm
		def user_type = params.user_type

		if (user_type == '') {
			user_type_null_flag = '1'
			redirect (action: 'index', params: [user_type_null_flag: user_type_null_flag])
		}
		
		if (password != password_confirm) {
			password_flag = '1'
			redirect (action: 'index', params: [password_flag: password_flag])
		}

		if (user_type_null_flag == '0' && password_flag == '0') {
			def dbDriver = 'com.mysql.jdbc.Driver'
			def dbUser = 'root'
			def dbPassword = 'admin'
			def dbURL = 'jdbc:mysql://localhost:3306/order_now'

			def sql = Sql.newInstance(dbURL, dbUser, dbPassword, dbDriver)

			def checkQuery = 'select id from users where email = "' + email + '"'
			def status = sql.rows(checkQuery)
			if (status.size() > 0) {
				user_exist_flag = '1'
				redirect (action: 'index', params: [user_exist_flag: user_exist_flag])
			}
			
			else {
				int user_type_int = user_type.toInteger()
				int one = 1
				def user_added_flag = '1'
				sql.execute("insert into users (name, email, pass, user_type, active) values (?, ?, ?, ?, ?)", name, email, password, user_type_int, one)
				redirect (controller: 'Admin', action: 'index', params: [user_added_flag: user_added_flag])
			}
		}
	}
}
