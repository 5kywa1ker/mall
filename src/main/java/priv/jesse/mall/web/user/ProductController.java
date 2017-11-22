package priv.jesse.mall.web.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import priv.jesse.mall.entity.Classification;
import priv.jesse.mall.entity.Product;
import priv.jesse.mall.entity.pojo.ResultBean;
import priv.jesse.mall.service.ClassificationService;
import priv.jesse.mall.service.ProductService;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private ClassificationService classificationService;

    /**
     * 获取商品信息
     * @param id
     * @return
     */
    @RequestMapping("/get.do")
    public ResultBean<Product> getProduct(int id){
        Product product = productService.findById(id);
        return new ResultBean<>(product);
    }

    /**
     * 打开商品详情页面
     * @param id
     * @param map
     * @return
     */
    @RequestMapping("/get.html")
    public String toProductPage(int id,Map<String,Object> map){
        Product product = productService.findById(id);
        map.put("product",product);
        return "";
    }

    /**
     * 查找热门商品
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/hot.do")
    public ResultBean<List<Product>> getHotProduct() {
        List<Product> products = productService.findHotProduct();
        return new ResultBean<>(products);
    }

    /**
     * 查找最新商品
     * @param pageNo
     * @param pageSize
     * @return
     */
    @ResponseBody
    @RequestMapping("/new.do")
    public ResultBean<List<Product>> getNewProduct(int pageNo, int pageSize) {
        Pageable pageable = new PageRequest(pageNo, pageSize);
        List<Product> products = productService.findNewProduct(pageable);
        return new ResultBean<>(products);
    }

    /**
     * 打开按一级分类查看商品页面
     * @return
     */
    @RequestMapping("/category.html")
    public String toCatePage(int cid,Map<String,Object> map){
        Classification classification = classificationService.findById(cid);
        map.put("category",classification);
        return "";

    }

    /**
     * 按一级分类查找商品
     * @param cid
     * @param pageNo
     * @param pageSize
     * @return
     */
    @ResponseBody
    @RequestMapping("/category.do")
    public ResultBean<List<Product>> getCategoryProduct(int cid, int pageNo, int pageSize) {
        Pageable pageable = new PageRequest(pageNo, pageSize);
        List<Product> products = productService.findByCid(cid, pageable);
        return new ResultBean<>(products);
    }

}
