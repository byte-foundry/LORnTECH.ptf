exports.glyphs['U_cap'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 60 * spacing
		spacingRight: 60 * spacing

	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.25 * 90 / 80 * thickness * opticThickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 90 / 80 * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight / 3
					dirOut: 90 + 'deg'
					expand: Object({
						width: 90 / 80 * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width:
							if contrast < 1
							then thickness * opticThickness * (contrast + (1 - contrast) * 0.4)
							else thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[4].x
					y: capHeight / 3 + (thickness / 80 - 1) * 20 + 5 * (width - 1)
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: 90 / 80 * thickness * opticThickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: 350 + 200 * width
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 90 / 80 * thickness * opticThickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
