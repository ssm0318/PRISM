class SearchController < ApplicationController
    def all
        query = params[:query]
        Query.create(content: query)
        @results = []
        @results = Answer.all.search_tag(query) | Question.all.search_tag(query)

        render 'all'
    end

    def admin_question
        query = params[:query]
        Query.create(content: query)
        @results = []
        @results = Question.all.search_tag(query)
        @results = @results.where(author_id: 1)
 
        render 'admin_question'
    end

    def custom_question
        query = params[:query]
        Query.create(content: query)
        @results = []
        @results = Question.all.search_tag(query)
        @results = @results.where.not(author_id: 1)

        render 'custom_question'
    end

    def friend_answer
        query = params[:query]
        Query.create(content: query)
        @results = []
        @results = Answer.all.search_tag(query)
        @results = @results.where(author: current_user.friends) | @results.where(author: current_user)

        render 'friend_answer'
    end

    def anonymous_answer
        query = params[:query]
        Query.create(content: query)
        @results = []
        @results = Answer.all.search_tag(query)
        @results = @results.anonymous(current_user.id)

        render 'anonymous_answer'
    end

    def popular_tags
        @results = Tag.all.popular_tags(params[:num])
    
        render 'popular_tags'
    end

    def popular_search
        @results = Query.all.popular_search(params[:num])

        render 'popular_search'
    end
end
