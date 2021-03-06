exports.glyphs['G_cap'] =
	unicode: 'G'
	glyphName: 'G'
	characterName: 'LATIN CAPITAL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 90
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
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[1].x - contours[0].nodes[1].expandedTo[1].x ) * (265/425)
					y: -overshoot
					dirOut: 180 + 'deg'
					tensionOut: 0.95 + (thickness / 80 - 1) * 0.10
					expand: Object({
						width: 87/80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + 0.25 * contours[0].nodes[1].expand.width
					y: capHeight / 2 + 1
					dirOut: 90 + 'deg'
					tensionOut: 0.95 + (thickness / 80 - 1) * 0.10
					tensionIn: 0.95 + (thickness / 80 - 1) * 0.10
					expand: Object({
						width: 90 / 80 * thickness * opticThickness + (width - 1) * ( 15 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					tensionIn: 0.95 + (thickness / 80 - 1) * 0.10
					expand: Object({
						width: 87/80 * thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: 87/80 * thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				1:
					x: 375 + 200 * width  + (thickness / 80 - 1) * width * 30
					y: contours[1].nodes[0].y - 40
					dirIn: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) - 15 / 180 * Math.PI - Math.max(0, (1 - contrast) * Math.PI / 4)
					expand: Object({
						width:
							if contrast < 1
							then 94/80 * thickness * opticThickness * (contrast + (1 - contrast) * 1.4)
							else 94/80 * thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: 87/80 * thickness * opticThickness * contrast
						angle: 270 + 'deg'
						distr: 1
					})
				1:
					x: 439 + 200 * width + (thickness / 80 - 1) * width * 30
					y: contours[2].nodes[0].y + 65
					dirIn: Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) + 19 / 180 * Math.PI + Math.max(0, (-contrast + 1) * Math.PI / 4)
					tensionIn: 0.85
					expand: Object({
						width:
							if contrast < 1
							then 94/80 * thickness * opticThickness * (contrast + (1 - contrast) * 1.4)
							else 94/80 * thickness * opticThickness * contrast
						angle: 270 + 'deg'
						distr: 1
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						angle: 10 + 'deg'
						distr: 1
					})
				1:
					x: contours[2].nodes[1].x
					y: capHeight * 330 / 700
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
				2:
					x: contours[3].nodes[1].x
					y: contours[3].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[3].nodes[2].x - 130 - 100 * width - (thickness / 80 - 1) * 20
					y: contours[3].nodes[2].y
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
