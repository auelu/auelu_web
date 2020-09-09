module ApplicationHelper
    def document_title
        if @title.present?
            "#{@title} - TeamAuelu"
        else
            "TeamAuelu"
        end
    end
    
    def ymconv(yyyymm,cnt)
        return yyyymm + " (" + cnt + ")"
    end
end
