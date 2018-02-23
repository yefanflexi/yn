package com.szc.common.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * Excel文件操作工具类，包括读、写、合并等功能
 * 
 * @author : liuwp
 * @version : 1.00
 */
public class ExcelUtil {

	// %%%%%%%%-------常量部分 开始----------%%%%%%%%%
	/**
	 * 默认的开始读取的行位置为第一行（索引值为0）
	 */
	private final static int READ_START_POS = 0;

	/**
	 * 默认结束读取的行位置为最后一行（索引值=0开始,0为读取到结束）
	 */
	private final static int READ_END_POS = 0;

	/**
	 * 默认Excel内容的开始比较列位置为第一列（索引值为0）
	 */
	private final static int COMPARE_POS = 0;

	/**
	 * 默认多文件合并的时需要做内容比较（相同的内容不重复出现）
	 */
	private final static boolean NEED_COMPARE = true;

	/**
	 * 默认多文件合并的新文件遇到名称重复时，进行覆盖
	 */
	private final static boolean NEED_OVERWRITE = true;

	/**
	 * 默认只操作一个sheet
	 */
	private final static boolean ONLY_ONE_SHEET = true;

	/**
	 * 默认读取第一个sheet中（只有当ONLY_ONE_SHEET = true时有效）
	 */
	private final static int SELECTED_SHEET = 0;

	/**
	 * 默认从第一个sheet开始读取（索引值为0）
	 */
	private final static int READ_START_SHEET = 0;

	/**
	 * 默认在最后一个sheet结束读取（索引值=0，用负数来表示倒数第n行）
	 */
	private final static int READ_END_SHEET = 0;

	/**
	 * 默认打印各种信息
	 */
	private final static boolean PRINT_MSG = false;

	// %%%%%%%%-------常量部分 结束----------%%%%%%%%%

	// %%%%%%%%-------字段部分 开始----------%%%%%%%%%

	/**
	 * 设定开始读取的位置，默认为0
	 */
	private int startReadPos = READ_START_POS;

	/**
	 * 设定结束读取的位置，默认为0，用负数来表示倒数第n行
	 */
	private int endReadPos = READ_END_POS;

	/**
	 * 设定开始比较的列位置，默认为0
	 */
	private int comparePos = COMPARE_POS;

	/**
	 * 设定汇总的文件是否需要替换，默认为true
	 */
	private boolean isOverWrite = NEED_OVERWRITE;

	/**
	 * 设定是否需要比较，默认为true(仅当不覆写目标内容是有效，即isOverWrite=false时有效)
	 */
	private boolean isNeedCompare = NEED_COMPARE;

	/**
	 * 设定是否只操作第一个sheet
	 */
	private boolean onlyReadOneSheet = ONLY_ONE_SHEET;

	/**
	 * 设定操作的sheet在索引值
	 */
	private int selectedSheetIdx = SELECTED_SHEET;

	/**
	 * 设定操作的sheet的名称
	 */
	private String selectedSheetName = "";

	/**
	 * 设定开始读取的sheet，默认为0
	 */
	private int startSheetIdx = READ_START_SHEET;

	/**
	 * 设定结束读取的sheet，默认为0，用负数来表示倒数第n行
	 */
	private int endSheetIdx = READ_END_SHEET;

	/**
	 * 设定是否打印消息
	 */
	private boolean printMsg = PRINT_MSG;
	
	private File excelFile;

	public enum ExcelVersion {
		XLS, XLSX;
	}

	/**
	 * 读取excel
	 * @throws IOException 
	 * @return List<Row>
	 */
	public List<Row> readExcel() throws IOException{
		return readExcel(this.excelFile);
	}
	/**
	 * 读取excel
	 * @throws IOException 
	 * @return List<Row>
	 */
	public List<Row> readExcel_xls() throws IOException{
		return readExcel_xls(this.excelFile);
	}
	/**
	 * 读取excel
	 * @throws IOException 
	 * @return List<Row>
	 */
	public List<Row> readExcel_xlsx() throws IOException{
		return readExcel_xlsx(this.excelFile);
	}
	
	
	/**
	 * 读取excel
	 * @param file
	 * @throws IOException 
	 * @return List<Row>
	 */
	public List<Row> readExcel(File file) throws IOException {

		// 扩展名为空时，
		if (file == null) {
			throw new IOException("文件为空！");
		} else {
			if (!file.exists()) {
				throw new IOException("文件不存在！");
			}
		}

		String fileName = file.getName();
		String prefix = fileName.substring(fileName.lastIndexOf(".") + 1);

		try {

			if ("xls".equals(prefix)) { // 使用xls方式读取
				return readExcel_xls(file);
			} else if ("xlsx".equals(prefix)) { // 使用xlsx方式读取
				return readExcel_xlsx(file);
			} else { // 依次尝试xls、xlsx方式读取
				out("您要操作的文件没有扩展名，正在尝试以xls方式读取...");
				try {
					return readExcel_xls(file);
				} catch (IOException e1) {
					out("尝试以xls方式读取，结果失败！，正在尝试以xlsx方式读取...");
					try {
						return readExcel_xlsx(file);
					} catch (IOException e2) {
						out("尝试以xls方式读取，结果失败！\n请您确保您的文件是Excel文件，并且无损，然后再试。");
						throw e2;
					}
				}
			}
		} catch (IOException e) {
			throw e;
		}
	}

