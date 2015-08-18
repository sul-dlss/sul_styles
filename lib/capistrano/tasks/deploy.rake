# Clears default Capistrano deploy tasks
Rake::Task['deploy'].clear

# Overwrites the default Capistrano deploy task to do file uploading
task :deploy do
  on roles(:all) do
    upload! './dist/.', fetch(:deploy_to), recursive: true
  end
end
