exports.glyphs['v'] =
	unicode: 'v'
	glyphName: 'v'
	characterName: 'LATIN SMALL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (21/80) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 80 ) * thickness + (width - 1) * ( 5 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 80 ) * thickness + (width - 1) * ( 10 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 235 - (21),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 85 / 80 ) * thickness
					)
					y: xHeight
					dirOut: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[0].point )
					expand: Object({
						width: ( 85 / 80 ) * thickness + (width - 1) * ( 5 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: 0
					dirIn: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[1].point )
					expand: Object({
						width: ( 85 / 80 ) * thickness + (width - 1) * ( 10 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
