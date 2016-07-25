function polar_scatter(n)
% Generate and show a scatter plot in Cartesian coordinates
%   cartesian_scatter(n) generate n points
    angles = rand(1, n) * 2 * pi;
    dist_x = rand(1, n);
    dist_y = rand(1, n);
    x1 = cos(angles) .* (1 + dist_x);
    y1 = sin(angles) .* (1 + dist_y);
    r1 = sqrt(x1 .^ 2 + y1 .^ 2);
    figure;
    % set(fig, 'Position', [250 200 480 480]);
    plot = scatter(r1, angles, 'v');
    plot.MarkerFaceColor = [0 0.9 0];
    plot.LineWidth = 1;
    angles = rand(1, n) * 2 * pi;
    dist_x = rand(1, n);
    dist_y = rand(1, n);
    x2 = cos(angles) .* (dist_x);
    y2 = sin(angles) .* (dist_y);
    r2 = sqrt(x2 .^ 2 + y2 .^ 2);
    hold on;
    plot = scatter(r2, angles, 'o', 'filled');
    plot.MarkerFaceColor = [0 0 0.9];
    plot.LineWidth = 1;
    box on;
    set(gca, 'xtick', []);
    set(gca, 'ytick', []);
    xlabel('r', 'fontsize', 24);
    ylabel('\theta', 'fontsize', 24);
    t = title('¼«×ø±êÏµ', 'fontsize', 24);
    set(t, 'FontName', 'Noto Sans CJK SC');
end