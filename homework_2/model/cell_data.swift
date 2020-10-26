//
//  cell_data.swift
//  homework_2
//
//  Created by Field Employee on 10/25/20.
//

import UIKit

var array_of_cell_data: [cell_data] = []

struct cell_data{
    var cell_image: UIImage
    var main_label_text: String
    var sub_label_text: String
    var shape: shape_type
    var background_color: UIColor
    var last_modified: String
    
    init(_ type: shape_type){
        shape = type
        last_modified = get_current_time()

        switch type{
        case .circle:
            cell_image = UIImage(named: "circle")!
            main_label_text = "Circle"
            sub_label_text = "A circle is a shape consisting of all points in a plane that are a given distance from a given point, the centre; equivalently it is the curve traced out by a point that moves in a plane so that its distance from a given point is constant. The distance between any point of the circle and the centre is called the radius."
            background_color = RGB_to_UIColor(red: 56, green: 144, blue: 99)
        case .crescent:
            cell_image = UIImage(named: "crescent")!
            main_label_text = "Crescent"
            sub_label_text = "The crescent shape is a type of lune, the latter consisting of a circular disk with a portion of another disk removed from it, so that what remains is a shape enclosed by two circular arcs which intersect at two points. In a crescent, the enclosed shape does not include the center of the original disk."
            background_color = RGB_to_UIColor(red: 113, green: 67, blue: 254)
        case .triangle:
            cell_image = UIImage(named: "triangle")!
            main_label_text = "Triangle"
            sub_label_text = "In Euclidean geometry, any three points, when non-collinear, determine a unique triangle and simultaneously, a unique plane (i.e. a two-dimensional Euclidean space). In other words, there is only one plane that contains that triangle, and every triangle is contained in some plane. If the entire geometry is only the Euclidean plane, there is only one plane and all triangles are contained in it; however, in higher-dimensional Euclidean spaces, this is no longer true."
            background_color = RGB_to_UIColor(red: 221, green: 111, blue: 13)
        case .square:
            cell_image = UIImage(named: "square")!
            main_label_text = "Square"
            sub_label_text = "In geometry, a square is a regular quadrilateral, which means that it has four equal sides and four equal angles (90-degree angles, or 100-gradian angles or right angles). It can also be defined as a rectangle in which two adjacent sides have equal length."
            background_color = RGB_to_UIColor(red: 78, green: 218, blue: 0)
        case .rectangle:
            cell_image = UIImage(named: "rectangle")!
            main_label_text = "Rectangle"
            sub_label_text = "In Euclidean plane geometry, a rectangle is a quadrilateral with four right angles. It can also be defined as an equiangular quadrilateral, since equiangular means that all of its angles are equal (360°/4 = 90°). It can also be defined as a parallelogram containing a right angle. A rectangle with four sides of equal length is a square. The term oblong is occasionally used to refer to a non-square rectangle."
            background_color = RGB_to_UIColor(red: 12, green: 74, blue: 72)
        case .pentagon:
            cell_image = UIImage(named: "pentagon")!
            main_label_text = "Pentagon"
            sub_label_text = "In geometry, a pentagon (from the Greek πέντε pente and γωνία gonia, meaning five and angle[1]) is any five-sided polygon or 5-gon. The sum of the internal angles in a simple pentagon is 540°. A pentagon may be simple or self-intersecting. A self-intersecting regular pentagon (or star pentagon) is called a pentagram."
            background_color = RGB_to_UIColor(red: 202, green: 32, blue: 155)
        case .star:
            cell_image = UIImage(named: "star")!
            main_label_text = "Star"
            sub_label_text = "In geometry, a star polygon is a type of non-convex polygon. Only the regular star polygons have been studied in any depth; star polygons in general appear not to have been formally defined, however certain notable ones can arise through truncation operations on regular simple and star polygons."
            background_color = RGB_to_UIColor(red: 253, green: 115, blue: 93)
        case .hexagon:
            cell_image = UIImage(named: "hexagon")!
            main_label_text = "Hexagon"
            sub_label_text = "In geometry, a hexagon (from Greek ἕξ hex, 'six' and γωνία, gonía, 'corner, angle') is a six-sided polygon or 6-gon. The total of the internal angles of any simple (non-self-intersecting) hexagon is 720°. A regular hexagon is defined as a hexagon that is both equilateral and equiangular. It is bicentric, meaning that it is both cyclic (has a circumscribed circle) and tangential (has an inscribed circle)."
            background_color = RGB_to_UIColor(red: 44, green: 44, blue: 105)
        case .sphere:
            cell_image = UIImage(named: "sphere")!
            main_label_text = "Sphere"
            sub_label_text = "A sphere (from Greek σφαῖρα—sphaira, 'globe, ball') is a geometrical object in three-dimensional space that is the surface of a ball (viz., analogous to the circular objects in two dimensions, where a 'circle' circumscribes its 'disk'). Like a circle in a two-dimensional space, a sphere is defined mathematically as the set of points that are all at the same distance r from a given point in a three-dimensional space. This distance r is the radius of the ball."
            background_color = RGB_to_UIColor(red: 85, green: 87, blue: 118)
        case .cube:
            cell_image = UIImage(named: "cube")!
            main_label_text = "Cube"
            sub_label_text = "In geometry, a cube is a three-dimensional solid object bounded by six square faces, facets or sides, with three meeting at each vertex. The cube is the only regular hexahedron and is one of the five Platonic solids. It has 6 faces, 12 edges, and 8 vertices. The cube is also a square parallelepiped, an equilateral cuboid and a right rhombohedron. It is a regular square prism in three orientations, and a trigonal trapezohedron in four orientations."
            background_color = RGB_to_UIColor(red: 180, green: 123, blue: 248)
        case .pyramid:
            cell_image = UIImage(named: "pyramid")!
            main_label_text = "Pyramid"
            sub_label_text = "In geometry, a pyramid is a polyhedron formed by connecting a polygonal base and a point, called the apex. Each base edge and apex form a triangle, called a lateral face. It is a conic solid with polygonal base. A pyramid with an n-sided base has n + 1 vertices, n + 1 faces, and 2n edges. All pyramids are self-dual. A right pyramid has its apex directly above the centroid of its base. Nonright pyramids are called oblique pyramids."
            background_color = RGB_to_UIColor(red: 139, green: 186, blue: 120)
        }
    }
}

