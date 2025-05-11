// @ts-check
import { defineConfig } from "astro/config";

import playformInline from "@playform/inline";

import mdx from "@astrojs/mdx";

import alpinejs from "@astrojs/alpinejs";

import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
	site: "https://pawstronaut.netlify.app",
	base: "/izabella.nailtech/",
	integrations: [
		tailwind(),
		alpinejs(),
		mdx(),
	],
	output: "static",
	devToolbar: {
		enabled: false,
	},
});
