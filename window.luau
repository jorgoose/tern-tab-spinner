--!strict
-- Tern owns the working state. Only decorate its native sidebar icon;
-- do not infer activity from an agent process merely being alive.
tern.css("spinner", [[
#sidebar .tn-vt .nav-row.working > .tn-dk {
    position: relative;
    overflow: visible;
}

#sidebar .tn-vt .nav-row.working > .tn-dk::after {
    content: "";
    position: absolute;
    left: -3px;
    top: -3px;
    width: 24px;
    height: 24px;
    box-sizing: border-box;
    padding: 2px;
    border-radius: 6px;
    background-image: perimeter-gradient(6px, 0, transparent 0%, transparent 55%, var(--accent) 90%, var(--accent) 100%);
    mask-image: linear-gradient(white, white), linear-gradient(white, white);
    mask-clip: content-box, border-box;
    mask-composite: exclude;
    pointer-events: none;
    animation: tab-spinner-turn 1s linear infinite;
}

@keyframes tab-spinner-turn {
    from {
        background-image: perimeter-gradient(6px, 0, transparent 0%, transparent 55%, var(--accent) 90%, var(--accent) 100%);
    }
    to {
        background-image: perimeter-gradient(6px, 1, transparent 0%, transparent 55%, var(--accent) 90%, var(--accent) 100%);
    }
}

@media (prefers-reduced-motion: reduce) {
    #sidebar .tn-vt .nav-row.working > .tn-dk::after {
        animation: none;
    }
}
]])
