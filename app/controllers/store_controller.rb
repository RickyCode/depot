class StoreController < ApplicationController

  private

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    session[:counter]
  end

  public

  def index
    @products = Product.order(:title)
    @counter = increment_counter
  end
end

'Comments
It will be more fun to put the counter message in the error display area using flash. The requirements are: if there
is no error, just display the counter; but if there is an error, then display the error and the counter. When the index
page is refreshed, remove the error and update the counter.

Hint: use a session variable to keep track of whether there is a redirect.

https://pragprog.com/wikis/wiki/Task-D-CartCreation'