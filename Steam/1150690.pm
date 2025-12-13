package GameWrapper::Preset;    # Omori
use warnings;
use strict;

our %FeatureFlags = (
    'Gamescope' => 1,
    'MangoHud'  => 0,
    'MangoApp'  => 0,
    'Zink'      => 0,
);

our %GamescopeConfig = (
    'game-width'        => 1280,
    'game-height'       => 960,
    'max-fps'           => 60,
    #'output-width'      => 0,
    #'output-height'     => 0,
    #'fullscreen'        => 0,
    #'borderless'        => 0,
    #'force-grab-cursor' => 0,
    #'expose-wayland'    => 0,
    #'xwayland-count'    => 1,
    #'steam-integration' => 0,
    'keep-size'         => 1
);

sub PatchEnv {
    use Env qw(PROTON_USE_NTSYNC PROTON_ENABLE_WAYLAND);
    $PROTON_USE_NTSYNC     = 1;
    $PROTON_ENABLE_WAYLAND = 0;
}

sub PatchCmdLine {
    my @cmdLine = (@_);
    return @cmdLine;
}