const axios = require('axios');

async function sendSMS(mobile, username, otp) {
	try {
		const apiUrl = `http://colourmoontraining.com/otp_sms/sendsms?user_id=invtechnologies&mobile=${mobile}&message=Dear ${username} your one time password (OTP) ${otp} Regards CMTOTP`;
		// Send the HTTP GET request to the SMS service
		const response = await axios.post(apiUrl);

		// Check the response status from the SMS service
		if (response.status === 200) {
			return { success: true, message: 'SMS sent successfully' };
		} else {
			return { success: false, message: 'SMS sending failed' };
		}
	} catch (error) {
		console.error('An error occurred:', error);
		return { success: false, message: 'SMS sending failed' };
	}
}

async function sendSMS2() {
	try {
		const apiKey = 'NDE3NTc4NmY0ZjM5NDM2MjU5NDg2NjZmNmY2MzQ4NjM=';
		const message = 'This is your message';
		const sender = 'TXTLCL';
		const numbers = '919059108434';

		const data = new URLSearchParams();
		data.append('apikey', apiKey);
		data.append('message', message);
		data.append('sender', sender);
		data.append('numbers', numbers);

		const response = await axios.post('https://api.textlocal.in/send/', data);

		return response.data;
	} catch (error) {
		console.error('Error SMS', error);
		return `Error ${error}`;
	}
}

module.exports = { sendSMS };
