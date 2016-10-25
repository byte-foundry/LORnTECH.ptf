exports.glyphs['X_cap'] =
	unicode: 'X'
	glyphName: 'X'
	characterName: 'LATIN CAPITAL LETTER X'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 30 * spacing
		spacingRight: 30 * spacing
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
					x: spacingLeft + 0.25 * (88 / 80 * thickness * opticThickness)
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 8
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 6
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 6
						angle: 0 + 'deg'
						distr: 0.75
					})
				3:
					x: spacingLeft + 0.25 * (88 / 80 * thickness * opticThickness)
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 8
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 280 + 200 * width + 0.75 * (88 / 80 * thickness * opticThickness)
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 8
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 6
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 6
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: 280 + 200 * width + 0.75 * (88 / 80 * thickness * opticThickness)
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 8
						angle: 0 + 'deg'
						distr: 0.75
					})
