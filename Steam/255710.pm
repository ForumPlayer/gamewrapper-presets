package GameWrapper::Preset;    # Cities Skylines
use warnings;
use strict;

our %FeatureFlags = (
    'Gamescope' => 1,
    'MangoHud'  => 0,
    'MangoApp'  => 0,
    'Zink'      => 0,
);

our %GamescopeConfig = (
    #'game-width'        => 1280,
    #'game-height'       => 720,
    'max-fps'           => 60,
    'output-width'      => 1920,
    'output-height'     => 1080,
    'fullscreen'        => 1,
    'borderless'        => 1,
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
    foreach my $x (@cmdLine) {
        $x =~ s/dowser/Cities_Loader.sh/;    #$x =~ s/dowser/Cities.x64/
    }
    return @cmdLine;
}