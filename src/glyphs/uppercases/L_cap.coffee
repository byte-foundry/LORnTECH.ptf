exports.glyphs['L_cap'] =
	unicode: 'L'
	glyphName: 'L'
	characterName: 'LATIN CAPITAL LETTER L'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing + 50
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
					x: spacingLeft + 0.25 * (81 / 80 *thickness * opticThickness)
					y: 0
					typeOut: "line"
					expand: Object({
						width: (81 / 80 *thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (81 / 80 *thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 126 + 200 * width
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 1
					})
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 1
					})
