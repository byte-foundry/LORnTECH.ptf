exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine],
	)
	parameters:
		spacingLeft: 30 * spacing
		spacingRight: 70 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 220 + 200 * width
					y: Math.min(
						xHeight - 15 - 35 * ( thickness / 80 ),
						xHeight - 50
					)
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - 20 / 180 * Math.PI
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (150/310)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + 0.25 * thickness
					y: xHeight / 2
					type: 'smooth'
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (150/310)
					y: 0 - overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x + 10
					y: Math.max(
						15 + 35 * ( thickness / 80 ),
						50
					)
					dirIn: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[4].point ) + 20 / 180 * Math.PI
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[4].y - Math.max(
						60,
						100 * ( thickness / 80 )
					)
					dirOut: - 90 + 'deg'
					tensionOut: 1.15
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].x
					x: contours[1].nodes[3].x + ( contours[1].nodes[1].expandedTo[1].x - contours[1].nodes[3].x ) * 0.5
					y: descender
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + 20
					y: descender * ( 230 / 300 )
					dirIn: Utils.lineAngle( contours[1].nodes[3].point, contours[1].nodes[2].point ) - 20 / 180 * Math.PI
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
