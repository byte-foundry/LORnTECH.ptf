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
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing + 57
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
						width: (81 / 80 * thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (81 / 80 * thickness * opticThickness)
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 296 + 200 * width - 0.25 * (108 / 80 * thickness * opticThickness)
					y: 0
					typeOut: "line"
					expand: Object({
						width: (108 / 80 * thickness * opticThickness) + (width - 1) * ( 20 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 30 # + 0.25 * (96 / 80 * thickness * opticThickness) * contrast / Math.cos(1 / 180 * Math.PI) + 50 * (width - 1)
					y: capHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: (96 / 80 * thickness * opticThickness) * contrast / Math.cos(1 / 180 * Math.PI) + (width - 1) * ( 18 / 80 ) * thickness
						angle: 1 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 256 + 200 * width - 0.25 * (98 / 80 * thickness * opticThickness)
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (98 / 80 * thickness * opticThickness) * contrast + (width - 1) * ( 12 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
