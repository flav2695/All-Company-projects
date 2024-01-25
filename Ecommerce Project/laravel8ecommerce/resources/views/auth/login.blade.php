
<!-- Second comment login.blade.php entire code and copy login.html-> main tag code and paste it in login.blade.php between  x-guest-layout tag and /x-guest-layout tag. -->
<x-guest-layout>


<!--main area-->
	<main id="main" class="main-site left-sidebar">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="/" class="link">home</a></li> <!-- Remove # and add / -->
					<li class="item-link"><span>login</span></li>
				</ul>
			</div>
			<div class="row">
				<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 col-md-offset-3">
					<div class=" main-content-area">
						<div class="wrap-login-item ">						
							<div class="login-form form-item form-stl">
                                <x-jet-validation-errors class="mb-4" />  <!-- Add this line here for validation error -->
								<form name="frm-login" method="POST" action="{{ route('login') }}"> <!-- Add method="POST" action="{{ route('login') }}" here-->
                                    @csrf   <!-- Add @csrf here-->
									<fieldset class="wrap-title">
										<h3 class="form-title">Log in to your account</h3>										
									</fieldset>
									<fieldset class="wrap-input">
										<label for="frm-login-uname">Email Address:</label>
										<input type="email" id="frm-login-uname" name="email" placeholder="Type your email address" :value="old('email')" required autofocus><!-- change type from "text" to "email" and  :value="old('email')" required autofocus -->
									</fieldset>
									<fieldset class="wrap-input">
										<label for="frm-login-pass">Password:</label>
										<input type="password" id="frm-login-pass" name="password" placeholder="************" required autocomplete="current-password"><!--Change name="password" and required autocomplete="current-password" -->
									</fieldset>
									
									<fieldset class="wrap-input">
										<label class="remember-field">
											<input class="frm-input " name="remember" id="rememberme" value="forever" type="checkbox"><span>Remember me</span><!-- change name="remember"  -->
										</label>
										<a class="link-function left-position" href="{{ route('password.request') }}" title="Forgotten password?">Forgotten password?</a><!-- Remove # and add / -->
									</fieldset>
									<input type="submit" class="btn btn-submit" value="Login" name="submit">
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