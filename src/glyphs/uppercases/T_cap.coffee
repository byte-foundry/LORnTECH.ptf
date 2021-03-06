exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'uppercase'
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
					x: contours[1].nodes[0].x + ( contours[1].nodes[1].x - contours[1].nodes[0].x ) / 2
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: (81 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 81 / 80 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 81/80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: 306 + 200 * width + (thickness - 80)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 81/80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
