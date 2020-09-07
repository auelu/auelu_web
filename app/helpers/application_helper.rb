module ApplicationHelper
    def document_title
        if @title.present?
            "#{@title} - TeamAuelu"
        else
            "TeamAuelu"
        end
    end
    
end
