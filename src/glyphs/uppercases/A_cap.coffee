exports.glyphs['A_cap'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
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
			x: (contours[2].nodes[0].x + contours[2].nodes[1].x) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				1:
					x: ( contours[0].nodes[0].x + contours[1].nodes[0].x ) / 2 + ( 7.5 * (thickness * opticThickness) / 80 * contrast ) - (88 / 80 * thickness * opticThickness) * 0.75 * contrast
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.25
					})
				0:
					x: spacingLeft + (88 / 80 * thickness * opticThickness) * 0.25
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: ( contours[0].nodes[0].x + contours[1].nodes[0].x ) / 2 - ( 7.5 * (thickness * opticThickness) / 80 ) + (88 / 80 * thickness * opticThickness) * 0.75
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.75
					})
				0:
					x: 435 + 200 * width - 2 * ( (88 / 80 * thickness * opticThickness) * 0.25 )
					y: 0
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) + (width - 1) * 5
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({y: contours[2].nodes[0].y, on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]})
					y: capHeight * 0.3
					typeOut: "line"
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) + Math.PI
						distr: 0.5
					})
				1:
					x: Utils.onLine({y: contours[2].nodes[1].y, on: [ contours[1].nodes[0].point, contours[1].nodes[1].point ]})
					y: capHeight * 0.3
					typeOut: "line"
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point )
						distr: 0.5
					})
