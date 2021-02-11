module ApplicationHelper
    def document_title
        if @title.present?
            "#{@title} - TEAM*AUELU(チームアウエル)"
        else
            "大阪府社会人フットサルTEAM*AUELU(チームアウエル)"
        end
    end
    
    def document_description
        if @description.present?
            "#{@description}"
        else
            "大阪府高槻市の体育館で主に活動をしている社会人フットサルチームです。現在大阪府フットサルリーグ3部に所属しています。体験参加、練習試合相手絶賛募集中！"
        end
    end
    
    def ymconv(yyyymm,cnt)
        return yyyymm + " (" + cnt + ")"
    end
end
