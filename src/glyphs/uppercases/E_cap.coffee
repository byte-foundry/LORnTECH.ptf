exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 70 * spacing
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[2].nodes[0].x + contours[2].nodes[1].x) / 2
			y: capHeight + diacriticHeight
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
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 *thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + 100 + 200 * width
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[1].nodes[1].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 1
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight / 2
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[1].x - 35
					y: capHeight / 2
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
