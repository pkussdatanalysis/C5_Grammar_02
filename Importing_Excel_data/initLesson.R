# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to data
xlsx_path <- file.path(.get_course_path(),
                      'C5_Grammar_02', 'Importing_Excel_data','urbanpop_nonames.xlsx')	
cols <- c("country", paste0("year_", 1960:1966))