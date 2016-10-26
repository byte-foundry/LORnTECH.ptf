exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 25
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
						width: ( 85 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.15 + ( 0.1 / 80 ) * thickness
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
						width: ( 85 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: 0
					type: 'smooth'
					dirIn: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[1].point )
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 30
					y: descender
					dirIn: Utils.lineAngle( contours[1].nodes[2].expandedTo[0].point, contours[1].nodes[1].expandedTo[1].point )
					# tensionIn: 0
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
