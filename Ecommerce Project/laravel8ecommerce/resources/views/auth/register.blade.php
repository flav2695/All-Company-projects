
<!-- Second comment login.blade.php entire code and copy register.html-> main tag code and paste it in register.blade.php between  x-guest-layout tag and /x-guest-layout tag. -->

<x-guest-layout>

	<!--main area-->
	<main id="main" class="main-site left-sidebar">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="/" class="link">home</a></li> <!-- Remove # and add / -->
					<li class="item-link"><span>Register</span></li>
				</ul>
			</div>
			<div class="row">
				<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 col-md-offset-3">							
					<div class=" main-content-area">
						<div class="wrap-login-item ">
							<div class="register-form form-item ">
                                <x-jet-validation-errors class="mb-4" />
								<form class="form-stl" action="{{ route('register') }}" name="frm-login" method="POST" > <!-- Add method="POST" action="{{ route('register') }}" here-->
									@csrf   <!-- Add @csrf here-->
                                    <fieldset class="wrap-title">
										<h3 class="form-title">Create an account</h3>
										<h4 class="form-subtitle">Personal infomation</h4>
									</fieldset>									
									<fieldset class="wrap-input">
										<label for="frm-reg-lname">Name*</label>
										<input type="text" id="frm-reg-lname" name="name" placeholder="Your name*" :value="name" required autofocus autocomplete="name"><!-- change name,Your name* and also add :value="name" required autofocus autocomplete="name"> -->
									</fieldset>
									<fieldset class="wrap-input">
										<label for="frm-reg-email">Email Address*</label>
										<input type="email" id="frm-reg-email" name=" email" placeholder="Email address" :value="email"><!-- change type from "text" to "email" and  :value="old('email')" required autofocus -->
									</fieldset>
									<!-- <fieldset class="wrap-functions ">  //We dont need this
										<label class="remember-field">
											<input name="newletter" id="new-letter" value="forever" type="checkbox"><span>Sign Up for Newsletter</span>
										</label>
									</fieldset> -->
									<fieldset class="wrap-title">
										<h3 class="form-title">Login Information</h3>
									</fieldset>
									<fieldset class="wrap-input item-width-in-half left-item ">
										<label for="frm-reg-pass">Password *</label>
										<input type="password" id="frm-reg-pass" name="password" placeholder="Password" require autocomplete="new-password"><!-- change type to "password" name is password and add here require autocomplete="new-password" -->
									</fieldset>
									<fieldset class="wrap-input item-width-in-half ">
										<label for="frm-reg-cfpass">Confirm Password *</label>
										<input type="password" id="frm-reg-cfpass" name="password_confirmation" placeholder="Confirm Password" require autocomplete="new-password"><!-- change name="password_confirmation" and add here require autocomplete="new-password" -->
									</fieldset>
									<input type="submit" class="btn btn-sign" value="Register" name="register">
								</form>
							</div>											
						</div>
					</div><!--end main products area-->		
				</div>
			</div><!--end row-->

		</div><!--end container-->

	</main>
	<!--main area-->

</x-guest-layout>

