package foxy_server_manager;
import java.io.File;

//file lister in the current path :::><:::


public class ServerFiles {

    /**
     *  path where the server files needs to be uploaded
     */
//    public static String upload_folder = "G:\\Study\\Siddharth\\Projects\\Uploads\\up";
    public static String upload_folder = "C:\\wamp\\www\\hosting\\";
    public String[] getFileNames(String s){
        File x = new File(s);
        if(x.exists()){
            return x.list();
        }
        else
        return null;        
    }
}
