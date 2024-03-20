# Use an ASP.NET Core image
FROM cesarbm/microsoft_net_8

# Set the working directory inside the container
WORKDIR /app

# Execute 'dotnet new MyMicroservice command to create the TodoApi project
COPY . .

# Expose port 80 to make the application accessible from outside the container
EXPOSE 80

# Start the application when the container runs
CMD ["dotnet", "run", "--urls", "http://0.0.0.0:80"]
