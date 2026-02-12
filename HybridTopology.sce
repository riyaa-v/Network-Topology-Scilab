CODE:

// Manual check: If this fails, NARVAL isn't installed properly
if ~with_module('NARVAL') then
    error("Go to Console and type: atomsInstall('NARVAL'), then restart Scilab.");
end

// --- 1. Topology Creation (25 Nodes) ---
t_star = ones(1, 9); h_star = 2:10;              // Star
t_bus = 11:19; h_bus = 12:20;                    // Bus
t_ring = [21:24, 25]; h_ring = [22:25, 21];      // Ring
t_links =; h_links =; // Link hubs

t = [t_star, t_bus, t_ring, t_links];
h = [h_star, h_bus, h_ring, h_links];

g = make_graph('Hybrid_Net', 0, 25, t, h);

// --- 2. Display and Formatting ---
g.nodes.graphics.display = 'number';
g.edges.graphics.display = 'number';
g.nodes.graphics.colors(1:10) = 2;   // Blue
g.nodes.graphics.colors(11:20) = 3;  // Green
g.nodes.graphics.colors(21:25) = 5;  // Red

show_graph(g);

// --- 3. Print Data ---
printf("\n--- Network Data ---\n");
degrees = zeros(1, 25);
for i = 1:25
    deg = length(find(t == i)) + length(find(h == i));
    degrees(i) = deg;
    printf("Node %d: %d edges\n", i, deg);
end

[m_val, m_node] = max(degrees);
printf("\nNode with max edges: Node %d (%d edges)\n", m_node, m_val);
printf("Total Nodes: %d\n", node_number(g));
printf("Total Edges: %d\n", edge_number(g));

