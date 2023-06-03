package com.woori.AI;

import org.apache.commons.io.FileUtils;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



import java.io.File;
import java.util.Base64;


@Controller
public class AIController {

	    
	    private final String url="http://15.165.230.31:5000/detect";

	    private String getBase64String(MultipartFile multipartFile) throws Exception {
	        byte[] bytes = multipartFile.getBytes();
	        return Base64.getEncoder().encodeToString(bytes);
	    }

	    @RequestMapping("test.do")
	    public String requestToFlask(@RequestParam("image") MultipartFile image, RedirectAttributes redirect) throws Exception {
	        RestTemplate restTemplate = new RestTemplate();
	        String fileName = image.getOriginalFilename();
	        // Header set
	        HttpHeaders httpHeaders = new HttpHeaders();
	        httpHeaders.setContentType(MediaType.APPLICATION_JSON);
	        

	        // Body set
	        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
	        String imageFileString = getBase64String(image);
	        body.add("filename", fileName);
	        body.add("image", imageFileString);

	        // Message
	        HttpEntity<?> requestMessage = new HttpEntity<>(body, httpHeaders);
	        //HttpEntity<JSONObject> httpEntity = new HttpEntity<JSONObject>(jsonObject, httpHeaders);
	        // Request
	        HttpEntity<String> request = restTemplate.postForEntity(url, requestMessage, String.class);

	        // Response 파싱
	        String response = restTemplate.postForObject(url, requestMessage, String.class);
	        //ResponseEntity<Map> response = restTemplate.exchange("http://127.0.0.1:5000/detect",HttpMethod.POST, requestMessage, String.class);
	        
	        //System.out.print(response);
	        JSONParser parser = new JSONParser();
	        JSONObject jsonobject = (JSONObject) parser.parse(response);
	        System.out.print(jsonobject.get("file_name"));
	        System.out.print(jsonobject.get("number"));
	        //System.out.print(jsonobject.get("image"));
	        
	        // create output file
	        File outputFile = new File("C:\\Users\\user\\Desktop\\woori.jpg");
	        byte[] decodedBytes = Base64.getDecoder().decode((String)(jsonobject.get("image")));
	        FileUtils.writeByteArrayToFile(outputFile, decodedBytes);



	        return "redirect:/";
	    }

	}



