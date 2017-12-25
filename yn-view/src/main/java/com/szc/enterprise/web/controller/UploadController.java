//package com.szc.enterprise.web.controller;
//
//import static com.szc.common.utils.ConstantsWEB.WEB_CONSTANS.FILEPATH;
//import java.io.BufferedInputStream;
//import java.io.File;
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.io.InputStream;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.List;
//import java.util.UUID;
//
//import javax.servlet.ServletConfig;
//import javax.servlet.ServletContext;
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.FileItemFactory;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;
//import org.codehaus.jackson.map.ObjectMapper;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.context.ServletConfigAware;
//import org.springframework.web.context.ServletContextAware;
//
//import com.szc.enterprise.common.file.CheckFileTypeUtils;
//import com.szc.enterprise.common.file.FileBean;
//import com.szc.enterprise.spring.utils.SpringContextUtil;
//import com.szc.enterprise.web.base.BaseController;
//import com.szc.enterprise.web.constansutil.StatusCode;
//import com.szc.enterprise.web.vopo.businessuser.UploadPo;
//
///**
// * 
//* @类名: IndexController.java 
//* @Package com.szc.manager.itfc.controller 
//* @类描述: TODO
//* @创建者 MABS   
//* @创建时间 2016年3月18日 下午12:03:38 
//* @版本 V1.0
// */
//@Controller
//public class UploadController extends BaseController implements ServletConfigAware,ServletContextAware{
//
//	private ServletFileUpload upload;
//	private final long MAXSize = 4194304*2L;//4*2MB
//	private FileBean fileBean;
//	
//    /**
//     * 
//    * @方法标题: index 
//    * @方法描述: TODO(这里用一句话描述这个方法的作用) 
//    * @param @param request
//    * @param @return    设定文件 
//    * @return String    返回类型
//     */
//	@RequestMapping(value = "/upload", method = RequestMethod.POST)
//    public @ResponseBody String upload(HttpServletRequest request) {
//		//Loginfo1100 li=(Loginfo1100)request.getAttribute("interLog");
//		fileBean = SpringContextUtil.getBean(FileBean.class);
//		ObjectMapper objectMapper = new ObjectMapper();
//		String str = null;
//		UploadPo uploadPo=new UploadPo();
//		try {
//			List<FileItem> items = this.upload.parseRequest(request);
//			
//			if(items!=null	&& !items.isEmpty()){
//				for (FileItem fileItem : items) {
//					String filename=fileItem.getName();
//					printInfoLog(fileItem.getSize()+"");
//					Long max = Long.parseLong(fileBean.getFileSize());
//					if(max <= fileItem.getSize()){
//						uploadPo.setResultCode(StatusCode.$0x041);
//						Long sizeMaxStr = max / (1024 * 1024) ;  
//						String message = StatusCode.serverCodeMap.get(StatusCode.$0x041).
//								replaceAll(StatusCode.RETURN_MESSAGE.MAX_REPLACE_F, sizeMaxStr + "");
//						uploadPo.setResultMessage(message);
//						str = objectMapper.writeValueAsString(uploadPo);
//						return str;
//					}
//					if(filename!=null&&!"".equals(filename)){
//						uploadPo = makeFileByUpLoad(filename, fileItem);
//					}
//				}
//			}
//			printInfoLog("上传文件成功!");
//			str = objectMapper.writeValueAsString(uploadPo);
//		} catch (Exception e) {
//			e.printStackTrace();
//			uploadPo.setResultCode(StatusCode.$0x032);
//			uploadPo.setResultMessage(StatusCode.serverCodeMap.get(StatusCode.$0x032));
//			printErrorLog("上传文件失败:"+e.getMessage());
//		}/*finally{
//			String respdata=JsonUtil.ots(uploadPo);
//			li.setRespdata(respdata);
//			li.setRescode(uploadPo.getResultCode());
//		}*/
//		return str;
//    }
//
//	/**
//	 * 
//	* @方法标题: makeFileByUpLoad 
//	* @方法描述: 上传功能入口 
//	* @param @param filename
//	* @param @param fileItem
//	* @param @return
//	* @param @throws IOException    设定文件 
//	* @return UploadPo    返回类型
//	 */
//	private UploadPo makeFileByUpLoad(String filename,FileItem fileItem) throws IOException{
//		FileMd fileMd = makeTempDic(filename);
//		UploadPo uploadPo = makeFile(fileMd, fileItem);
//		return uploadPo;
//	}
//	/**
//	 * 
//	* @方法标题: makeFile 
//	* @方法描述: 把图片制作出来如果类型不正确
//	* @param @param fileMd
//	* @param @param fileItem
//	* @param @return
//	* @param @throws IOException    设定文件 
//	* @return UploadPo    返回类型
//	 */
//	private UploadPo makeFile(FileMd fileMd,FileItem fileItem) throws IOException{
//		UploadPo uploadPo = new UploadPo();
//		InputStream inputSteam = fileItem.getInputStream();
//		BufferedInputStream fis=new BufferedInputStream(inputSteam);
//		if(CheckFileTypeUtils.check(fileItem.getInputStream())){
//			FileOutputStream fos=new FileOutputStream(fileMd.getFile());
//		    int f;
//		    while((f=fis.read())!=-1)
//		    {
//		       fos.write(f);
//		    }
//		    fos.flush();
//		    fos.close();
//		    fis.close();
//			inputSteam.close();
//			printInfoLog("文件："+fileMd.getFilepath()+"上传成功!");
//			uploadPo.setPrevUrl(FILEPATH);
//			uploadPo.setUploadName(fileMd.getNewName());
//			uploadPo.setUploadPath(fileMd.getDbFilePath());
//			uploadPo.setResultCode(StatusCode.$0x00);
//			uploadPo.setResultMessage(StatusCode.serverCodeMap.get(StatusCode.$0x00));
//		} else {
//			uploadPo.setResultCode(StatusCode.$0x040);
//			uploadPo.setResultMessage(StatusCode.serverCodeMap.get(StatusCode.$0x040));
//		}
//	    return uploadPo;
//	}
//	
//	/**
//	 * 
//	* @方法标题: makeTempDic 
//	* @方法描述: 根据要求作出文件夹
//	* @param @param filename
//	* @param @return    设定文件 
//	* @return FileMd    返回类型
//	 */
//	private FileMd makeTempDic(String filename){
//		FileMd fileMd = new FileMd();
//		File file = null;
//		String filenameTemp = filename.substring(filename.indexOf("."), filename.length());
//		String name = UUID.randomUUID().toString().toLowerCase()+filenameTemp;
//		String dic = dateDic();
//		String dicPath = fileBean.getFilePath() + File.separator + dic;
//		file = new File(dicPath);
//		if(!file .exists()  && !file.isDirectory()){       
//		    file.mkdir();    
//		}
//		//制作出来的全部路径
//		String filepath= dicPath + File.separator + name;
//		printInfoLog("文件保存路径为:"+filepath);
//		//数据库保存路径
//		String dbFilePath = File.separator + dic + File.separator + name;
//		file=new File(filepath);
//		fileMd.setDbFilePath(dbFilePath);
//		fileMd.setFile(file);
//		fileMd.setFilepath(filepath);
//		fileMd.setOldName(filename);
//		return fileMd;
//	}
//	
//	
//	/**
//	 * 
//	* @方法标题: dateDic 
//	* @方法描述: 按日区分文件夹
//	* @param @return    设定文件 
//	* @return String    返回类型
//	 */
//	private String dateDic(){
//		return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
//	}
//	/**
//	 * 
//	* @类名: UploadController.java 
//	* @Package com.szc.hb.manager.itfc.controller 
//	* @类描述: 制作图片所需要的bean
//	* @创建者 MABS   
//	* @创建时间 2016年4月3日 下午5:36:11 
//	* @版本 V1.0
//	 */
//	private class FileMd{
//		private String filepath;
//		private String dbFilePath;
//		private String oldName;
//		private String newName;
//		public String getNewName() {
//			return newName;
//		}
//		public void setNewName(String newName) {
//			this.newName = newName;
//		}
//		@SuppressWarnings("unused")
//		public String getOldName() {
//			return oldName;
//		}
//		public void setOldName(String oldName) {
//			this.oldName = oldName;
//		}
//		private File file;
//		
//		public String getFilepath() {
//			return filepath;
//		}
//		public void setFilepath(String filepath) {
//			this.filepath = filepath;
//		}
//		public String getDbFilePath() {
//			return dbFilePath;
//		}
//		public void setDbFilePath(String dbFilePath) {
//			this.dbFilePath = dbFilePath;
//		}
//		public File getFile() {
//			return file;
//		}
//		public void setFile(File file) {
//			this.file = file;
//		}
//	}
//	
//	@Override
//	protected Class<?> getMyclass() {
//		// TODO Auto-generated method stub
//		return UploadController.class;
//	}
//
//
//	@Override
//	public void setServletConfig(ServletConfig config) {
//		FileItemFactory factory = new DiskFileItemFactory();// Create a factory for disk-based file items
//		this.upload = new ServletFileUpload(factory);// Create a new file upload handler
//		this.upload.setSizeMax(this.MAXSize);// Set overall request size constraint 4194304
//	}
//
//
//	@Override
//	public void setServletContext(ServletContext arg0) {
//
//	}
//}
