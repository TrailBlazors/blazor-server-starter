# Blazor Server Starter
**A minimal, production-ready Blazor Server template optimized for Railway deployment.**

Deploy a modern .NET 9 Blazor Server application in minutes with zero configuration. Perfect for building interactive web applications with C# and .NET.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/deploy/JCYPsM?referralCode=Ce0gB7)

## ✨ Features

- 🚀 **Fast Deployment** - One-click deploy to Railway
- ⚡ **Blazor Server** - Build interactive UIs with C# instead of JavaScript
- 🎯 **Minimal & Clean** - No bloat, just the essentials to get started
- 🔧 **Production Ready** - Includes health checks and proper configuration
- 🐳 **Docker Optimized** - Multi-stage build for smaller images
- 🌐 **.NET 9** - Latest .NET features and performance improvements
- 💪 **Railway Optimized** - Pre-configured for Railway platform

## 🚀 Quick Deploy

### Deploy to Railway

Click the "Deploy on Railway" button above for instant deployment.

Railway automatically:
- Builds your application using Docker
- Sets up health checks
- Configures environment variables
- Generates a public URL

### Local Development

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/blazor-server-starter.git
cd blazor-server-starter/blazorserverstarter

# Run the application
dotnet run

# Open browser to https://localhost:5001
```

## 📁 Project Structure

```
blazor-server-starter/
├── blazorserverstarter/          # Main Blazor application
│   ├── Components/               # Blazor components
│   │   ├── Layout/              # Layout components
│   │   ├── Pages/               # Page components
│   │   └── App.razor            # Root component
│   ├── wwwroot/                 # Static files (CSS, JS, images)
│   ├── Program.cs               # Application entry point
│   └── appsettings.json         # Configuration
├── Dockerfile                    # Multi-stage Docker build
├── railway.toml                  # Railway configuration
└── README.md                     # Documentation
```

## ⚙️ Configuration

### Environment Variables

The template automatically handles Railway's `PORT` environment variable. No configuration needed!

### Health Checks

Health check endpoint at `/health` for Railway monitoring.

## 🛠️ Customization

### Add New Pages

Create `.razor` files in `Components/Pages/`:

```razor
@page "/mypage"
@rendermode InteractiveServer

<PageTitle>My Page</PageTitle>

<h1>Welcome to My Page!</h1>

@code {
    // Your C# code here
}
```

### Add Database (PostgreSQL)

```bash
cd blazorserverstarter
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL
dotnet add package Microsoft.EntityFrameworkCore.Design
```

Then add a PostgreSQL service in Railway.

### Styling

- Edit `wwwroot/app.css` for custom styles
- Default uses Bootstrap
- Add any CSS framework you prefer

## 📚 Resources

- [Blazor Documentation](https://learn.microsoft.com/en-us/aspnet/core/blazor/)
- [Railway Docs](https://docs.railway.app/)
- [.NET 9](https://learn.microsoft.com/en-us/dotnet/core/whats-new/dotnet-9)

## 🤝 Contributing

Contributions welcome! Submit a Pull Request.

## 📄 License

MIT License - see LICENSE file

---

**Built for the Railway community** 🚂
