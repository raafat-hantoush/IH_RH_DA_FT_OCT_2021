# Health Care for All Case Study

- Can you explain what is the case study?
- Brainstorm on the possible sets of goals (questions that will help the business) that can be achieved with the data.
- List the key objectives/goals
- What will be the steps that you would follow to conduct the analysis process?

The steps of the Data Analysis process to follow are:

- Define the objective: optimize the benefits that "Healthcare for All" obtains through mail donations by "Lapsed" donors.
- Gather the data: data has been already extracted and it's stored in 4 files. We'll just have to consolidate the files.
- Clean the data: a quick glimpse at file1 reveals that there are some empty cells, some weird entries (ex: look at column IC5). Gender encoding will need some fixing and probably we'll find more obstacles in the way!
- Explore: here we'll want to answer questions like - how many donors do we have (by gender, by state...) and what's the distribution of their donations for each one of the sub-groups we can find? Are there noticeable differences we can find? We'll try and visualize everything and allow ourselves to be "surprised" by the data beyond the questions we can come up with.
- Process: Here we'll start looking at what model we want to apply, and we might need to change how some columns are expressed. For example, the "state" and "gender" columns are not numbers, pretty difficult to put them into mathematical equations, right? We'll have to fix that.
  #### Later
  - Apply model: we will create a model to predict the donation each person sends.
  - Validate: we will know if our model is accurate by checking the predictions against a little subset of the data that we'll have previously left out.

The data is provided in multiple files namely:
file1.csv
file2.txt
file3.xlsx
file4.xlsx


Data cleaning process:

- Standardizing header names
- Deleting and rearranging columns
- Working with data types
- Filtering data
- Removing duplicates
- Correcting typos
- Replacing null values

- Data Cleaning Examples:

  1. use "DOB" (Date of birth) column to find out the age of the donnor. The format of this column is MMYY. Remember that the reference date is 9706 to compute ages.
  2. split the column "DOMAIN" in two in order to find out the type neighborhood they live in (C->"City",T->"Town",R->"Rural",S->"Suburban","U"->"Urban"). Ignore the number for now.
  3. Fix the "IC5" column
  4. Fix the "GENDER" column
  5. Fix the "STATE" columns

