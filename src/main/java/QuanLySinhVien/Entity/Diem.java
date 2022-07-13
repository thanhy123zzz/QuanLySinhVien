package QuanLySinhVien.Entity;

public class Diem extends BaseEntity{
	private float diem;
	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public float getDiem() {
		return diem;
	}

	public void setDiem(float diem) {
		this.diem = diem;
	}

	public Diem() {
		super();
	}
	
}
