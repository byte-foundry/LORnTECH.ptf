exports.glyphs['Y_cap'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 24
		spacingRight: 50 * spacing + 24
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[2].nodes[0].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.25 * thickness * opticThickness + (width - 1) * ( 10 / 80 ) * thickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 89 / 80 * thickness * opticThickness + (width - 1) * ( 10 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: ( 250 / 700 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: 85 / 80 * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 354 + 200 * width - 0.25 * contours[0].nodes[0].expand.width + thickness - 80
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 89 / 80 * thickness * opticThickness * contrast + (width - 1) * ( 10 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].x + (1 - contrast) * thickness / 2
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: 85 / 80 * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
