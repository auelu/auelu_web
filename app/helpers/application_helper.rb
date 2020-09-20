module ApplicationHelper
    def document_title
        if @title.present?
            "#{@title} - TEAM*AUELU(チームアウエル)"
        else
            "大阪府社会人フットサルTEAM*AUELU(チームアウエル)"
        end
    end
    
    def ymconv(yyyymm,cnt)
        return yyyymm + " (" + cnt + ")"
    end
end
