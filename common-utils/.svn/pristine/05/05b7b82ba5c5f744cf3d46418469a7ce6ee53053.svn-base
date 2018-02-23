package com.szc.common.utils;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import com.szc.common.utils.ExcelUtil.ExcelVersion;

public class ExcelExportUtil<T> {
	
	protected List<T> sourceList = new ArrayList<T>();
	
	public ExcelExportUtil(List<T> list){
		this.sourceList = list;
	}
	
	public Workbook excelExport(String sheetName, Object object, List<ExportAttrible> exportAttribles){
		ExcelUtil eu = new ExcelUtil();
	    //创建工作薄
	    Workbook workbook = eu.getWorkbook(ExcelVersion.XLSX);
	    Sheet sheet = eu.getSheet(workbook, sheetName);
	    
	    //实体所有字段
	    LinkedHashMap<String, Object> objFiledMap = Util.getModelFiled(object);
	    //判断使用哪个头  默认使用实体所有字段
	    if(exportAttribles == null){
	    	exportAttribles = new ArrayList<ExportAttrible>();
	    	for(String key : objFiledMap.keySet()){
	    		ExportAttrible exportAttrible = new ExportAttrible();
	    		exportAttrible.setFiledKey(key);
	    		exportAttribles.add(exportAttrible);
	    	}
	    }
	    
	    Row rowHead = sheet.createRow(0);
	    //设置列头
	    for(int c = 0 ; c < exportAttribles.size() ; c ++){
	    	ExportAttrible exportAttrible = exportAttribles.get(c);
	    	Cell cell = rowHead.createCell(c);
			//获取列头名
	    	String filedName = exportAttrible.getFiledName();
			if(!Util.isBlank(filedName)){
				cell.setCellValue(filedName);
			}else{
				String filedKey = exportAttrible.getFiledKey();
				cell.setCellValue(filedKey);
			}
    	}
	    
	    for(int r = 0 ; r < sourceList.size() ; r ++){
	    	LinkedHashMap<String, Object> sourceFiledMap = Util.getModelFiled(sourceList.get(r));
	    	Row row = sheet.createRow(r+1);
	    	for(int c = 0 ; c < exportAttribles.size() ; c ++){
	    		ExportAttrible exportAttrible = exportAttribles.get(c);
	    		Cell cell = row.createCell(c);
	    		
	    		Object cellValue = sourceFiledMap.get(exportAttrible.getFiledKey());
	    		//值处理
	    		try {
	    			switch (exportAttrible.getFiledType()) {
					case 1:
						//小数处理
						BigDecimal bd2 = new BigDecimal(String.valueOf(cellValue));
						BigDecimal tmp2 = bd2;
						if(!Util.isBlank(exportAttrible.getMultiplyValue())){
							tmp2 = bd2.multiply(new BigDecimal(exportAttrible.getMultiplyValue()));
						}
						//默认格式化成2位小数
						DecimalFormat df2 = new DecimalFormat("0.00"); 
						if(!Util.isBlank(exportAttrible.getFiledFormat())){
							df2 = new DecimalFormat(exportAttrible.getFiledFormat());
						}
						cellValue = df2.format(tmp2);
						break;
					case 2:
						//时间类型处理
						String format = "yyyy-MM-dd HH:mm:ss";
						if(!Util.isBlank(exportAttrible.getFiledFormat())){
							format = exportAttrible.getFiledFormat();
						}
						SimpleDateFormat sdf = new SimpleDateFormat(format); 
				        Date date = (Date) cellValue;
				        cellValue = sdf.format(date);
						break;
					case 3:
						
						break;
					}
	    			if(!Util.isBlank(exportAttrible.getExtValue())){
						cellValue = cellValue + exportAttrible.getExtValue();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
	    		
		    	cell.setCellValue(String.valueOf(cellValue == null ? "" : cellValue));
	    	}
	    }
		
		return workbook;
	}

	public List<T> getSourceList() {
		return sourceList;
	}

	public void setSourceList(List<T> sourceList) {
		this.sourceList = sourceList;
	}
	
}
