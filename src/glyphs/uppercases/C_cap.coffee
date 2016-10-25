exports.glyphs['C_cap'] =
	unicode: 'C'
	glyphName: 'C'
	characterName: 'LATIN CAPITAL LETTER C'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 25 * spacing
		spacingRight: 35 * spacing
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
					x: 215 + 200 * width
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[1].x - contours[0].nodes[1].expandedTo[1].x ) * (260/425)
					y: -overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + 0.25 * contours[0].nodes[1].expand.width
					y: capHeight / 2
					dirOut: 90 + 'deg'
					expand: Object({
						width: 90 / 80 * thickness * opticThickness + (width - 1) * 15 * (thickness / 80 - 1)
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x - 10
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast
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
						width: thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				1:
					x: 375 + 200 * width
					y: contours[1].nodes[0].y - 40
					dirIn: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) - 20 / 180 * Math.PI - contours[1].nodes[1].expand.width / 80 * Math.PI / 12
					expand: Object({
						width:
							if contrast < 1
							then thickness * opticThickness * (contrast + (1 - contrast) * 1.4)
							else thickness * opticThickness * contrast
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
						width: thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: 375 + 200 * width
					y: contours[2].nodes[0].y + 40
					dirIn: Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) + 20 / 180 * Math.PI + contours[1].nodes[1].expand.width / 80 * Math.PI / 12
					expand: Object({
						width:
							if contrast < 1
							then thickness * opticThickness * (contrast + (1 - contrast) * 1.4)
							else thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
