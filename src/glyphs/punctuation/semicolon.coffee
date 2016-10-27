exports.glyphs['semicolon'] =
	unicode: ';'
	glyphName: 'semicolon'
	characterName: 'SEMICOLON'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80
	tags: [
		'all',
		'latin',
		'punctuation'
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
					x: spacingLeft + 10
					y: 0
					dirOut: - 90 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: Math.max( 20, ( 75 / 80 ) * thickness )
						angle: 40 + 'deg'
						distr: 0.05
					})
				1:
					x: Math.min(
						contours[0].nodes[0].x,
						spacingLeft + 10 - 35
					)
					x: contours[0].nodes[0].x
					x: ( contours[0].nodes[0].x + contours[1].nodes[2].x ) * 0.5
					y: - 110
					dirIn: 10 + 'deg'
					tensionIn: 0
					expand: Object({
						width: thickness / 2
						angle: - 25 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 90 + 'deg'
				1:
					x: contours[0].nodes[0].expandedTo[1].x - ( contours[1].nodes[1].y ) / 2
					y: contours[0].nodes[0].expandedTo[1].y + contours[1].nodes[0].y + 10
					dirOut: 180 + 'deg'
					type: 'smooth'
				2:
					x: contours[1].nodes[3].x - ( contours[1].nodes[0].y )
					y: contours[1].nodes[0].y
					dirIn: 90 + 'deg'
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].x + 20
					y: Math.min(
						contours[1].nodes[1].y + ( 250 / 500 ) * xHeight,
						xHeight - Math.max( 40, ( ( 104 / 80 ) * thickness ) )
					)
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: contours[2].nodes[0].x - Math.max( 20, ( ( 104 / 80 ) * thickness ) / 2 )
					y: contours[2].nodes[0].y + Math.max( 20, ( ( 104 / 80 ) * thickness ) / 2 )
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[2].nodes[0].x
					y: contours[2].nodes[0].y + Math.max( 40, ( ( 104 / 80 ) * thickness ) )
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: contours[2].nodes[1].x + Math.max( 40, ( ( 104 / 80 ) * thickness ) )
					y: contours[2].nodes[1].y
					dirOut: 270 + 'deg'
					type: 'smooth'
