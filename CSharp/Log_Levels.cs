using System;
static class LogLine
{
    public static string Message(string logLine)
    {
        string[] list = logLine.Split(": ");
        string trimmed = list[1].Trim();
        return trimmed;
    }
    public static string LogLevel(string logLine)
    {
        string log = logLine.Split('[',']')[1];
        string lowLog = log.ToLower();
        return lowLog;
    }
    public static string Reformat(string logLine)
    {
        string newLog = Message(logLine) + " " + "(" + LogLevel(logLine) + ")";
        return newLog;
    }
}
