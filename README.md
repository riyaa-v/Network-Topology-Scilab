# Network-Topology-Scilab
Network Topology Creation using Scilab
This repository contains the implementation of a Hybrid Network Topology designed using Scilab and the NARVAL toolbox

🛠️ Requirements
Scilab-6.0.0 x64.
NARVAL Toolbox (Graphs module).

📊 Topology Specifications
The network consists of 25 nodes integrated into a single hybrid structure using three basic topologies:
Star Topology: Nodes 1–10 (Blue).
Bus Topology: Nodes 11–20 (Green).
Ring Topology: Nodes 21–25 (Red).


💻 Code Functionality
The script Hybrid_Net performs the following automated operations:
Graph Construction: Defines edges and nodes for a hybrid environment.
Visual Formatting: Colors nodes by group and labels both nodes and edges.
Data Analysis:
Calculates and prints the edge count (degree) for every node.
Identifies the node with the maximum number of edges.
Prints total node and edge counts.

🏭 Industrial Scenario
The network is modeled as a Smart Factory:
Control Room: Star Network.
Assembly Line: Bus Network.
Sensor Network: Ring Network.

Fault Analysis: A break in the Bus cable between Node 15 and 16 results in a loss of connection for downstream assembly nodes to the Control Room (Node 1). In contrast, a break in the Ring network maintains better redundancy.
