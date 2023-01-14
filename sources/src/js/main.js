import Swiper, { Navigation, Pagination } from "swiper"
import { gsapL, menuTl } from "./gsap.js"
//const myWorker = new Worker(new URL("webp.js", import.meta.url))
let mql = window.matchMedia("(max-width: 768px)")
if (mql.matches) shuffleElement(mql.matches)
mql.addEventListener("change", (event) => shuffleElement(event.matches))

const burger = document.querySelector(".header__burger")
const navigation = document.querySelector(".navigation")
burger.addEventListener("click", function (event) {
	console.log(this, "this")
	event.stopPropagation()
	navigation.classList.toggle("navigation--open")
	this.classList.toggle("header__burger--open")
	if (this.classList.contains("header__burger--open")) {
		menuTl.play()
	} else {
		menuTl.reverse(0.8)
	}
})

document.addEventListener("click", (event) => {
	if (!event.target.closest(".navigation") && navigation.classList.contains("navigation--open")) {
		navigation.classList.remove("navigation--open")
		burger.classList.remove("header__burger--open")
		menuTl.reverse(0.8)
	}
})
function shuffleElement(match) {
	const from = document.querySelector(".header__contacts")
	const contacts = document.querySelectorAll(".header-contact")
	if (!contacts) return mql.removeEventListener("change")

	const destination = document.querySelector(".navigation__button")
	if (match) {
		destination.after(...contacts)
	} else {
		menuTl.revert()
		contacts.forEach((item) => {
			from.appendChild(item)
		})
	}
}

const opening = document.querySelector(".opening")
const header = document.querySelector(".header")
const observer = new IntersectionObserver(
	(element) => {
		if (element[0].isIntersecting) {
			header.style.top = `${opening.getBoundingClientRect().height}px`
		} else {
			header.style.top = "0px"
		}
	},
	{ threshold: 0.1 }
)
observer.observe(opening)

new Swiper(".swiper", {
	loop: true,
	// If we need pagination
	pagination: {
		el: ".swiper-pagination",
	},
	speed: 500,
	// Navigation arrows
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},

	// And if we need scrollbar
	scrollbar: {
		el: ".swiper-scrollbar",
	},
	modules: [Navigation, Pagination],
})

const links = document.querySelectorAll(".navigation__list a")

links.forEach((item) => {
	item.addEventListener("click", (link) => {
		link.preventDefault()
		const href = link.target.getAttribute("href")
		const section = document.querySelector(href)

		let mql = window.matchMedia("(max-width: 768px)")
		if (mql.matches) {
			menuTl.reverse(0.8)
			burger.classList.toggle("header__burger--open")
			navigation.classList.toggle("navigation--open")
		}

		window.scrollTo({
			top: section.offsetTop - 222,
		})
		window.history.pushState("page2", "Title", href)
		links.forEach((item) =>
			item.href === window.location.href
				? item.classList.add("navigation__link--active")
				: item.classList.remove("navigation__link--active")
		)
	})
	if (item.href === window.location.href) {
		item.classList.add("navigation__link--active")
	}
})

let tm = gsapL.timeline()

tm.from(".hero__text > *", {
	duration: 1,
	opacity: 0,
	y: 100,
	ease: "power2.out",
	delay: 0.4,
	stagger: 0.3,
})

let tm2 = gsapL.timeline({ scrollTrigger: { trigger: ".welcome", start: "top center" } })

tm2.from(".welcome__img", {
	opacity: 0,
	duration: 1,
	y: 500,
})
	.from(
		".welcome__about > *",
		{
			x: 300,
			duration: 1,
			opacity: 0,
			stagger: 0.3,
		},
		"-=1"
	)
	.from(".welcome-statistics__numbers", {
		opacity: 0,
		innerText: 0,
		duration: 3,
		snap: {
			innerText: 1,
		},
	})

let tm3 = gsapL.timeline({ scrollTrigger: { trigger: ".offer", start: "top center" } })

tm3.from(".offer__info > *", {
	duration: 1,
	opacity: 0,
	y: 300,
	stagger: 0.2,
}).from(
	".offer__areas > *",
	{
		stagger: 0.4,
		duration: 1,
		opacity: 0,
		y: 400,
		ease: "back.out(1.5)",
	},
	"-=0.3"
)

let tm4 = gsapL.timeline({ scrollTrigger: { trigger: ".service", start: "top center" } })

tm4.from(".services__info > *", {
	duration: 1,
	opacity: 0,
	y: 400,
	stagger: 0.2,
	ease: "power2.out",
})
	.from(
		".services__item",
		{
			duration: 1,
			opacity: 0,
			stagger: 0.3,
			y: 400,
			ease: "back.out(1.5)",
		},
		"-=0.3"
	)
	.eventCallback("onComplete", () => {
		document.querySelectorAll(".services__item").forEach((item) => (item.style.transition = "transform 0.2s ease"))
	})

let tm5 = gsapL.timeline({ scrollTrigger: { trigger: ".why", start: "-30px center" } })

document.querySelectorAll(".why-stats__amount-number").forEach((item) => {
	let counter = { var: 0 }
	let hasPlus = false
	let numberTill = parseInt(item.innerHTML)
	if (item.textContent.includes("+")) {
		hasPlus = true
	}

	item.textContent = 0
	tm5.to(
		counter,
		5,
		{
			var: numberTill,

			onUpdate: function () {
				item.innerHTML = Math.floor(counter.var.toString())
				if (hasPlus) {
					item.innerText += "+"
				}
			},

			ease: "power3.out",
		},
		"<"
	)
})

tm5.from(
	".why-facts__item",
	{
		stagger: 0.4,
		y: 300,
		opacity: 0,
	},
	"<"
)

let tm6 = gsapL.timeline({ scrollTrigger: { trigger: ".projects", start: "top center" } })
tm6.from(".projects__item", {
	scale: 0.6,
	duration: 0.3,
	opacity: 0,
})

let tm7 = gsapL.timeline({ scrollTrigger: { trigger: ".plan", start: "top center" } })
tm7.from(".plan__text", {
	duration: 0.5,
	opacity: 0,
	y: 400,
	ease: "power3.out",
}).from(".plans__row", {
	stagger: 0.3,
	y: 400,
	opacity: 0,
	ease: "power1.inOut",
})

const supportWebp = () => {
	const img = new Image()
	let hasWebP = false
	img.onload = function () {
		hasWebP = !!(img.height > 0 && img.width > 0)
		console.log("support")
	}
	img.onerror = function () {
		hasWebP = false
		console.log("not support")
	}
	img.src = "http://www.gstatic.com/webp/gallery/1.webp"
}

supportWebp()
