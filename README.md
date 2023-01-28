# etl mini-project
ETL_Mini_Project.ipynb contains the full Jupyter notebook which extracts the data from 'crowdfunding.xlsx' and 'contacts.xlsx', transforms/cleans them according to the specifications (parsing, splitting, renaming/reordering) in a Pandas Dataframe, and then loads them out in .csv files.

'campaign.csv' stores the crowdfunding info, 'category.csv' and 'subcategory.csv' store indexed lists of all categories/subcategories, and 'contacts.csv' and 'contactsRegEx.csv' store the contact info (done with Pandas and regex, respectively).

All .csv's and .xlsx's are stored in the /Resources folder.

'crowdfunding_db_schema.sql' was used to create a database in pgAdmin4, and then the data was imported from 'campaign.csv' and 'contacts.csv' using the "Import/Export Data..." feature. The resulting tables (queried with SELECT statements) are shown in their respective .png's.