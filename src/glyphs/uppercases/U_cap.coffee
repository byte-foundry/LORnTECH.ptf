exports.glyphs['U_cap'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80

	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.25 * 90 / 80 * thickness * opticThickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 81 / 80 * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight / 3 + 20 * (width - 1) + (thickness - 80) / 2
					dirOut: 90 + 'deg'
					expand: Object({
						width: 81 / 80 * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: -overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width:
							if contrast < 1
							then 83 / 80 * thickness * opticThickness * (contrast + (1 - contrast) * 0.4)
							else  83 / 80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[4].x
					y: capHeight / 3 + 20 * (width - 1) + (thickness - 80) / 2
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: 81 / 80 * thickness * opticThickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x + 300 + 200 * width - contours[0].nodes[4].expand.width * 0.25 + thickness - 80
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 81 / 80 * thickness * opticThickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
