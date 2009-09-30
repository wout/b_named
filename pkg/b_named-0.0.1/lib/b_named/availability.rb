module BNamed
  class Availability
    API_URL = 'https://www2.bNamed.net/en/api.asp'
    
    def initialize(uid, pass_key)
      @uid = uid
      @pass_key = pass_key
      raise ArgumentError.new("Please provide a uid and pass_key") if @uid.nil? || @pass_key.nil?
    end
    
    def check(sld, tlds=nil)
      @tlds = tlds || %w(com net org info name biz)
      @slds = Array.new(@tlds.length).fill(sld)
      
      response = HTTParty.get("#{API_URL}?UID=#{@uid}&Key=#{@pass_key}&command=check&TLDList=#{@tlds.join(',')}&SLDList=#{@slds.join(',')}")
      
      mashup(response['API'])
    end
    
    private
      
      def mashup(response)
        raw_result = response['Result'].
          to_a.
          sort{ |a,b| a[0] <=> b[0] }.
          collect{ |r| r[1] }
        
        result_hash               = Hash.new
        result_hash[:domains]     = raw_result.each{ |h| Mash.new(h.each_pair{ |k,v| h[underscore(k)] = h.delete(k) }) }
        result_hash[:time]        = response['Time'].tr(',','.').to_f
        result_hash[:done]        = response['Done'] == 'True'
        result_hash[:error_code]  = response['ErrorCode']
        result_hash[:error_text]  = response['ErrorText']
        
        Mash.new(result_hash)
      end
      
      def underscore(camel_cased_word)
        camel_cased_word.to_s.gsub(/::/, '/').
          gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
          gsub(/([a-z\d])([A-Z])/,'\1_\2').
          tr("-", "_").
          downcase
      end
  end
end