exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 75 * spacing
		spacingRight: 50 * spacing
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
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
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
						width: thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 60
					y: capHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[1].x + 200 + 200 * width - 0.25 * contours[0].nodes[1].expand.width - 180
					y: (contours[1].nodes[1].expandedTo[0].y + contours[1].nodes[3].expandedTo[0].y) / 2
					dirOut: 270 + 'deg'
					expand: Object({
						width: 85 / 80 * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 60
					y: contours[0].nodes[1].y - (contours[0].nodes[1].y / 2)
					dirOut: 270 + 'deg'
					expand: Object({
						width: 85 / 80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y - (contours[0].nodes[1].y / 2)
					dirOut: 270 + 'deg'
					expand: Object({
						width: 85 / 80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: 85/80 * thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 90
					y: contours[1].nodes[3].expandedTo[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: 85 / 80 * thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				2:
					x: contours[2].nodes[1].x + 200 + 200 * width - 0.25 * contours[0].nodes[1].expand.width - 140
					y: contours[1].nodes[3].expandedTo[1].y / 2
					dirOut: 270 + 'deg'
					expand: Object({
						width: 90 / 80 * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 90
					y: 0
					dirOut: 270 + 'deg'
					expand: Object({
						width: 85 / 80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: 0
					dirOut: 270 + 'deg'
					expand: Object({
						width: 85 / 80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
