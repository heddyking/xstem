package com.worksap.stm2016.util;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileUtil {
	public static byte[] toByteArray(String filepath) throws IOException{  

		File f = new File(filepath);  
		if(!f.exists()){  
			throw new FileNotFoundException(filepath);  
		}  

		ByteArrayOutputStream bos = new ByteArrayOutputStream((int)f.length());  
		BufferedInputStream in = null;  
		try{  
			in = new BufferedInputStream(new FileInputStream(f));  
			int buf_size = 1024;  
			byte[] buffer = new byte[buf_size];  
			int len = 0;  
			while(-1 != (len = in.read(buffer,0,buf_size))){  
				bos.write(buffer,0,len);  
			}  
			return bos.toByteArray();  
		}catch (IOException e) {  
			e.printStackTrace();  
			throw e;  
		}finally{  
			try{  
				in.close();  
			}catch (IOException e) {  
				e.printStackTrace();  
			}  
			bos.close();  
		}  
	}  
}
