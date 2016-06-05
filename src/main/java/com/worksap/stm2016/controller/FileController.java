package com.worksap.stm2016.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.worksap.stm2016.util.FileUtil;
import com.worksap.stm2016.util.HashUtil;

@Controller	
public class FileController {

	// The Environment object will be used to read parameters from the 
	// application.properties configuration file
	@Autowired
	private Environment env;

	/**
	 * POST /uploadFile -> receive and locally save a file.
	 * 
	 * @param uploadfile The uploaded file as Multipart file parameter in the 
	 * HTTP request. The RequestParam name must be the same of the attribute 
	 * "name" in the input tag with type file.
	 * 
	 * @return An http OK status in case of success, an http 4xx status in case 
	 * of errors.
	 */
	@RequestMapping("/uploadFile")
	@ResponseBody
	public ResponseEntity<?> uploadFile(
			@RequestParam("uploadfile") MultipartFile uploadfile) {
		String resume_url=null;
		
		try {
			// Get the filename and build the local file path
			String filename = uploadfile.getOriginalFilename();
			int k=filename.lastIndexOf(".");
			String name=k<0?filename:filename.substring(0,k);
			String type=k<0?"":filename.substring(k+1,filename.length());
			String hash=HashUtil.md5(uploadfile.getBytes());
			String newname=hash+(!type.isEmpty()?("."+type):"");
			resume_url="/downloadFile?file="+newname;
			
			String directory = env.getProperty("worksap.paths.uploadedFiles");
			String filepath = Paths.get(directory, newname).toString();

			// Save the file locally
			BufferedOutputStream stream =
					new BufferedOutputStream(new FileOutputStream(new File(filepath)));
			stream.write(uploadfile.getBytes());
			stream.close();
			System.out.println(newname);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		ResponseEntity<String> r=new ResponseEntity<String>(resume_url,HttpStatus.OK);
		
		return r;
	} // method uploadFile

	@RequestMapping(value = "/downloadFile", method = RequestMethod.GET)
	public void get(HttpServletResponse response,String file){
		System.out.println(file);
		int k=file.lastIndexOf(".");
		String name=k<0?file:file.substring(0,k);
		String type=k<0?"":file.substring(k+1,file.length());
		try {		

			response.setContentType(type);
			response.setHeader("Content-disposition", "attachment; filename=\""+file+"\"");
			String directory = env.getProperty("worksap.paths.uploadedFiles");
			String filepath = Paths.get(directory, file).toString();
			byte[] barr=FileUtil.toByteArray(filepath);
			FileCopyUtils.copy(barr, response.getOutputStream());
		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

} // class MainController

