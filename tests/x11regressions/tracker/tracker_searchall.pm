use base "basetest";
use testapi;

# Case 1248738 - Beagle: Search all data with beagle-search
# Modify to : Tracker: Seach all date with tracker-needle

sub run() {
    my $self = shift;
    x11_start_program("tracker-needle");
    sleep 2;
    wait_idle;
    assert_screen 'test-tracker_searchall-1', 3;
    type_string "newfile";
    sleep 2;
    wait_still_screen;
    assert_screen 'test-tracker_searchall-2', 3;
    send_key "alt-f4";
    sleep 2;

    # assert_screen 'test-tracker_searchall-3', 3;
}

1;
# vim: set sw=4 et:
