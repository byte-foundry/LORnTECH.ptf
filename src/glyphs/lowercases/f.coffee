exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 10
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
					x: contours[1].nodes[1].x + 70 + (17)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness  + (width - 1) * 15 * (thickness / 80 - 1)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 603 / 800 ) * ascenderHeight
					dirOut: 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 82 / 80 ) * thickness
						angle: - 9 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					x: 290
					y: ascenderHeight + overshoot
					type: 'smooth'
					dirIn: 180 + 'deg'
					tensionIn: 1.1
					expand: Object({
						width: ( 76 / 80 ) * thickness
						angle: - 87 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 60 + (0),
						contours[0].nodes[1].expandedTo[1].x + 10
					)
					y: ascenderHeight - 2
					dirIn: 180 + 'deg'
					tensionIn: 0
					expand: Object({
						width: thickness
						angle: - 89 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].x
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 1
					})
