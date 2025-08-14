var builder = WebApplication.CreateBuilder(args);

builder.WebHost.ConfigureKestrel(serverOptions =>
{
  serverOptions.ListenAnyIP(5000); // HTTP on all interfaces
});

var app = builder.Build();
app.MapGet("/", () => "Hello World!");
app.Run();
