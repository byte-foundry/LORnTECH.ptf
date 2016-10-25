exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 70
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
					x: Math.min(
						contours[0].nodes[2].x + ( contours[0].nodes[3].x - contours[0].nodes[2].x ) * 0.55,
						contours[1].nodes[0].expandedTo[1].x - 20
					)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (20/80) * thickness
					y: ( 200 / 500 ) * xHeight
					type: 'smooth'
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 5 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].x - contours[0].nodes[1].expandedTo[0].x ) * ( 170 / 370)
					y: 0 - overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.25
					y: 155 + (8)
					dirIn: - 115 + 'deg'
					expand: Object({
						width: ( 120 / 80 ) * thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 255 - (23),
						contours[0].nodes[1].expandedTo[1].x + 0.25 * thickness + 10
					)
					y: ascenderHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
