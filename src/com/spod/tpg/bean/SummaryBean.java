package com.spod.tpg.bean;

import java.util.Date;
import java.util.List;

/**
 * @author Ranjeet Yadav
 *
 */

public class SummaryBean {
	private Integer moveMatchID;
	private Integer tranDetailId;
	private Integer tranId;
	private Integer movId;
	
	private Integer loadId;
	private Integer transporterId;
	private Double weight;
	private String originLocationId;
	private String destinationLocationId;
	private Date loadDate;
	
	private boolean checkStatus;
	
	private String routeIdValue;private Integer truckIdValue;private String truckNumberValue;
	private String originLocationIdValue;private String destinationLocationIdValue;
	private String routeId;
	private Integer truckId;
	private String truckNumber;
	
	private String transactionId;
	private Double transactionAmount;
	private Integer truckerId;
	private String truckerName;
	private String status;
	private Integer driverId;
    private String driverName;
    
    private String transactionDetailId1;
	private String transactionId1;
	private Double amount1;
	private String typeofAmt1;
	
	private String transactionDetailId2;
	private String transactionId2;
	private Double amount2;
	private String typeofAmt2;
	
	private String transactionDetailId3;
	private String transactionId3;
	private Double amount3;
	private String typeofAmt3;
	
	private String transactionDetailId4;
	private String transactionId4;
	private Double amount4;
	private String typeofAmt4;
    
    
	private TransactionDetailBean transactionDetailBean;

	private String movementId;
	private String matchID;
	public Integer getLoadId() {
		return loadId;
	}

	public void setLoadId(Integer loadId) {
		this.loadId = loadId;
	}

	public Integer getTransporterId() {
		return transporterId;
	}

