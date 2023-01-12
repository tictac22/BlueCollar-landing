import { menuTl } from "./gsap.js"

import Swiper, { Navigation, Pagination } from "swiper"

let mql = window.matchMedia("(max-width: 768px)")
if (mql.matches) shuffleElement(mql.matches)
mql.addEventListener("change", (event) => shuffleElement(event.matches))

const burger = document.querySelector(".header__burger")
const navigation = document.querySelector(".navigation")
burger.addEventListener("click", function (event) {
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
	console.log(event.target.closest(".navigation"))
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
const observer = new IntersectionObserver((element) => {
	if (element[0].isIntersecting) {
		header.classList.remove("header__sticky")
	} else {
		header.classList.add("header__sticky")
	}
})
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
