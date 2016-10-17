exports.glyphs['J'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 105
		spacingRight: 50 * spacing + 105
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
					x: spacingLeft + 0.25 * 81/80 * thickness * opticThickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 81 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 74/700 * capHeight + 0.25 * ( 81 / 80 ) * thickness * opticThickness * Math.sin(6 / 180 * Math.PI)
					dirOut: - 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 81 / 80 ) * thickness * opticThickness * Math.cos(6 / 180 * Math.PI)
						angle: 6 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x - 58
					y: -120
					dirIn: 50 + 'deg'
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: 87/80 * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