enum shape_type: String {
    case circle
    case crescent
    case triangle
    case square
    case rectangle
    case pentagon
    case star
    case hexagon
    case sphere
    case cube
    case pyramid
}

func random_shape() -> shape_type {
    let num = Int.random(in: 0...1100)
    if num < 100{return .circle}
    else if num < 200{return .crescent}
    else if num < 300{return .triangle}
    else if num < 400{return .square}
    else if num < 500{return .rectangle}
    else if num < 600{return .pentagon}
    else if num < 700{return .hexagon}
    else if num < 800{return .sphere}
    else if num < 900{return .cube}
    else if num < 1000{return .pyramid}
    else{return .star}
}

func RGB_to_UIColor(red: Int, green: Int, blue: Int) -> UIColor {
    let red2 = CGFloat(Double(red) / 255.0)
    let green2 = CGFloat(Double(green) / 255.0)
    let blue2 = CGFloat(Double(blue) / 255.0)
    
    let swift_color = UIColor(red: red2, green: green2, blue: blue2, alpha: CGFloat(1.0))
    return swift_color
}

func get_current_time() -> String {
    let now = Date()
    let formatter = DateFormatter()
    formatter.timeZone = TimeZone.current
    formatter.dateFormat = "MM-dd HH:mm:ss"
    let dateString = formatter.string(from: now)
    return dateString
}


