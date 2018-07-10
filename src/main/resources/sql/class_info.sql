#namespace("class")

	#sql("findByPage")
		SELECT c.*,s.title stitle
			FROM class_info c
		LEFT JOIN class_series s
			ON c.series_id = s.id
		WHERE 1=1
		#if(key??)
			AND c.title LIKE concat('%',#para(key),'%')
		#end
		#if(createTime??)
			AND c.create_time>=#para(createTime)
		#end
		ORDER BY c.id,c.series_id #(order)
	#end
	
#end