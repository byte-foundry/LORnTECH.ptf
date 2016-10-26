exports.glyphs['one'] =
	unicode: '1'
	glyphName: 'one'
	characterName: 'DIGIT ONE'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 140
		spacingRight: 50 * spacing + 220
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight - 100 - ( 20 / 80 ) * thickness - (9)
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 200 * width + 40
					y: capHeight + overshoot
					expand: Object({
						width: ( 90 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x
					y: 0
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0
					})
