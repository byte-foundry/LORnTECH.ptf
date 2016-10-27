exports.glyphs['R_cap'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing + 79
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
					x: spacingLeft + 0.25 * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: 81/80 * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 81/80 * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: 81/80 * thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[1].x - 141
					y: capHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: 81/80 * thickness * opticThickness * contrast
						angle: -95 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + 235 + 200 * width - 0.25 * contours[0].nodes[1].expand.width
					y: (contours[1].nodes[0].expandedTo[0].y + contours[1].nodes[4].expandedTo[0].y) / 2 - Math.sin(5 / 180 * Math.PI) * 82 / 80 * thickness * opticThickness / Math.cos(5 / 180 * Math.PI) * 0.25
					dirOut: 270 + 'deg'
					dirIn: 270 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: 82 / 80 * thickness * opticThickness / Math.cos(5 / 180 * Math.PI)
						angle: 185 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].expandedTo[1].x - 143 - Math.sin(9 / 180 * Math.PI) * 80 / 80 * thickness * opticThickness * contrast / Math.cos(9 / 180 * Math.PI) * 0.25
					y: contours[1].nodes[4].y
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					expand: Object({
						width: 80 / 80 * thickness * opticThickness * contrast / Math.cos(9 / 180 * Math.PI)
						angle: 99 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[0].x
					y: 290
					dirOut: 270 + 'deg'
					expand: Object({
						width: 80 / 80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].x + 90
					y: contours[1].nodes[3].y
					typeOut: 'line'
					expand: Object({
						width: 96/80 * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[3].x + 63 + 200
					y: 0
					typeOut: 'line'
					expand: Object({
						width: 97/80 * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
