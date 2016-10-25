exports.glyphs['H_cap'] =
	unicode: 'H'
	glyphName: 'H'
	characterName: 'LATIN CAPITAL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 70 * spacing
		spacingRight: 70 * spacing
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
					x: spacingLeft + 0.25 * (88 / 80 *thickness * opticThickness)
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 *thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 *thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( 280 + 200 * width + (88 / 80 *thickness * opticThickness) * 0.25 )
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 *thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.9
					})
				1:
					x: contours[1].nodes[0].x
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 *thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.9
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 270 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 270 + 'deg'
						distr: 0.5
					})
