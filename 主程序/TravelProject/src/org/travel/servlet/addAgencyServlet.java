package org.travel.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.travel.entity.agency;
import org.travel.service.IAgencyService;
import org.travel.service.impl.AgencyServiceImpl;

public class addAgencyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 设置响应编码
		response.setCharacterEncoding("utf-8");
		response.setContentType("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String agencyname = null;
		String agencyimg = null;

		String agencyaddress = null;
		String agencyphone = null;

		try {
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if (isMultipart) {// 判断前台的form是否有multipart属性
				// FileItemFactory factory = new DiskFileItemFactory();
				DiskFileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);

				// 设置上传文件时 用到临时文件的大小DiskFileItemFactory
				factory.setSizeThreshold(10240);// 设置临时的缓冲文件大小10kb
				factory.setRepository(new File(
						"f:\\javaDevelopSoft\\uploadtemp"));// 设置临时文件的目录
				// 控制上传文件的大小 20kb ServletFileUpload
				upload.setSizeMax(20480000);// 单位字节b

				// 通过parseRequest解析form中的所有请求字段，并保存到items集合中(即前台传递的sno sname
				// spicture)
				List<FileItem> items = upload.parseRequest(request);
				// 遍历items中的数据（sno，sname，spicture）
				Iterator<FileItem> iter = items.iterator();
				while (iter.hasNext()) {
					FileItem item = iter.next();
					String itemName = item.getFieldName();
					// 判断前台字段 是普通form表单字段还是文件字段

					// request.getParameter() --iter.getString();
					if (item.isFormField()) {
						if (itemName.equals("agencyname")) {
							agencyname = item.getString("utf-8");
						} else if (itemName.equals("agencyaddress")) {
							agencyaddress = item.getString("utf-8");
						} else if (itemName.equals("agencyphone")) {
							agencyphone = item.getString("utf-8");
						} else {
							System.out.println("其他字段....");
						}
					} else {
						// 文件上传
						// 文件名 getFieldName是获取普通表单字段的Name
						// getName()是获取文件名
						String fileName = item.getName();
						agencyimg = "images/agency/" + fileName;
						System.out.println(agencyimg);
						String ext = fileName
								.substring(fileName.indexOf(".") + 1);
						// picture.jpg
						if (!(ext.equals("png") || ext.equals("gif") || ext
								.equals("jpg"))) {
							System.out.println("图片类型有误！格式只能是png gif jpg");
							return; // 终止
						}
						// 获取文件内容 并上传
						// 定义文件路径：指定上传的位置（服务器路径）
						// 获取服务器路径
						// String path =
						// request.getSession().getServletContext().getRealPath("upload");
						String path = "F:\\javaDevelopSoft\\apache-tomcat-7.0.93\\webapps\\TravelProject\\images\\agency";
						File file = new File(path, fileName);

						item.write(file);// 上传
						System.out.println("上传成功");

					}

				}
			}
		} catch (FileUploadBase.SizeLimitExceededException e) {

			System.out.println("文件超出20kb");

		} catch (FileUploadException e) {

			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		agency agency = new agency(agencyimg, agencyname, agencyaddress,
				agencyphone);
		IAgencyService agencyService = new AgencyServiceImpl();
		int result = agencyService.addAgency(agency);
		if (result == 1) {
			System.out.println("增加成功");
			request.setAttribute("error", "noerror");
		} else if (result == 2) {
			System.out.println("旅行社存在");
			request.setAttribute("error", "exist");
		} else {
			System.out.println("增加失败");
			request.setAttribute("error", "adderror");
		}
		request.getRequestDispatcher("manage/agency_man_add.jsp").forward(
				request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
