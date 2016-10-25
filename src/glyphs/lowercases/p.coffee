exports.glyphs['p'] =
	unicode: 'p'
	glyphName: 'p'
	characterName: 'LATIN SMALL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 70 * spacing
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.25 * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: descender
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: xHeight - 160 - (0/80) * thickness
					dirOut: 55 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 - 90 + 'deg'
						distr: 0.9
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * (200/300)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: 90 / 80 * thickness
						angle: 100 + 'deg'
						distr: 1
					})
				2:
					x: 310 + 170 * width
					y: xHeight - 180 - (8/80) * thickness
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 190 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * (100/200)
					y: - overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 270 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[0].x
					y: 140 - (8/80) * thickness
					dirIn: 310 + 'deg'
					expand: Object({
						width: thickness
						angle: - 80 + 'deg'
						distr: 0.9
					})
