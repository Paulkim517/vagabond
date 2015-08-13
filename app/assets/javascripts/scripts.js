$(function() {
	// jQuery Validate
	$("#post_new").validate({
		rules: {
			"post[title]": {
				required: true,
				minlength: 2,
				maxlength: 200
			},
			"post[body]": {
				required: true,
				minlength: 2,
				maxlength: 200
			}
		},
		messages: {
			"post[title]": {
				required: "Please enter a title",
				minlength: "Your title must be at least 2 characters",
				maxlength: "Your title must be shorter than 200 characters"
			},
			"post[body]": {
				required: "Please enter a body",
				minlength: "Your body must be at least 2 characters",
				maxlength: "Your body must be shorter than 200 characters"
			}
		}
	});

	$("#new_user").validate({
		rules: {
			"user[username]": {
				required: true,
				minlength: 2
			},
			"user[email]": {
				required: true,
				email: true,
			},
			"user[password]": {
				required: true,
				minlength: 6
			},
			// "user[confirm_password]": {
			// 	required: true,
			// 	minlength: 6,
			// 	equalTo: "#user_password"
			// },
			"user[location]": {
				required: true,
				minlength: 1
			}
		},
		messages: {
			"user[username]": {
				required: "Please enter a username",
				minlength: "Username must be longer than 2 characters"
			},
			"user[email]": {
				required: "Please enter an email",
				email: "Please enter a valid email"
			},
			"user[password]": {
				required: "Please enter a password",
				minlength: "Your password must be at least 6 characters"
			},
			// "user[confirm_password]": {
			// 	required: "Please confirm your password",
			// 	minlength: "Your password must be at least 6 characters",
			// 	equalTo: "Please enter the same password as above"
			// },
			"user[location]": {
				required: "Please enter a location",
				minlength: "Location must be longer than 1 character"
			}
		}
	});

	$("#login_form").validate({
		rules: {
			"user[email]": {
				required: true,
				email: true,
			},
			"user[password]": {
				required: true,
				minlength: 6
			}
		},
		messages: {
			"user[email]": {
				required: "Please enter an email",
				email: "Please enter a valid email"
			},
			"user[password]": {
				required: "Please enter a password",
				minlength: "Your password must be at least 6 characters"
			},
		}
	});

});