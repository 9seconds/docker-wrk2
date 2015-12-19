BEGIN {
    block_met = 0
    start_print = 0
}

/Detailed Percentile/ {
    block_met = 1;
    next;
}

/^#/ {
    block_met = 0;
    exit;
}

block_met == 1 && /^$/ {
    start_print = 1;
    next;
}

block_met == 1 && start_print == 1 {
    print $1, $2, $3, $4
}
