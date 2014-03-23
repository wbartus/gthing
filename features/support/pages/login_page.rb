class LoginPage
	include PageObject

	page_url("http://www.gmail.com")
	select_list(:select_language, :id => 'lang-chooser')
	h2(:text, :class => 'hidden-small')
	text_field(:email, :id => "Email")
	text_field(:password, :id => "Passwd")
	button(:confirm_login, :id => "signIn")
	

end
