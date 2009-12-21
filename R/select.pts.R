select.pts <-
function (pts, outside.poly = FALSE, col = "blue", alpha = 0.5, lty = 1, ...) 
{
    pts <- pts # Needed if e.g. imap() is called inside of select.pts: select.pts(imap())

    col <- col.alpha(col, alpha)

    Poly <- draw.polygon(col = col, lty = lty)
    tf <- inside.polygon(pts, Poly)
    points(pts[tf, 1], pts[tf, 2], ...)

    if (outside.poly) 
        pts[!tf, ]
    else pts[tf, ]
} 
