-- Animation library
return {
	opts = {
		animate = {
			fps = 120,
		},

		scroll = {
			enabled = true,
			animate = {
				duration = {
					step = 10,
					total = 200,
				},
				easing = "linear",
			},
		},
	},
}
