require 'pp'
class HomeController < ApplicationController
  def years

    @years = Form1120.find(:all,:order=>'year ASC')
  end


  # GET /home/show/1
  # GET /home/show/1.xml
  def show
    @page_name  = 'Year'
    @year = Form1120.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @patient }
    end
  end
  
  def edit
  
    @year = Form1120.find(params[:id])
    @class ="tax-input"
    pp @year
  end
  def save_form1120
    form = Form1120.find_by_year(params[:year])
	params.each do |key, hash|
	  form[key] = params[key]
	end
	form.save
	redirect_to  :action => 'edit', :id => params[:year]
  end
end
