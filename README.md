Quickbooks/Filemaker port to Rails3/Postgres9 of an annual corporate taxe return.

I've owned a corporation for 16 years.  At first I paid CPA's to draft the returns, then used excel spread sheets, then I used Turbo Tax, then during hardtimes used Filemaker.  So this would be my 3rd rewrite of a basic 1120 form.

## routes
marc@sfgeek:~/rails_apps/irs1120$ rake routes
   home_years GET /home/years(.:format)         home#years
edit_form1120     /home/edit/:id(.:format)      home#edit
save_form1120     /home/save_form1120(.:format) home#save_form1120
     form1120     /home/:id(.:format)           home#show
         home     /home/years(.:format)         home#years
## starting server on 3000 - port open in security group
marc@sfgeek:~/rails_apps/irs1120$ ./runserver_rrg.sh

