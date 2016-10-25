exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 40 * spacing
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
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
					x: spacingLeft + thickness * 0.25
					y: contours[0].nodes[1].y + 40
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[0].point ) - 10 / 180 * Math.PI
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 80 + 200 * width / 2
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[1].x + 80 + 200 * width / 2 - thickness * 0.25
					y: xHeight / 4 + (thickness / 80 - 1) * 20 + 3 * (width - 1)
					dirIn: 90 + 'deg'
					expand: Object({
						width: thickness + Math.max(0, (width - 1) * 40 * (thickness / 80 - 1))
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: xHeight / 2
					dirOut: Math.min(Math.PI, Utils.lineAngle(contours[0].nodes[2].point, contours[0].nodes[4].point) + (10*(width-1)* 1.3 ) / 180 * Math.PI + Math.PI / 8)
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: contours[0].nodes[3].dirOut + Math.PI / 2
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].x
					y: xHeight / 4 * 3 - (thickness / 80 - 1) * 20 - 3 * (width - 1)
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness + Math.max(0, (width - 1) * 40 * (thickness / 80 - 1))
						angle: 180 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[5].y - 40
					dirIn: Utils.lineAngle( contours[0].nodes[5].point, contours[0].nodes[6].point ) - 10 / 180 * Math.PI
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 1
					})
