simple Tic
{
    parameters:
        @display("i=block/routing");
    gates:
        input in;
        output out;
}
simple Toc
{
    parameters:
        @display("i=block/process");
    gates:
        input in;
        output out;
}
network project1
{
    @display("bgb=214,303");
    submodules:
        tic: Tic {
            parameters:
                @display("i=,cyan;is=s;p=98.82667,160.59334");
        }
        toc: Toc {
            parameters:
                @display("i=,gold;is=s;p=98.82667,54.5");
        }
    connections:
        tic.out --> {  delay = 1000ms; } --> toc.in;
        tic.in <-- {  delay = 1000ms; } <-- toc.out;
}
