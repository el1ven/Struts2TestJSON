import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by el1ven on 14-5-7.
 */
public class JsonAction extends ActionSupport {
    private String userName;
    private String tip;

    public String execute() {
        try {
            if (!("admin".equals(userName))) {
                tip = "你好！" + userName + ", 这个用户名可用！";
            } else {
                tip = "系统中已有" + userName + "用户名，请重新选择一个！";
            }

        } catch (Exception e) {
            tip = e.getMessage();
        }

        return "success";
    }

    public String getUserName() {
        return userName;
    }

    public String getTip() {
        return tip;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }
}