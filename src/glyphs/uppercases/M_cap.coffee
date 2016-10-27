exports.glyphs['M_cap'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing + 90
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
					x: spacingLeft + 0.25 * (86 / 80 * thickness * opticThickness)
					y: 0
					typeOut: "line"
					expand: Object({
						width: (86 / 80 * thickness * opticThickness) * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + 5 + 25 * width
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (86 / 80 * thickness * opticThickness) * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x:  ( contours[0].nodes[0].expandedTo[0].x + ( 559 + 200 * width - (84 / 80 * thickness * opticThickness) * 0.25) ) + (thickness - 80) * 2
					y: 0
					typeOut: "line"
					expand: Object({
						width: (84 / 80 * thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x - 5 - 25 * width
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (84 / 80 * thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[1].expandedTo[0].x + (thickness / 80) * 53 * contrast+ 0.5 * (85 / 80 * thickness * opticThickness)
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (85 / 80 * thickness * opticThickness) + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.5
					})
				0:
					x: ( contours[0].nodes[0].expandedTo[1].x + contours[1].nodes[0].expandedTo[0].x ) * 0.5 + thickness / 80 * 23.5 - 0.5 * (85 / 80 * thickness * opticThickness) + (width - 1) * 5
					y: 0
					typeOut: "line"
					expand: Object({
						width: (85 / 80 * thickness * opticThickness) + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[1].nodes[1].expandedTo[0].x + (contours[1].nodes[1].expand.width - thickness / 80 * 53) * contrast - 0.5 * (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (85 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.5
					})
				0:
					x: contours[2].nodes[0].expandedTo[0].x + 38 * thickness / 80 + 0.5 * (85 / 80 * thickness * opticThickness) + (width - 1) * 5
					y: 0
					typeOut: "line"
					expand: Object({
						width: (85 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.5
					})
