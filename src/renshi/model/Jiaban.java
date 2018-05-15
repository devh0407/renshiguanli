package renshi.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
//员工培训
@Entity
@Table(name="t_Jiaban")
public class Jiaban {

	@Id
	@GeneratedValue
	private int id;
	
	private int deletestatus;//表示是否删除的状态，0表示未删除，1表示删除
	
	private String jiabanjihua;//培训计划
	
	private String jiabanneirong;//培训内容
	
	private String jiabanshichang;//培训周期
	
	private String jiabandidian;//培训地点
	
	private Date createtime;
	
	
	@ManyToOne
	@JoinColumn(name="userid")
	private User  user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDeletestatus() {
		return deletestatus;
	}

	public void setDeletestatus(int deletestatus) {
		this.deletestatus = deletestatus;
	}

	public String getJiabanjihua() {
		return jiabanjihua;
	}

	public void setJiabanjihua(String jiabanjihua) {
		this.jiabanjihua = jiabanjihua;
	}

	public String getJiabanneirong() {
		return jiabanneirong;
	}

	public void setJiabanneirong(String jiabanneirong) {
		this.jiabanneirong = jiabanneirong;
	}

	public String getJiabanshichang() {
		return jiabanshichang;
	}

	public void setJiabanshichang(String jiabanshichang) {
		this.jiabanshichang = jiabanshichang;
	}

	public String getJiabandidian() {
		return jiabandidian;
	}

	public void setJiabandidian(String jiabandidian) {
		this.jiabandidian = jiabandidian;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}


	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	

	

	
	
	
}
