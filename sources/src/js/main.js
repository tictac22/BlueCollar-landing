import { menuTl } from "./gsap.js"

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

const header = document.querySelector(".header")
const headerBody = document.querySelector(".header__body")
const observer = new IntersectionObserver((element) => {
	console.log(element[0].isIntersecting)
	if (element[0].isIntersecting) {
		element[0].target.classList.remove("header__sticky")
	} else {
		element[0].target.classList.add("header__sticky")
	}
})
observer.observe(header)
