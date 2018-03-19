# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to data
course_path <- file.path(.get_course_path(),
                      'C5_Grammar_02', 'Importing_data_from_flat_files(CSV&TXT)')
setwd(course_path)					  
# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.
columns <- c("country", paste0("year_", 1967:1974))