package GameWrapper::Preset;    # SCP: Containment Breach Multiplayer
use warnings;
use strict;

our %FeatureFlags = (
    'Gamescope' => 1,
    'MangoHud'  => 0,
    'MangoApp'  => 0,
    'Zink'      => 0,
);

our %GamescopeConfig = (
    'game-width'        => 1920,
    'game-height'       => 1080,
    'max-fps'           => 60,
    #'output-width'      => 0,
    #'output-height'     => 0,
    'fullscreen'        => 1,
    'borderless'        => 1,
    #'expose-wayland'    => 0,
    #'xwayland-count'    => 1,
    #'steam-integration' => 0,
    'keep-size'         => 1
);

sub PatchEnv {
    return;    #use Env qw(GAMEWRAPPER);
}

sub PatchCmdLine {
    my @cmdLine = (@_);
    return @cmdLine;
}