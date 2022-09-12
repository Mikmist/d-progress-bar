module config;

public struct ProgressBarConfig
{
    /** 
     * The maximum width that the progress bar may take up. If this is unset, 0 or a negative value
     * the progress bar will try to determine the maximum width of the terminal. 
     */
    int maxWidth;
}
