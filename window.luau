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
    border: 2px solid transparent;
    border-top-color: var(--accent);
    border-right-color: var(--accent);
    border-radius: 50%;
    pointer-events: none;
    animation: tab-spinner-turn 1s linear infinite;
}

@keyframes tab-spinner-turn {
    from { transform: rotate(0deg); }
    to { transform: rotate(360deg); }
}

@media (prefers-reduced-motion: reduce) {
    #sidebar .tn-vt .nav-row.working > .tn-dk::after {
        animation: none;
    }
}
]])
