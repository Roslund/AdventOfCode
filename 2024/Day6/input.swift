//
//  input.swift
//  AdventOfCode
//
//  Created by Anton Roslund on 2024-12-21.
//

let sample = """
....#.....
.........#
..........
..#.......
.......#..
..........
.#..^.....
........#.
#.........
......#...
"""

let input = """
..........................#.#........................................#..........................................#.............#...
....................#...............................#.......#...............................#..........................#...#......
.....#.......#...................................................#..#....................##.........#...#...........#.....#..#.#..
............#...#....#..............##...#.#....#........................#...................................................#....
....#......##........................................................................#..#..##...................##.........#......
.............##.........#..##..............#...............#....................#..................#......#...................#...
...........#.....................#.......#.................#....#.#..............#...........#.........................#..........
.#............#..............................................................#........#................#........#.................
..........................#..#.......................................................#.........#..................................
.........#....#................#...........#...................##............#..........#.........................................
....#...................................#....#.........#..........#.......................#..............................#........
.............................#.....##.............................................................#..#...........................#
....#................#...#.#..........#.#....#..................#..........#......#.............................#.................
......................#............#......................................##................#..........#..#.............#.........
..#........#............#.....###....##...........................#..............................#.....#..........................
.....#...........#..#.........#...................#.#.................#........#............#.....#........#......................
..........................................................................................................................#.......
..#...................#.....................................................................#....................#................
...............#............................#....#..........#...................#............#...............#..#.................
................#...........................#...........................................#.........................#...............
..........#.......#.........................##.................................................#...................##..#..........
.#.........#...#..#............................................#........................#.......................................#.
........#...........###..................#...........#..............#.....................#................#......................
.............#....#............................#.#..............................#..#................................#.............
...#.....#..........#...........#..................................................#........#...........#..#..........##.....#....
...............................................................................#...................#........................##....
......#.#...........................#.................#.................................................................#.........
..................................#............................................................................#.#................
........................#.......#.....#..........#..#.............##.................#..............#............##...............
......#........................#........................................#......#..................................................
...............##.......#..............................................................................................#..........
....#...................................................................................#.........#..........#..............#.....
.....#.............#.........................#.........#........#................#.#.........................#..........#.........
.............#......##...........#................#...#.#.....#......................................#..........#.................
...........................#............#................#................#...........................#.....#.....................
.......#.................#..#..............#................................#....#........#.......#.............#....#....##......
........................................................#........................................................................#
.................#.........................................#.......#.......#......#...#.#.................##......................
..........#............#..............................................#........................................#..........#..#....
..............#......................................................#......#................................#....................
...#........#.............#.................#......#.......................#..............................##........#.............
.....................#............................................................#............#...............................#..
......#.....#..............................................................#...............#...#..................................
.......................................#..#.......#...#..............#.................................................#..........
...................................................................................................#........................#.....
....#.....#.......................................................#.....#......#...................#............#.................
..............#....#.....................#........................................##....#...#.....................................
.....#...............................................................#............#............................#..................
........................#..........................#..............................................................................
#..............#...........................................................................#......................................
...................................#...#....................................................................#.....................
................#......#.........#.................#...........................#..................................................
......#...#................#...............#..................................................#...................................
.......................#.............#..#....................#............#.......................................................
.....................#.#.....................................#................................##.............#.#..#..............#
.....................................#...#...........................#....................................................##...#..
.................#..#............#.............................#..#................................................##.............
...#...........................................#.................................................#.............#.............##...
..................#....#....#.#..........................#.............#................#............................#............
.........................#................#.#..#.#............^.........................................................#.........
.....#...............#............................................................................................................
.#.......................................................................................#...............#....#.............#.....
......#................................#............#............................................................#................
.#.....................#..............#.............#.......................#.....#....#.#.#...................#....#.............
..................................................................#........#............................#..#.#...............#....
.#.....................#......#........#.......#.................#.......................#..#.....................................
..............#..#..#.............................................#....................#......#...................................
.................##.#............................##..#...............................................................#....#.......
...........#..#........................#.#..........#.................##.....#...#.........................#.#...#............#...
.....................#..........#..#..............................................................................................
.......#...............................#..#.........#.....................................#......#...................#............
..............................##.#........#.......#..#.....#......................................................................
..................#......................#.....................................###...#............................##..............
...................................#...................................#...........................#....##..#.....................
.....................#.....#.#.........#.........................#.....#.......#..........#.......................#...............
...........#..................................................................................................#...................
......#............................#.............................#..........................................#.....##..............
...........................#...........................................................#.............................#..........#.
..........................................#..........................................#......#...............#.....................
..............##.........#........................................................................................................
.....................#............#..#......#..#......................................................................#...........
........#.........#.....................#.................................#...#.#....#....#......................#.#..............
......#...........#............................................................#..............#......................#............
.....#.....................#.....#.........#.............................#....#............................#......................
..#..............................................................................................................#...#............
..............#.......................#........#............................................#.......................#.............
........................................#....................................................................................##...
.......#..#.......#.................#.#.................#...........#............#........#.#.........#...........#.#..........#..
.....##.......................#.........................#.........................#...........#.........#.....#...........#.......
..........................#.....................#...............................#.............................#...................
.....#..........#.............#...#..........................#.#...................#...........................#......#...........
......................................#.......#.........#......................................#..................................
......#...#....................#................#...#.......#.............#............#...........#.....#........................
........................................#............#......................................................#............#........
..#.......#....#..........................................................................#......................##..#.......#....
................#...................................................#..........................................#..................
...........#........................................................................................#.............................
..................#........................................#.....#...........................#..................#.................
........#.......#.....#...........#.......................................................#.........#.............................
.............#.....#.#............................#...................................................................#...........
...............#...................................#...........................#.............#..#..................#..##..........
.#...............................#....#.....................#...................................#...................#...#.........
..................#..#.#..................................................................................................#.......
.........#.....#...#.........#........#...........................................#..................#.#.#......#.................
.........#......#.......................#........#.............................#...#................#...........................#.
...#.........................................................................................##........................#..........
.....................................#...........................................................#.#...#......#...............#...
#.....................#.........#.................................................#.....................................#.........
............##.............................#...............................................#......................................
.#.................#........................#.................................................................#.....#.............
.....#.......................#......................#.................#....#....................................................#.
.............................#..................................................................#.#...............................
........#.......#.....##..........................................#...................#.........#...........#...#...#...#.........
..........#.#...#.....................#............................................................##.........##..................
...................#..............##.....#...........#.#.......#................................................#...............#.
............................................................#....#.............#....##.......#...#...#................#...........
......#...............................#.........#...................#....#..............#.................#.......................
....................................#.....................#....#....#.................#...............#...........................
.................................#.............#.#...................................#..............#...#.....#.............#.....
......................#..................#.............#.................#................................................#.......
.....................##.......................#.............#...#........#..........#.....#............................##...#.....
..........................#.....................#...........#.....................................................#...............
................#.....................................................................................................#...........
........#......#.......................#....................................#................................#....................
.....................................#............................................................................................
........#..........#.........#.#................##................#...#..........................#.........#......##.......#......
.......#...................#................................#..#.......................#..............................#...........
............#.....................................#......#........................#..........#.............................#......
..#...........#...........#...................................#............#...#.....#......................................#.....
................................................................#...........#.......##.......#..........#............#............
"""
