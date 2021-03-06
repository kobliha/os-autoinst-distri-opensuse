use base "x11test";
use testapi;

sub run() {
    my $self = shift;
    x11_start_program("oowriter");
    assert_screen 'test-ooffice-1', 10;
    type_string "Hello World!";
    assert_screen 'test-ooffice-2', 5;
    send_key "alt-f4";
    assert_screen "ooffice-save-prompt", 8;
    assert_and_click 'dont-save-libreoffice-btn'; # _Don't save
}

1;
# vim: set sw=4 et:
