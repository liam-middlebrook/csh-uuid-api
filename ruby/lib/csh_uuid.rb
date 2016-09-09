class CSH_UUID
    @base_url = "https://uuid.csh.rit.edu"


    def self.get_uid_from_uuid(uuid)
        r = HTTP.get(@base_url + "/uid/" + uuid)
	if r.status == HTTP::Response::Status.coerce(200)
            return r.body.to_s
	else
            return false
        end
    end

    def self.get_uuid_from_uid(uid)
        r = HTTP.get(@base_url + "/uuid/" + uid)
	if r.status == HTTP::Response::Status.coerce(200)
            return r.body.to_s
	else
            return false
        end
    end
end
