

	<!-- Section: intro -->
   
	<section id="intro" class="intro">
		<div class="intro-content">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 center">
						<div class="form-wrapper">
						<div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s" style="width : 450px ; margin-left: 200px; margin-top: 70px;">
							<div class="panel panel-skin">
							<div class="panel-heading" >
									<h3 class="panel-title"><span class="fa fa-pencil-square-o"></span> Choose Medicine Category</h3>
									</div>
									<div class="panel-body" >
									<form role="form" class="lead" action=" <?php echo base_url() ?>index.php/user/product/getbycat" method="POST">
										<div class="row">
											<div style="margin-left: 20px;" >
												<div class="form-group">
                                                    <select name="cat" class="form-control" >
														<?php
															foreach($cat as $data){ // Lakukan looping pada variabel kelas dari controller
																echo "
																	<option value='".$data->ID_CATEGORY."'>".$data->CAT_NAME."
																	</option>";
															}
														?>
													</select>											
												</div>
											</div>
											
										</div>

										<input type="submit" value="Submit" class="btn btn-skin btn-block " name="submit">
									</form>
								</div>
							</div>				
						
						</div>
						</div>
					</div>		
					
					<div class="col-lg-5">
						<div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
						<img src="<?php echo base_url() ?>assets2/img/dummy/img-1.png" class="img-responsive" alt="" />
						</div>
					</div>	
				</div>		
			</div>
		</div>		
    </section>
	
	<!-- /Section: intro -->

	<!-- Section: products -->
    <section id="product" class="home-section nopadding paddingtop-60">
		<div class="container">
	
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="wow fadeInDown" data-wow-delay="0.1s">
						<div class="section-heading text-center">
						<h2 class="h-bold">Popular Products</h2>
						
						</div>
						</div>
						<div class="divider-short"></div>
					</div>
				</div>
			
			<?php 
				foreach ($product as $result) {
					echo '
					<div class="col-sm-3 col-md-3" style="height:400px">
						<div class="wow fadeInUp" data-wow-delay="0.2s">
							<div class="box text-center">
								<a href="shop-single.html"> <img src="'.base_url().'med_img/'.$result->IMAGE.'" alt="Image" style="width:150px; height:150px"></a>
								<h3 class="text-dark">'.$result->MED_NAME.'</h3>
								<div style="margin-top:5px">
								<p class="price">'.$result->DESC_MED.'</p>
								<p class="price"><del>95.00</del> &mdash; '.$result->PRICE.'</p>
								</div>
								
							</div>
						</div>
					</div>

					';
				}

			 ?>
		</div>
		
	</section>
	<!-- <label>Quantity</label><input type="number" name="amount['.$result->ID_MEDICINE.']" class="quantity form-control input-number" min="1" max="100">
	<p><input type="checkbox" name="med[]" value="'.$result->ID_MEDICINE.'">Add to cart
	 --><!-- /Section: products -->