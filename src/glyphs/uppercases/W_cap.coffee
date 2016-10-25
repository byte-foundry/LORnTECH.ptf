exports.glyphs['W_cap'] =
	unicode: 'W'
	glyphName: 'W'
	characterName: 'LATIN CAPITAL LETTER W'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 20 * spacing
		spacingRight: 20 * spacing
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
					x: spacingLeft + 0.25 * (88 / 80 * thickness * opticThickness)
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + (contours[1].nodes[0].x - contours[0].nodes[0].x)*0.2
					y: 0
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
					x:  ( contours[0].nodes[0].x + ( 721 + 200 * width + (88 / 80 * thickness * opticThickness) * 0.25 ) )
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].x + (contours[1].nodes[0].x - contours[0].nodes[0].x)*0.80
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[1].x + (88 / 80 * thickness * opticThickness) * 0.75 - ( 15 * (88 / 80 * thickness * opticThickness) / 80 ) + (88 / 80 * thickness * opticThickness) * 0.5 * contrast
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.5
					})
				0:
					x: ( contours[0].nodes[0].expandedTo[1].x + contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[1].nodes[1].x - (88 / 80 * thickness * opticThickness) * 0.75 + ( 15 * (88 / 80 * thickness * opticThickness) / 80 ) - (88 / 80 * thickness * opticThickness) * 0.5 * contrast
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.5
					})
				0:
					x: ( contours[0].nodes[0].expandedTo[1].x + contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.5
					})
