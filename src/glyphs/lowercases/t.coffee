exports.glyphs['t'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x + 60 + (20/80) * thickness
					y: xHeight + 100
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[2].expandedTo[1].y + 90
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.55,
						contours[0].nodes[0].expandedTo[1].x + 40
					)
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.5
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[0].expandedTo[0].x + 200 * width + 70
					y: 25 + (8)
					dirIn: - 145 + 'deg'
					tensionIn: 0
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].x - 10
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
