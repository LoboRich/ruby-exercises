def bouncing_ball(h, bounce, window)
    window < h && bounce > 0 && bounce < 1 ? 2+(h.to_f * bounce).floor : -1 
end
bouncing_ball(3, 0.66, 1.5)
bouncing_ball(3, 1, 1.5)
