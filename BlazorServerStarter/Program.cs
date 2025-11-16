var builder = WebApplication.CreateBuilder(args);

// Configure Railway Port
var port = Environment.GetEnvironmentVariable("PORT") ?? "8080";
builder.WebHost.UseUrls($"http://0.0.0.0:{port}");

// Add services to the container
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

// Add health checks for Railway monitoring
builder.Services.AddHealthChecks();

var app = builder.Build();

// Configure the HTTP request pipeline
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    // Note: HTTPS redirection is disabled for Railway
    // Railway handles SSL termination at the edge
}

app.UseStaticFiles();
app.UseAntiforgery();

// Health check endpoint for Railway
app.MapHealthChecks("/health");

app.MapRazorComponents<BlazorServerStarter.Components.App>()
    .AddInteractiveServerRenderMode();

app.Run();