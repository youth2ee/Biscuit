package com.biscuit.b1.model;

public class AmountVO {
	private Integer total;
	private Integer tax_free;
	private Integer vat;
	private Integer discount;

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getTax_free() {
		return tax_free;
	}

	public void setTax_free(Integer tax_free) {
		this.tax_free = tax_free;
	}

	public Integer getVat() {
		return vat;
	}

	public void setVat(Integer vat) {
		this.vat = vat;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

}
