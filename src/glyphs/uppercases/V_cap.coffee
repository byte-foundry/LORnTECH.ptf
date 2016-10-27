exports.glyphs['V_cap'] =
	unicode: 'V'
	glyphName: 'V'
	characterName: 'LATIN CAPITAL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.25 * thickness * opticThickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: (92 / 80 * thickness * opticThickness) + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: ( contours[0].nodes[0].x + contours[1].nodes[1].x ) / 2 + 9.5 * (thickness / 80) * contrast - (thickness * opticThickness + (width - 1) * 5) * 0.75
					y: 0
					typeOut: 'line'
					expand: Object({
						width: (87 / 80 * thickness * opticThickness) + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[0].nodes[0].x + contours[1].nodes[1].x ) / 2 - 9.5 * (thickness / 80) * contrast + (thickness * opticThickness + (width - 1) * 5) * 0.75  * contrast
					y: 0
					typeOut: 'line'
					expand: Object({
						width: (87 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 363 + 200 * width - 0.25 * contours[1].nodes[1].expand.width + thickness - 80
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: (92 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
						angle: 180 + 'deg'
						distr: 0.25
					})
