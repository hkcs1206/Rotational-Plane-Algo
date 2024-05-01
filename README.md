# Rotational-Plane-Algo

### 1 - Introduction

The rotational plane sweep is a path planning algorithm based on topological maps. It is one of the most powerful method of intelligent robot navigation.
### 2 - The Algorithm

Topological map is a simplified map with only relationship between points. It can be represented as a graph:
- nodes are real positions
- edges join positions in the free space.
They include the distance. It is easy to find a path in a topological map. So, the only problem is how to build a topological map? We are going to create visibility graph.

In order to create visibility graph. We should define for a 2D polygonal configuration space
- The nodes vi of the visibility graph include the start location, the goal location, and all the vertices of the configuration space obstacles. 
- The graph edges eij are straight-line segments that connect two line-of-sight nodes vi and vj, i.e., 
Construction of the visibility graph with n nodes has complexity n3 for all nodes; for all potential edges; for all obstacle edges wich can be reduced with the Rotational Plane Sweep Algorithm.

If we use visibility graph construction with brute force, it takes a lot of computions and time. However, if we use the rotational plane sweep algorithm for building the visibility graph, the total time complexity of n2logn and you should do the followings:
- A rotating half-line emanating from any vertex will be used to determine the vertices which are visible.
- The half-line has to stop only in the directions in which there is a vertex.
- At each vertex angle, a list of edges which intersect the beam will be updated (list S).
- Since the line rotates following the sorted list of vertex angles, list ε, the updating of the S list consists only on adding or removing the edges that contain the candidate vertex.
- Then, to determine if the vertex is visible, only intersection with lines contained in the S list, that are closer than the candidate vertex, have to be checked.
The algorithm uses a line which start point, let call it reference vertex, and end point is coordinates of all other vertices of the all obstacles, including start and goal positions of the robot, let call them examining vertices. The angle of the sweeping line set to zero initially, and begins to sweep counter-clockwise from 0 to 2π [rad].

While this sweeping procedure, edges of the obstacles added to or removed from dynamic edge list S according to join which vertex of the obstacles. At each instant vertices list is checked for whether reference and examining vertices have line-of-sight or not.
