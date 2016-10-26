exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[1].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 100
		spacingRight: 50 * spacing + 110
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 25
					y: capHeight - 40 + (0)
					dirOut: 30 + 'deg'
					expand: Object({
						width: ( 95 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 165 / 360 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].x + 200 * width + 160 - (20),
						contours[0].nodes[0].x + 0.25 * thickness
					)
					y: capHeight - ( 200 / 700 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: contours[0].nodes[4].expandedTo[0].y + ( contours[0].nodes[2].expandedTo[1].y - contours[0].nodes[4].expandedTo[0].y ) * 0.45
					dirOut: Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point ) - ( 20 / 180 ) * Math.PI
					type: 'smooth'
					tensionOut: 0.9
					expand: Object({
						width: thickness
						angle: Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point ) - Math.PI / 2 - ( 20 / 180 ) * Math.PI
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].x - (5/80) * thickness
					y: ( 65 / 80 ) * thickness
					dirIn: 90 + 'deg'
					tensionIn: 1.4
					expand: Object({
						width: ( 83 / 80 ) * thickness
						angle: 180 + 13 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[4].expandedTo[1].y
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[4].expandedTo[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[4].expandedTo[0].y
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[2].expandedTo[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
