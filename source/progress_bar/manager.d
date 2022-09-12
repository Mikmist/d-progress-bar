module manager;

public class ProgressManager
{
    private ProgressBar[] progressBars;
    private OutputBuffer ob;
    private Terminal terminal;
    private uint activeProgressBar;

    public this()
    {
        this.ob = new OutputBuffer();
        this.progressBars = [];
        this.terminal = new Terminal;
    }

    public ProgressManager progressBar(ProgressBar progressBar)
    {
        this.progressBars ~= progressBar;
        return this;
    }
}

private class OutputBuffer
{
    private int pointer;
    private string[100] buffer;

    public this()
    {
        pointer = 0;
    }

    public string[] saveLines(string[] lines)
    {
        string[] removedLines = [];
        foreach (line; lines)
        {
            if (buffer[pointer] != "")
            {
                removedLines ~= buffer[pointer];
                buffer[pointer] = line;
            }
        }
        return removedLines;
    }
}
