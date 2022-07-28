package com.mapper;

import com.vo.News;
import com.vo.Newspic;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface Newspicmapper {
    ////////李文阳
    @Select("SELECT *FROM newspic")
    @Results({
            @Result(property = "NewsID", column = "NewsID"),
            @Result(property = "NewsPicPath", column = "NewsPicPath"),

            @Result(
                    property = "news", //当前类order所封装的属性名user
                    column = "NewsID", //在数据表中根据字段名来查询user表数据
                    javaType = News.class,//要封装的实体类型
                    one = @One(select = "com.mapper.Newsmapper.findByID") //查询UserMapper接口中的方法来获取数据
            )
    })
    public List<Newspic> findAll();
    @Insert({"insert into newspic values(#{np.NewsID},#{np.NewsPicPath})"})
    public void insertNewspic(@Param("np") Newspic np);
    @Delete("delete from newspic where NewsID = #{id}")
    int deleteNewsPic(int id);
}
///////////////////////////////////////////