select.pts <-
function (pts, outside.poly = FALSE, col = col.alpha("blue", .5), lty = 1, ...) 
{
    Poly <- draw.polygon(col = col, lty = lty)
    tf <- inside.polygon(pts, Poly)
    points(pts[tf, 1], pts[tf, 2], col = col, ...)
    if (outside.poly) 
        pts[!tf, ]
    else pts[tf, ]
} 
