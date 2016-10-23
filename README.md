rebar3 CommonServiceInterface template
======================================

Setup
-----

`Install rebar3 <http://www.rebar3.org/docs/getting-started>` if you haven't already.

Install this template:

    mkdir -p ~/.config/rebar3/templates
    git clone https://github.com/zsoci/csi-rebar-template.git ~/.config/rebar3/templates/csi

Use
---

Go the the directory you would like to have a CSI application set up.

    rebar3 new csi name=your_service_name
    cd your_service_name
    rebar3 release
    rebar3 run

    (your_service_name@localhostname)1> your_service_name:process_foo(a).
    hello_world
