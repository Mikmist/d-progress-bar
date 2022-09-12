module bar;

import stdio;

public class ProgressBar
{
    private const wchar FILL_CHARACTER = '█';

    private int total;

    private string prefix;

    private string suffix;

    private int decimals;

    private ProgressManager progressManager;

    public this(ProgressManager progressManager, int total, string prefix, string suffix, int decimals)
    {
        this.progressManager = progressManager;
        this.total = total;
        this.prefix = prefix;
        this.suffix = suffix;
        this.decimals = decimals;
    }
}

unittest
{
    import std.stdio;

    auto bar = ProgressBar(10, "test", "test2", 1);

}