	public void setTransporterId(Integer transporterId) {
		this.transporterId = transporterId;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public String getOriginLocationId() {
		return originLocationId;
	}

	public void setOriginLocationId(String originLocationId) {
		this.originLocationId = originLocationId;
	}

	public String getDestinationLocationId() {
		return destinationLocationId;
	}

	public void setDestinationLocationId(String destinationLocationId) {
		this.destinationLocationId = destinationLocationId;
	}

	public Date getLoadDate() {
		return loadDate;
	}

	public void setLoadDate(Date loadDate) {
		this.loadDate = loadDate;
	}

	
	public boolean isCheckStatus() {
		return checkStatus;
	}

	public void setCheckStatus(boolean checkStatus) {
		this.checkStatus = checkStatus;
	}

	public String getRouteId() {
		return routeId;
	}

	public void setRouteId(String routeId) {
		this.routeId = routeId;
	}

	public Integer getTruckId() {
		return truckId;
	}

	public void setTruckId(Integer truckId) {
		this.truckId = truckId;
	}

	public String getTruckNumber() {
		return truckNumber;
	}

	public void setTruckNumber(String truckNumber) {
		this.truckNumber = truckNumber;
	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	public Double getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(Double transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	public Integer getTruckerId() {
		return truckerId;
	}

	public void setTruckerId(Integer truckerId) {
		this.truckerId = truckerId;
	}



	public TransactionDetailBean getTransactionDetailBean() {
		return transactionDetailBean;
	}

	public void setTransactionDetailBean(TransactionDetailBean transactionDetailBean) {
		this.transactionDetailBean = transactionDetailBean;
	}


	public Integer getDriverId() {
		return driverId;
	}

	public void setDriverId(Integer driverId) {
		this.driverId = driverId;
	}

	public String getDriverName() {
		return driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	public String getTransactionDetailId1() {
		return transactionDetailId1;
	}

	public void setTransactionDetailId1(String transactionDetailId1) {
		this.transactionDetailId1 = transactionDetailId1;
	}

	public String getTransactionId1() {
		return transactionId1;
	}

	public void setTransactionId1(String transactionId1) {
		this.transactionId1 = transactionId1;
	}

	public Double getAmount1() {
		return amount1;
	}

	public void setAmount1(Double amount1) {
		this.amount1 = amount1;
	}

	public String getTypeofAmt1() {
		return typeofAmt1;
	}

	public void setTypeofAmt1(String typeofAmt1) {
		this.typeofAmt1 = typeofAmt1;
	}

	public String getTransactionDetailId2() {
		return transactionDetailId2;
	}

	public void setTransactionDetailId2(String transactionDetailId2) {
		this.transactionDetailId2 = transactionDetailId2;
	}

	public String getTransactionId2() {
		return transactionId2;
	}

	public void setTransactionId2(String transactionId2) {
		this.transactionId2 = transactionId2;
	}

	public Double getAmount2() {
		return amount2;
	}

	public void setAmount2(Double amount2) {
		this.amount2 = amount2;
	}

	public String getTypeofAmt2() {
		return typeofAmt2;
	}

	public void setTypeofAmt2(String typeofAmt2) {
		this.typeofAmt2 = typeofAmt2;
	}

	public String getTransactionDetailId3() {
		return transactionDetailId3;
	}

	public void setTransactionDetailId3(String transactionDetailId3) {
		this.transactionDetailId3 = transactionDetailId3;
	}

	public String getTransactionId3() {
		return transactionId3;
	}

	public void setTransactionId3(String transactionId3) {
		this.transactionId3 = transactionId3;
	}

	public Double getAmount3() {
		return amount3;
	}

	public void setAmount3(Double amount3) {
		this.amount3 = amount3;
	}

	public String getTypeofAmt3() {
		return typeofAmt3;
	}

	public void setTypeofAmt3(String typeofAmt3) {
		this.typeofAmt3 = typeofAmt3;
	}

	public String getTransactionDetailId4() {
		return transactionDetailId4;
	}

	public void setTransactionDetailId4(String transactionDetailId4) {
		this.transactionDetailId4 = transactionDetailId4;
	}

	public String getTransactionId4() {
		return transactionId4;
	}

	public void setTransactionId4(String transactionId4) {
		this.transactionId4 = transactionId4;
	}

	public Double getAmount4() {
		return amount4;
	}

	public void setAmount4(Double amount4) {
		this.amount4 = amount4;
	}

	public String getTypeofAmt4() {
		return typeofAmt4;
	}

	public void setTypeofAmt4(String typeofAmt4) {
		this.typeofAmt4 = typeofAmt4;
	}

	public String getRouteIdValue() {
		return routeIdValue;
	}

	public void setRouteIdValue(String routeIdValue) {
		this.routeIdValue = routeIdValue;
	}

	public Integer getTruckIdValue() {
		return truckIdValue;
	}

	public void setTruckIdValue(Integer truckIdValue) {
		this.truckIdValue = truckIdValue;
	}

	public String getTruckNumberValue() {
		return truckNumberValue;
	}

	public void setTruckNumberValue(String truckNumberValue) {
		this.truckNumberValue = truckNumberValue;
	}

	public String getOriginLocationIdValue() {
		return originLocationIdValue;
	}

	public void setOriginLocationIdValue(String originLocationIdValue) {
		this.originLocationIdValue = originLocationIdValue;
	}

	public String getDestinationLocationIdValue() {
		return destinationLocationIdValue;
	}

	public void setDestinationLocationIdValue(String destinationLocationIdValue) {
		this.destinationLocationIdValue = destinationLocationIdValue;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMovementId() {
		return movementId;
	}

	public void setMovementId(String movementId) {
		this.movementId = movementId;
	}

	public String getMatchID() {
		return matchID;
	}

	public void setMatchID(String matchID) {
		this.matchID = matchID;
	}
	
	
	
	public Integer getMoveMatchID() {
		return moveMatchID;
	}

	public void setMoveMatchID(Integer moveMatchID) {
		this.moveMatchID = moveMatchID;
	}

	public Integer getTranDetailId() {
		return tranDetailId;
	}

	public void setTranDetailId(Integer tranDetailId) {
		this.tranDetailId = tranDetailId;
	}

	public Integer getTranId() {
		return tranId;
	}

	public void setTranId(Integer tranId) {
		this.tranId = tranId;
	}

	public Integer getMovId() {
		return movId;
	}

	public void setMovId(Integer movId) {
		this.movId = movId;
	}

	public String getTruckerName() {
		return truckerName;
	}

	public void setTruckerName(String truckerName) {
		this.truckerName = truckerName;
	}

	@Override
	public String toString() {
		return "SummaryBean [moveMatchID=" + moveMatchID + ", tranDetailId="
				+ tranDetailId + ", tranId=" + tranId + ", movId=" + movId
				+ ", loadId=" + loadId + ", transporterId=" + transporterId
				+ ", weight=" + weight + ", originLocationId="
				+ originLocationId + ", destinationLocationId="
				+ destinationLocationId + ", loadDate=" + loadDate
				+ ", checkStatus=" + checkStatus + ", routeIdValue="
				+ routeIdValue + ", truckIdValue=" + truckIdValue
				+ ", truckNumberValue=" + truckNumberValue
				+ ", originLocationIdValue=" + originLocationIdValue
				+ ", destinationLocationIdValue=" + destinationLocationIdValue
				+ ", routeId=" + routeId + ", truckId=" + truckId
				+ ", truckNumber=" + truckNumber + ", transactionId="
				+ transactionId + ", transactionAmount=" + transactionAmount
				+ ", truckerId=" + truckerId + ", truckerName=" + truckerName
				+ ", status=" + status + ", driverId=" + driverId
				+ ", driverName=" + driverName + ", transactionDetailId1="
				+ transactionDetailId1 + ", transactionId1=" + transactionId1
				+ ", amount1=" + amount1 + ", typeofAmt1=" + typeofAmt1
				+ ", transactionDetailId2=" + transactionDetailId2
				+ ", transactionId2=" + transactionId2 + ", amount2=" + amount2
				+ ", typeofAmt2=" + typeofAmt2 + ", transactionDetailId3="
				+ transactionDetailId3 + ", transactionId3=" + transactionId3
				+ ", amount3=" + amount3 + ", typeofAmt3=" + typeofAmt3
				+ ", transactionDetailId4=" + transactionDetailId4
				+ ", transactionId4=" + transactionId4 + ", amount4=" + amount4
				+ ", typeofAmt4=" + typeofAmt4 + ", transactionDetailBean="
				+ transactionDetailBean + ", movementId=" + movementId
				+ ", matchID=" + matchID + "]";
	}

		
}
