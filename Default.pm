package GameWrapper::Preset;    # Template
use warnings;
use strict;

our %FeatureFlags = (
    'Gamescope' => 0,
    'MangoHud'  => 0,
    'MangoApp'  => 0,
    'Zink'      => 0,
);

our %GamescopeConfig = (
    #'game-width'        => 1280,
    #'game-height'       => 720,
    #'max-fps'           => 60,
    #'output-width'      => 0,
    #'output-height'     => 0,
    #'fullscreen'        => 0,
    #'borderless'        => 0,
    #'expose-wayland'    => 0,
    #'xwayland-count'    => 1,
    #'steam-integration' => 0,
    'keep-size'         => 0
);

sub PatchEnv {
    return;    #use Env qw(GAMEWRAPPER);
}

sub PatchCmdLine {
    my @cmdLine = (@_);
    return @cmdLine;
}