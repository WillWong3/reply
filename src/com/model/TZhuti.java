package com.model;

import java.util.List;

/**
 * TZhuti generated by MyEclipse Persistence Tools
 */

public class TZhuti implements java.io.Serializable
{

	private Integer id;
	private String title;
	private String content;
	private String fujian;

	private String fujianYuanshiming;
	private String shijian;
	private Integer userId;
	private Integer catelogId;
	
	private String shifouding;
	private String shifoujing;
	
	private TUser user;
	private TCatelog catelog;
	private int huifushu;
	private List huifuList;
	
	
	public Integer getCatelogId()
	{
		return catelogId;
	}
	public void setCatelogId(Integer catelogId)
	{
		this.catelogId = catelogId;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	public List getHuifuList()
	{
		return huifuList;
	}
	public void setHuifuList(List huifuList)
	{
		this.huifuList = huifuList;
	}
	public String getFujian()
	{
		return fujian;
	}
	public String getShifouding()
	{
		return shifouding;
	}
	
	public TCatelog getCatelog()
	{
		return catelog;
	}
	public void setCatelog(TCatelog catelog)
	{
		this.catelog = catelog;
	}
	public void setShifouding(String shifouding)
	{
		this.shifouding = shifouding;
	}
	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}
	public String getFujianYuanshiming()
	{
		return fujianYuanshiming;
	}
	public void setFujianYuanshiming(String fujianYuanshiming)
	{
		this.fujianYuanshiming = fujianYuanshiming;
	}
	public int getHuifushu()
	{
		return huifushu;
	}
	public void setHuifushu(int huifushu)
	{
		this.huifushu = huifushu;
	}
	public Integer getId()
	{
		return id;
	}
	
	public String getShifoujing()
	{
		return shifoujing;
	}
	public void setShifoujing(String shifoujing)
	{
		this.shifoujing = shifoujing;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getShijian()
	{
		return shijian;
	}
	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public TUser getUser()
	{
		return user;
	}
	public void setUser(TUser user)
	{
		this.user = user;
	}
	public Integer getUserId()
	{
		return userId;
	}
	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

}