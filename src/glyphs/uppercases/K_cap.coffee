exports.glyphs['K_cap'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 40 * spacing
		spacingRight: 10 * spacing
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
					x: spacingLeft + 0.25 * (88 / 80 *thickness * opticThickness)
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 180 + 200 * width + 0.75 * (88 / 80 * thickness * opticThickness)
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 30
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 15
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 15
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: 150 + 200 * width + 0.75 * (88 / 80 * thickness * opticThickness)
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 25
						angle: 0 + 'deg'
						distr: 0.75
					})