	/**
	 * 创建工作薄
	 * @param excelVersion
	 * @return Workbook
	 */
	public Workbook getWorkbook(ExcelVersion excelVersion) {
		switch (excelVersion) {
		case XLS:
			return new HSSFWorkbook();
		case XLSX:
			return new XSSFWorkbook();
		default:
			return null;
		}
	}
	
	/**
	 * 创建sheet
	 * @param workbook
	 * @param sheetName
	 * @return Sheet
	 */
	public Sheet getSheet(Workbook workbook, String sheetName) {
		return workbook.createSheet(sheetName);
	}

	/**
	 * 读取xlsx excel
	 * @param file
	 * @throws IOException 
	 * @return List<Row>
	 */
	public List<Row> readExcel_xlsx(File file) throws IOException {
		XSSFWorkbook wb = null;
		List<Row> rowList = new ArrayList<Row>();
		try {
			FileInputStream fis = new FileInputStream(file);
			// 去读Excel
			wb = new XSSFWorkbook(fis);

			// 读取Excel 2007版，xlsx格式
			rowList = readExcel(wb);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return rowList;
	}

	/**
	 * 读取xls excel
	 * @param file
	 * @throws IOException 
	 * @return List<Row>
	 */
	public List<Row> readExcel_xls(File file) throws IOException {

		HSSFWorkbook wb = null;// 用于Workbook级的操作，创建、删除Excel
		List<Row> rowList = new ArrayList<Row>();

		try {
			// 读取Excel
			wb = new HSSFWorkbook(new FileInputStream(file));

			// 读取Excel 97-03版，xls格式
			rowList = readExcel(wb);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return rowList;
	}

	/**
	 * 读取单元格的值
	 * @param cell
	 * @return String
	 */
	public String getCellValue(Cell cell) {
		Object result = "";
		if (cell != null) {
			switch (cell.getCellType()) {
			case Cell.CELL_TYPE_STRING:
				result = cell.getStringCellValue();
				break;
			case Cell.CELL_TYPE_NUMERIC:
				result = cell.getNumericCellValue();
				break;
			case Cell.CELL_TYPE_BOOLEAN:
				result = cell.getBooleanCellValue();
				break;
			case Cell.CELL_TYPE_FORMULA:
				result = cell.getCellFormula();
				break;
			case Cell.CELL_TYPE_ERROR:
				result = cell.getErrorCellValue();
				break;
			case Cell.CELL_TYPE_BLANK:
				break;
			default:
				break;
			}
		}
		return result.toString();
	}

	/**
	 * 通用读取Excel
	 * @param wb
	 * @return List<Row>
	 */
	private List<Row> readExcel(Workbook wb) {
		List<Row> rowList = new ArrayList<Row>();

		int sheetCount = 1;// 需要操作的sheet数量

		Sheet sheet = null;
		if (onlyReadOneSheet) { // 只操作一个sheet
			// 获取设定操作的sheet(如果设定了名称，按名称查，否则按索引值查)
			sheet = selectedSheetName.equals("") ? wb.getSheetAt(selectedSheetIdx) : wb.getSheet(selectedSheetName);
		} else { // 操作多个sheet
			sheetCount = wb.getNumberOfSheets();// 获取可以操作的总数量
		}

		// 获取sheet数目
		for (int t = startSheetIdx; t < sheetCount + endSheetIdx; t++) {
			// 获取设定操作的sheet
			if (!onlyReadOneSheet) {
				sheet = wb.getSheetAt(t);
			}

			// 获取最后行号
			int lastRowNum = sheet.getLastRowNum();

			if (lastRowNum > 0) { // 如果>0，表示有数据
				out("\n开始读取名为【" + sheet.getSheetName() + "】的内容：");
			}

			int endRowNum = 0;
			if (endReadPos > 0) {
				endRowNum = endReadPos;
			} else {
				endRowNum = lastRowNum;
			}

			Row row = null;
			// 循环读取
			for (int i = startReadPos; i <= endRowNum; i++) {
				row = sheet.getRow(i);
				if (row != null) {
					rowList.add(row);
				}
			}
		}
		return rowList;
	}

	/**
	 * 获取合并单元格的值
	 * @param sheet 
	 */
	public void setMergedRegion(Sheet sheet) {
		int sheetMergeCount = sheet.getNumMergedRegions();

		for (int i = 0; i < sheetMergeCount; i++) {
			// 获取合并单元格位置
			CellRangeAddress ca = sheet.getMergedRegion(i);
			int firstRow = ca.getFirstRow();
			if (startReadPos - 1 > firstRow) {// 如果第一个合并单元格格式在正式数据的上面，则跳过。
				continue;
			}
			int lastRow = ca.getLastRow();
			int mergeRows = lastRow - firstRow;// 合并的行数
			int firstColumn = ca.getFirstColumn();
			int lastColumn = ca.getLastColumn();
			// 根据合并的单元格位置和大小，调整所有的数据行格式，
			for (int j = lastRow + 1; j <= sheet.getLastRowNum(); j++) {
				// 设定合并单元格
				sheet.addMergedRegion(new CellRangeAddress(j, j + mergeRows, firstColumn, lastColumn));
				j = j + mergeRows;// 跳过已合并的行
			}

		}
	}

	/**
	 * 打印消息，
	 * 
	 * @param msg
	 *            消息内容
	 * @param tr
	 *            换行
	 */
	private void out(String msg) {
		if (printMsg) {
			out(msg, true);
		}
	}

	/**
	 * 打印消息，
	 * 
	 * @param msg
	 *            消息内容
	 * @param tr
	 *            换行
	 */
	private void out(String msg, boolean tr) {
		if (printMsg) {
			System.out.print(msg + (tr ? "\n" : ""));
		}
	}

	public boolean isNeedCompare() {
		return isNeedCompare;
	}

	public void setNeedCompare(boolean isNeedCompare) {
		this.isNeedCompare = isNeedCompare;
	}

	public int getComparePos() {
		return comparePos;
	}

	public void setComparePos(int comparePos) {
		this.comparePos = comparePos;
	}

	public int getStartReadPos() {
		return startReadPos;
	}

	public void setStartReadPos(int startReadPos) {
		this.startReadPos = startReadPos;
	}

	public int getEndReadPos() {
		return endReadPos;
	}

	public void setEndReadPos(int endReadPos) {
		this.endReadPos = endReadPos;
	}

	public boolean isOverWrite() {
		return isOverWrite;
	}

	public void setOverWrite(boolean isOverWrite) {
		this.isOverWrite = isOverWrite;
	}

	public boolean isOnlyReadOneSheet() {
		return onlyReadOneSheet;
	}

	public void setOnlyReadOneSheet(boolean onlyReadOneSheet) {
		this.onlyReadOneSheet = onlyReadOneSheet;
	}

	public int getSelectedSheetIdx() {
		return selectedSheetIdx;
	}

	public void setSelectedSheetIdx(int selectedSheetIdx) {
		this.selectedSheetIdx = selectedSheetIdx;
	}

	public String getSelectedSheetName() {
		return selectedSheetName;
	}

	public void setSelectedSheetName(String selectedSheetName) {
		this.selectedSheetName = selectedSheetName;
	}

	public int getStartSheetIdx() {
		return startSheetIdx;
	}

	public void setStartSheetIdx(int startSheetIdx) {
		this.startSheetIdx = startSheetIdx;
	}

	public int getEndSheetIdx() {
		return endSheetIdx;
	}

	public void setEndSheetIdx(int endSheetIdx) {
		this.endSheetIdx = endSheetIdx;
	}

	public boolean isPrintMsg() {
		return printMsg;
	}

	public void setPrintMsg(boolean printMsg) {
		this.printMsg = printMsg;
	}

	public File getExcelFile() {
		return excelFile;
	}

	public void setExcelFile(File excelFile) {
		this.excelFile = excelFile;
	}
	
}