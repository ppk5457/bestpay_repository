package cn.edu.nsu;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

/**
 * Created by Teacher on 2016/8/25.
 */
public class WeatherShow {
    private static String apikey = "ac546028096ecc2508300657d1f794d8";
    private static String httpUrlCitys = "http://apis.baidu.com/apistore/aqiservice/citylist";
    private static String httpUrlWeather = "http://apis.baidu.com/apistore/aqiservice/aqi";

    public static void main(String args[]) throws UnsupportedEncodingException {

        String httpArgCitys = "";
        String jsonResult = request(httpUrlCitys, httpArgCitys);
        JSONObject jsonObjectCitys=JSONObject.fromObject(jsonResult);
        JSONObject jsonObjectRetData=jsonObjectCitys.getJSONObject("retData");
        String jsonObjectList=jsonObjectRetData.getString("citylist");
        String citys[]=jsonObjectList.split(",");
        ArrayList list=new ArrayList();
        for(int i=0;i<citys.length;i++){
            list.add(citys[i]);
        }

        System.out.println("Please input the city");
        Scanner scanner = new Scanner(System.in);
        String city = scanner.nextLine();
        while (!"exit".equals(city)) {
            if(isExist(city,list)){
            String httpArgWeather = "city=" + URLEncoder.encode(city, "utf-8");
            String jsonResultWeather = request(httpUrlWeather, httpArgWeather);
            System.out.println(jsonResultWeather);
            JSONObject jsonObject = JSONObject.fromObject(jsonResultWeather);
            System.out.println("errNum:" + jsonObject.getInt("errNum"));
            JSONObject jsonObject1 = jsonObject.getJSONObject("retData");
            System.out.println("城市:" + jsonObject1.getString("city"));
            System.out.println("检测时间：" + jsonObject1.getString("time"));
            System.out.println("指数：" + jsonObject1.getInt("aqi"));
            System.out.println("质量：" + jsonObject1.getString("level"));

            }else{
                System.out.println("暂时无法提供该城市数据");
            }
            System.out.println("Please input the other city");
            city = scanner.nextLine();
        }
    }


    public static boolean isExist(String city,ArrayList cityList){
        if(cityList.contains(city)){
           return true;
        }else{
            return false;
        }
    }
    public static String request(String httpUrl, String httpArg) {
        BufferedReader reader = null;
        String result = null;
        StringBuffer sbf = new StringBuffer();
        httpUrl = httpUrl + "?" + httpArg;
        try {
            URL url = new URL(httpUrl);
            HttpURLConnection connection = (HttpURLConnection) url
                    .openConnection();
            connection.setRequestMethod("GET");
            connection.setRequestProperty("apikey", apikey);
            connection.connect();
            InputStream is = connection.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                sbf.append(strRead);
                sbf.append("\r\n");
            }
            reader.close();
            result = sbf.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
