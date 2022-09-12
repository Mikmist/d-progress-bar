module bar;

import std.stdio;

public class ProgressBar
{
    private const wchar FILL_CHARACTER = '█';

    private int _totalElements;

    private string prefix;

    private string suffix;

    private int decimals;

    public this(int totalElements, string prefix, string suffix, int decimals)
    {
        this._totalElements = totalElements;
        this.prefix = prefix;
        this.suffix = suffix;
        this.decimals = decimals;
    }

    void totalElements(int value) @property
    {
        _totalElements = value;
    }

    auto totalElements()
    {
        return _totalElements;
    }
}

unittest
{
    import std.stdio;

    auto bar = ProgressBar(10, "test", "test2", 1);

}
