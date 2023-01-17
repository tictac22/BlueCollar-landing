
<? // Template Name: Home ?>
<?php 
	$heroInfo = get_field('hero_section_info');
	$provideInfo = get_field('provide__info');
	$offerInfo = get_field('offer');
	$servicesInfo = get_field('services__info');
	$whyWeInfo = get_field('why_we');
	
?>
<? get_header()  ?>
	<main class="main">
		<div class="hero">
			<picture>
				<source srcset="<?= ASSETS_IMG ?>hero.webp" type="image/webp" />
				<img class="hero__image" src="<?= ASSETS_IMG ?>hero.png" alt="hero"/>
			</picture>
			<div class="container">
				<div class="hero__inner">
					<div class="hero__text">
						<div class="hero__descr hero-descr">
							<img loading="lazy" src="<?= ASSETS_IMG ?>icons/gear.svg" alt="gear" class="hero-descr__img" />
							<p class="hero-descr__text">
								<?= $heroInfo['hero_subtitle'] ?>
							</p>
						</div>
						<h1 class="hero__title"><?= $heroInfo['hero_title'] ?></h1>
						<button class="hero__button button">View Services</button>
					</div>
				</div>
			</div>
		</div>
		<div class="welcome">
			<div class="container">
				<div class="welcome__inner">
					<div class="welcome__img">
						<picture
							><source src="<?= $provideInfo['provide_image'] ?>" type="image/webp" />
							<img loading="lazy" src="<?= $provideInfo['provide_image'] ?>" alt="worker"
						/></picture>
					</div>
					<div class="welcome__about">
						<div class="welcome__greetings welcome-greetings">
							<img
								loading="lazy"
								src="<?= ASSETS_IMG ?>icons/hatgear.svg"
								alt="gear"
								class="welcome-greetings__img"
							/>
							<h3 class="welcome-greetings__text"><?= $provideInfo['provide_subtitle'] ?></h3>
						</div>
						<div class="welcome__title"><?= $provideInfo['provide_title'] ?></div>
						<?= $provideInfo['provide_text'] ?>
						<div class="welcome__statistics welcome-statistics">
							<div class="welcome-statistics__container">
								<div class="welcome-statistics__box">
									<div class="welcome-statistics__numbers">35</div>
									<div class="welcome-statistics__text">Years Of Experience</div>
								</div>
								<?= $provideInfo['provide_items'] ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="offer" class="offer">
			<div class="container">
				<div class="offer__info">
					<div class="offer__subtitle offer-subtitle">
						<img
							loading="lazy"
							src="<?= ASSETS_IMG ?>icons/hatgear.svg"
							alt="worker"
							class="offer-subtitle__img"
						/>
						<h4 class="offer-subtitle__text"><?= $offerInfo['subtitle'] ?></h4>
					</div>
					<h3 class="offer__title"><?= $offerInfo['title'] ?></h3>
					<p class="offer__text">
						<?= $offerInfo['text'] ?>
					</p>
				</div>
				<div class="offer__areas offer-areas">
					<div class="offer-areas__item">
						<div class="offer-areas__row">
							<img
								loading="lazy"
								class="offer-areas__img"
								src="<?= ASSETS_IMG ?>icons/residential.svg"
								alt="commercial"
							/>
							<p class="offer-areas__text">Residential</p>
						</div>
					</div>
					<div class="offer-areas__item">
						<div class="offer-areas__row">
							<img
								loading="lazy"
								class="offer-areas__img"
								src="<?= ASSETS_IMG ?>icons/commercial.svg"
								alt="commercial"
							/>
							<p class="offer-areas__text">Commercial</p>
						</div>
					</div>
					<div class="offer-areas__item">
						<div class="offer-areas__row">
							<img
								loading="lazy"
								class="offer-areas__img"
								src="<?= ASSETS_IMG ?>icons/industrial.svg"
								alt="commercial"
							/>
							<p class="offer-areas__text">Industrial</p>
						</div>
					</div>
				</div>
				<div class="commercal">
					<div class="commercal__grid">
						<div class="commercal__decsr">
							<div class="commercal-subtitle">
								<img
									loading="lazy"
									class="commercal-subtitle__img"
									src="<?= ASSETS_IMG ?>icons/commerical.svg"
									alt="commerical"
								/>
								<h4 class="commercal-subtitle__text"><?= $offerInfo['commercial_subtitle'] ?></h4>
							</div>
							<h3 class="commercal__title"><?= $offerInfo['commercial_title'] ?></h3>
							<?= $offerInfo['commercial_text'] ?>
							<button class="commercal__button button">Read More</button>
						</div>
						<div class="commercal__img">
							<picture
								><source src="<?= $offerInfo['commercial_image'] ?>" type="image/webp" />
								<img loading="lazy" src="<?= $offerInfo['commercial_image'] ?>" alt="commercial"
							/></picture>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="service" id="services">
			<div>
				<div class="container">
					<div class="services__info">
						<div class="service-subtitle">
							<img
								loading="lazy"
								src="<?= ASSETS_IMG ?>services/title-image.svg"
								alt="area"
								class="service-subtitle__img"
							/>
							<p class="service-subtitle__text"><?= $servicesInfo['subtitle'] ?></p>
						</div>
						<h3 class="service__title title"><?= $servicesInfo['title'] ?></h3>
						<p class="service__text">
							<?= $servicesInfo['text'] ?>
						</p>
					</div>
					<div class="services">
						<div class="services__row">
							<?php foreach(getServicesPost() as $service ): ?>
								<div class="services__item">
									<div class="services__img">
										<img
											loading="lazy"
											alt="electrical"
											src="<?= get_the_post_thumbnail_url($service->ID) ?>"
											alt="electrical"
										/>
									</div>
									<h5 class="services__title"><?= $service->post_title  ?></h5>
									<p class="services__text">
										<?= $service->post_content ?>
									</p>
									<p class="services__more">View More</p>
								</div>
							<? endforeach ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="why">
			<div class="why__inner">
				<div class="why__stats why-stats" style="background-image: url('<?= ASSETS_IMG?>why.webp')">
					<div class="why-stats__inner">
						<div class="why-stats__body">
							<?= $whyWeInfo['projects_amount'] ?>
						</div>
					</div>
				</div>
				<div class="why__we why-we">
					<div class="why-we__container">
						<div class="why-subtitle">
							<img
								loading="lazy"
								class="why-subtitle__img"
								src="<?= ASSETS_IMG ?>services/title-image.svg"
								alt="why us"
							/>
							<h4 class="why-subtitle__text"><?= $whyWeInfo['subtitle'] ?></h4>
						</div>
						<h3 class="why-we__title title"><?= $whyWeInfo['title'] ?></h3>
						<p class="why-we__text text">
							<?= $whyWeInfo['text'] ?>
						</p>
						<div class="why__facts why-facts">
							<div class="why-facts__items">
								<?= $whyWeInfo['projects_arguments'] ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="projects" id="projects">
			<div class="projects-subtitle subtitle">
				<div class="subtitle__wrapper">
					<img
						loading="lazy"
						class="projects-subtitle__text"
						src="<?= ASSETS_IMG ?>services/title-image.svg"
						alt="note"
					/>
					<h4 class="projects-subtitle__text subtitle__text">Why Choose Us</h4>
				</div>
			</div>
			<h2 class="projects__title">Our Recent Projects</h2>
			<div class="projects__list">
				<div class="projects__grid">
					<?php foreach(getProjectsPosts() as $project): ?>
						<div class="projects__item">
							<div class="projects__img">
								<picture>
									<source srcset="<?= get_the_post_thumbnail_url($project->ID) ?>" type="image/webp" />
									<img
										loading="lazy"
										alt="project1"
										src="<?= get_the_post_thumbnail_url($project->ID) ?>"
										alt="project1"
									/>
							</picture>
							</div>
							
							<h5 class="projects__text"><?= $project->post_title ?></h5>
							<p class="projects__type"><?= get_the_terms($project->ID,'project_type')[0]->name ?></p>
						</div>
					<? endforeach ?>
				</div>
			</div>
		</div>
		<div class="testimonials" id="contacts">
			<div class="container">
				<div class="testimonials__inner">
					<div class="testimonials__reviews reviews">
						<div class="reviews__subtitle subtitle">
							<div class="subtitle__wrapper">
								<img
									loading="lazy"
									class="reviews__img"
									alt="note"
									src="<?= ASSETS_IMG ?>services/title-image.svg"
								/>
								<h4 class="reviews__text subtitle__text">Testimonial</h4>
							</div>
						</div>
						<h2 class="reviews__title title">Customers Says</h2>
						<div class="reviews__slider slider">
							<div class="swiper">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="slider__client client">
											<img
												loading="lazy"
												class="client__img"
												src="<?= ASSETS_IMG ?>slider/client.jpg"
												alt="nancy"
											/>
											<div class="client__info">
												<h6 class="client__name">Nancy luther</h6>
												<p class="client__city">NewYork</p>
											</div>
											<div class="client__quote">
												<img loading="lazy" src="<?= ASSETS_IMG ?>slider/quote.svg" alt="quote" />
											</div>
										</div>
										<hr class="slider__line" />
										<p class="slider__text">
											We have had several good experiences with
											<span> Blue Collar </span> team. Most recently, they replaced our
											20-year-old HVAC system with a new,
											<span> modern, and more efficient </span>
											system & it worked fine.
										</p>
									</div>
									<div class="swiper-slide">
										<div class="slider__client client">
											<img
												loading="lazy"
												class="client__img"
												src="<?= ASSETS_IMG ?>slider/client.jpg"
												alt="nancy"
											/>
											<div class="client__info">
												<h6 class="client__name">Nancy luther</h6>
												<p class="client__city">NewYork</p>
											</div>
											<div class="client__quote">
												<img loading="lazy" src="<?= ASSETS_IMG ?>slider/quote.svg" alt="quote" />
											</div>
										</div>
										<hr class="slider__line" />
										<p class="slider__text">
											We have had several good experiences with
											<span> Blue Collar </span> team. Most recently, they replaced our
											20-year-old HVAC system with a new,
											<span> modern, and more efficient </span>
											system & it worked fine.
										</p>
									</div>
									<div class="swiper-slide">
										<div class="slider__client client">
											<img
												loading="lazy"
												class="client__img"
												src="<?= ASSETS_IMG ?>slider/client.jpg"
												alt="nancy"
											/>
											<div class="client__info">
												<h6 class="client__name">Nancy luther</h6>
												<p class="client__city">NewYork</p>
											</div>
											<div class="client__quote">
												<img loading="lazy" src="<?= ASSETS_IMG ?>slider/quote.svg" alt="quote" />
											</div>
										</div>
										<hr class="slider__line" />
										<p class="slider__text">
											We have had several good experiences with
											<span> Blue Collar </span> team. Most recently, they replaced our
											20-year-old HVAC system with a new,
											<span> modern, and more efficient </span>
											system & it worked fine.
										</p>
									</div>
								</div>
								<div class="slider__arrows">
									<div class="swiper-button-prev slider__prev slider-arrow">
										<div class="slider-arrow__body">
											<img loading="lazy" src="<?= ASSETS_IMG ?>slider/arrow.svg" alt="arrow-left" />
										</div>
									</div>
									<div class="swiper-button-next">
										<div class="slider-arrow__body">
											<img loading="lazy" src="<?= ASSETS_IMG ?>slider/arrow.svg" alt="arrow-right" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="reviews__question question">
							<div class="question__inner">
								<div class="reviews__subtitle subtitle">
									<div class="subtitle__wrapper">
										<img
											loading="lazy"
											class="reviews__img"
											src="<?= ASSETS_IMG ?>services/title-image.svg"
											alt="note"
										/>
										<h4 class="reviews__text subtitle__text">Any question</h4>
									</div>
								</div>
								<h5 class="question__title">99.9% Customer Satisfaction Based</h5>
								<p class="question__text">
									If you have any questions or need help contact with our team, or call
								</p>
								<a href="tel:0031234567890" class="question__contact">
									<img loading="lazy" src="<?= ASSETS_IMG ?>slider/call.svg" alt="phone" />
									<p class="question__phone">(003) 123 456 7890</p>
								</a>
							</div>
						</div>
					</div>
					<form method="post" class="testimonials__form form">
						<div class="form-subtitle subtitle">
							<div class="subtitle__wrapper">
								<img
									loading="lazy"
									class="form-subtitle__img"
									src="<?= ASSETS_IMG ?>services/title-image.svg"
									alt="note"
								/>

								<h4 class="form-subtitle__text subtitle__text">Any question</h4>
							</div>
						</div>
						<h2 class="form__title title">Appointment Form</h2>
						<div class="form__inner">
							<div class="form__wrapper">
								<input class="form__input" type="text" placeholder="Your name" />
							</div>
							<div class="form__wrapper">
								<input class="form__input" type="text" placeholder="Your email" />
							</div>
							<div class="form__wrapper">
								<input class="form__input" type="text" placeholder="Phone Number" />
							</div>
							<div class="form__wrapper">
								<input class="form__input form__date" type="date" placeholder="Date" />
								<img
									loading="lazy"
									class="date__img"
									src="<?= ASSETS_IMG ?>slider/date.svg"
									alt="calendar"
								/>
							</div>
							<div class="form__wrapper">
								<textarea
									class="form__input form__textarea"
									placeholder="Service Description"
								></textarea>
							</div>
							<div class="form__wrapper">
								<button class="form__button" type="submit">Submit</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="clients">
			<div class="clients-subtitle subtitle">
				<div class="subtitle__wrapper">
					<img
						loading="lazy"
						class="clients-subtitle__img"
						alt="note"
						src="<?= ASSETS_IMG ?>services/title-image.svg"
					/>
					<h4 class="clients-subtitle__text subtitle__text">Any question</h4>
				</div>
			</div>
			<h2 class="clients__title title">Our Trusted Big Clients!</h2>
			<div class="clients__grid">
				<div class="clients__row">
					<div class="clients__items">
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client1.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client2.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client3.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client4.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client1.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client2.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client3.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client4.svg" alt="client" />
						</div>
					</div>
					<div class="clients__items">
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client1.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client2.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client3.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client4.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client1.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client2.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client3.svg" alt="client" />
						</div>
						<div class="clients__item">
							<img loading="lazy" src="<?= ASSETS_IMG ?>clients/client4.svg" alt="client" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="plan">
			<div class="container">
				<div class="plan-subtitle subtitle">
					<div class="subtitle__wrapper plan-subtitle__text">
						<img
							loading="lazy"
							class="plan-subtitle__img"
							alt="note"
							src="<?= ASSETS_IMG ?>services/title-image.svg"
						/>
						<h4 class="subtitle__text">Price Plan</h4>
					</div>
				</div>
				<div class="plan__text">
					<h2 class="plan__title title">Let’s Customize Work With Affordable Price</h2>
					<p class="plan__descr text">
						This is passionate about delivering growth and the new possibilities in the field of
						electrical services. We have extensive experience of domestic and business electrical
						installations and no job is too small.
					</p>
				</div>
				<div class="plans">
					<div class="plans__grid">
						<? foreach(getPlanPosts() as $plan): ?>
							<div class="plans__row">
								<h5 class="plans__title"><?= $plan->post_title  ?></h5>
								<div class="plans__descr">
									<div class="plans__wrapper">
										<p class="plans__price"><?= $plan->customFields['price'] ?></p>
										<div class="plans__additional">
											<?php 
											if( $plan->tag) { ?>
												<span class="plans__tag"><?= $plan->tag ?></span>
											<?php } ?>
											<p class="plans__type"><?= $plan->customFields['type'] ?></p>
										</div>
									</div>
								</div>
								<hr class="plans__line" />
								<?= $plan->post_content ?>
								<button class="plans__button button">Buy Now</button>
							</div>
						<? endforeach ?>
					</div>
				</div>
				<div class="benefits">
					<div class="benefits__item">
						<div class="benefits__descr">
							<img loading="lazy" alt="accept" src="<?= ASSETS_IMG ?>icons/accept.svg" />

							<div class="benefits__title">Affordable</div>
							<div class="benefits__text text">
								We adhere strictly to the current National Electrical Code, and we conduct
								regular in-house sessions with our technicians to review any code changes and
								applications.
							</div>
						</div>
					</div>
					<div class="benefits__item">
						<div class="benefits__descr">
							<img loading="lazy" alt="accept" src="<?= ASSETS_IMG ?>icons/accept.svg" />

							<div class="benefits__title">Fixed Plan</div>
							<div class="benefits__text text">
								We understand fully that your time is of extreme value. You will never have to
								worry about waiting around for our trained technicians.24/7 Service Providers
								Affordable Price.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="news">
			<div class="container">
				<div class="news-subtitle subtitle">
					<div class="news-subtitle__wrapper subtitle__wrapper">
						<img
							loading="lazy"
							class="news-subtitle__img"
							alt="note"
							src="<?= ASSETS_IMG ?>services/title-image.svg"
						/>
						<h4 class="news-subtitle__text subtitle__text">Stay Updated</h4>
					</div>
				</div>
				<h2 class="news__title title">Latest News & Articles</h2>
				<div class="news__grid">
					<div class="news__item">
						<div class="news__img">
							<picture
								><source srcset="<?= ASSETS_IMG ?>hero.webp" type="image/webp" />
								<img loading="lazy" src="<?= ASSETS_IMG ?>hero.png" alt="news1"
							/></picture>
						</div>
						<div class="news__date">
							<div class="news__who">
								<img loading="lazy" src="<?= ASSETS_IMG ?>news/user.svg" alt="user" />
								<p class="news__name">Alex Louis</p>
							</div>
							<div class="news__when">
								<img loading="lazy" alt="date" src="<?= ASSETS_IMG ?>news/time.svg" />
								<p class="news__time">April 16, 2022</p>
							</div>
						</div>
						<h3 class="news__subtitle">How Outside Lighting can Transform Your Summer Garden</h3>
						<p class="news__text text">
							Capitalize on low-hanging fruit to identify a ballpark value added matrix
							economically activity to beta test override the multiple touchpoints for offshoring
							the digital divide with DevOps. the digital divide with DevOps. the digital divide
							with DevOps.
						</p>
						<div class="news__more news-more">
							<p class="news-more__text">View More</p>
							<img loading="lazy" alt="arrow" src="<?= ASSETS_IMG ?>slider/arrow.svg" />
						</div>
					</div>
					<div class="news__item">
						<div class="news__img">
							<picture
								><source srcset="<?= ASSETS_IMG ?>commercal.webp" type="image/webp" />
								<img loading="lazy" src="<?= ASSETS_IMG ?>commercal.jpg" alt="news2"
							/></picture>
						</div>
						<div class="news__date">
							<div class="news__who">
								<img loading="lazy" src="<?= ASSETS_IMG ?>news/user.svg" alt="user" />
								<p class="news__name">John Christin</p>
							</div>
							<div class="news__when">
								<img loading="lazy" alt="time" src="<?= ASSETS_IMG ?>news/time.svg" />
								<p class="news__time" alt="date">April 16, 2022</p>
							</div>
						</div>
						<h3 class="news__subtitle">Easy Energy Saving Solutions for Industrial Businesses</h3>
						<p class="news__text text">
							Strategies on low-hanging fruit to identify a ballpark value added activity matrix
							economically to beta test override multiple touchpoints for offshoring the digital
							divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.
							the digital divide with DevOps.
						</p>
						<div class="news__more news-more">
							<p class="news-more__text">View More</p>
							<img loading="lazy" alt="arrow" src="<?= ASSETS_IMG ?>slider/arrow.svg" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="subscribe">
			<div class="container">
				<div class="subscribe__inner">
					<div class="subscribe__text">
						<h3 class="subscribe__title">Subscribe Our Newsletter</h3>
						<p class="subscribe__descr">
							Stay in touch with us to get latest news. We are here to fit the needs of your
							electrical services for your dream building.
						</p>
					</div>
					<form method="post" class="subscribe__form subscribe-form">
						<div class="subscribe-form__inner">
							<input class="subscribe-form__input" type="text" placeholder="Enter your email" />
							<button class="subscribe-form__button">Subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
<? get_footer() ?>