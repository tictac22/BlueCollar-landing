import { gsap } from "gsap"
import { ScrollTrigger } from "gsap/dist/ScrollTrigger.js"

gsap.registerPlugin(ScrollTrigger)

export const menuTl = gsap.timeline({ paused: true })

menuTl.to(".navigation", {
	x: 0,
	duration: 0.7,
	opacity: 1,
	ease: "power2.out",
})
menuTl.to(
	".navigation",
	{
		duration: 1,
		clipPath: "circle(70.7% at 50% 50%)",
		ease: "power2.out",
	},
	"-=0.8"
)

export const gsapL = gsap
