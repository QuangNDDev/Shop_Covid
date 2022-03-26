package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"zxx\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"description\" content=\"Ogani Template\">\n");
      out.write("        <meta name=\"keywords\" content=\"Ogani, unica, creative, html\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Ogani | Template</title>\n");
      out.write("\n");
      out.write("        <!-- Google Font -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Css Styles -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/elegant-icons.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nice-select.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery-ui.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/slicknav.min.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- Page Preloder -->\n");
      out.write("        <div id=\"preloder\">\n");
      out.write("            <div class=\"loader\"></div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Humberger Begin -->\n");
      out.write("        <div class=\"humberger__menu__overlay\"></div>\n");
      out.write("        <div class=\"humberger__menu__wrapper\">\n");
      out.write("            <div class=\"humberger__menu__logo\">\n");
      out.write("                <a href=\"#\"><img src=\"img/logo.png\" alt=\"\"></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"humberger__menu__cart\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i> <span>1</span></a></li>\n");
      out.write("                    <li><a href=\"#\"><i class=\"fa fa-shopping-bag\"></i> <span>3</span></a></li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"header__cart__price\">item: <span>$150.00</span></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"humberger__menu__widget\">\n");
      out.write("                <div class=\"header__top__right__language\">\n");
      out.write("                    <img src=\"img/language.png\" alt=\"\">\n");
      out.write("                    <div>English</div>\n");
      out.write("                    <span class=\"arrow_carrot-down\"></span>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"#\">Spanis</a></li>\n");
      out.write("                        <li><a href=\"#\">English</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"header__top__right__auth\">\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-user\"></i> Login</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <nav class=\"humberger__menu__nav mobile-menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li class=\"active\"><a href=\"MainController\">Home</a></li>\n");
      out.write("                    <li><a href=\"MainController?action=shop\">Shop</a></li>\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- Humberger End -->\n");
      out.write("\n");
      out.write("        <!-- Header Section Begin -->\n");
      out.write("        <header class=\"header\">\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3\">\n");
      out.write("                        <div class=\"header__logo\">\n");
      out.write("                            <a href=\"MainController\"><img src=\"img/logo.png\" alt=\"\"></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <nav class=\"header__menu\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"MainController\">Home</a></li>\n");
      out.write("                                <li class=\"active\"><a href=\"MainController?action=shop\">Shop</a></li>\n");
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </nav>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"humberger__open\">\n");
      out.write("                    <i class=\"fa fa-bars\"></i>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!-- Header Section End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Breadcrumb Section Begin -->\n");
      out.write("        <section class=\"breadcrumb-section set-bg\" data-setbg=\"img/breadcrumb.jpg\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12 text-center\">\n");
      out.write("                        <div class=\"breadcrumb__text\">\n");
      out.write("                            <h2>Organi Shop</h2>\n");
      out.write("                            <div class=\"breadcrumb__option\">\n");
      out.write("                                <a href=\"MainController\">Home</a>\n");
      out.write("                                <span>Shop</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Breadcrumb Section End -->\n");
      out.write("\n");
      out.write("        <!-- Checkout Section Begin -->\n");
      out.write("        <section class=\"checkout spad\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <h6><span class=\"icon_tag_alt\"></span> Have a coupon? <a href=\"#\">Click here</a> to enter your code\n");
      out.write("                        </h6>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"checkout__form\">\n");
      out.write("                    <h4>Billing Details</h4>\n");
      out.write("                    <form action=\"#\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-8 col-md-6\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-lg-6\">\n");
      out.write("                                        <div class=\"checkout__input\">\n");
      out.write("                                            <p>Full Name<span>*</span></p>\n");
      out.write("                                            <input type=\"text\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"checkout__input\">\n");
      out.write("                                    <p>Address<span>*</span></p>\n");
      out.write("                                    <input type=\"text\" placeholder=\"Street Address\" class=\"checkout__input__add\">                                    \n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-lg-6\">\n");
      out.write("                                        <div class=\"checkout__input\">\n");
      out.write("                                            <p>Phone<span>*</span></p>\n");
      out.write("                                            <input type=\"text\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-lg-4 col-md-6\">\n");
      out.write("                                <div class=\"checkout__order\">\n");
      out.write("                                    <h4>Your Order</h4>\n");
      out.write("                                    <div class=\"checkout__order__products\">Products <span>Total</span></div>\n");
      out.write("                                    <ul>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </ul>                                 \n");
      out.write("                                    <div class=\"checkout__order__total\">Total <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${total}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("$</span></div>\n");
      out.write("                                    <div class=\"checkout__input__checkbox\">\n");
      out.write("                                        <label for=\"acc-or\">\n");
      out.write("                                            Create an account?\n");
      out.write("                                            <input type=\"checkbox\" id=\"acc-or\">\n");
      out.write("                                            <span class=\"checkmark\"></span>\n");
      out.write("                                        </label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do eiusmod tempor incididunt\n");
      out.write("                                        ut labore et dolore magna aliqua.</p>\n");
      out.write("                                    <div class=\"checkout__input__checkbox\">\n");
      out.write("                                        <label for=\"payment\">\n");
      out.write("                                            Check Payment\n");
      out.write("                                            <input type=\"checkbox\" id=\"payment\">\n");
      out.write("                                            <span class=\"checkmark\"></span>\n");
      out.write("                                        </label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"checkout__input__checkbox\">\n");
      out.write("                                        <label for=\"paypal\">\n");
      out.write("                                            Paypal\n");
      out.write("                                            <input type=\"checkbox\" id=\"paypal\">\n");
      out.write("                                            <span class=\"checkmark\"></span>\n");
      out.write("                                        </label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <button type=\"submit\" class=\"site-btn\">PLACE ORDER</button>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Checkout Section End -->\n");
      out.write("\n");
      out.write("        <!-- Footer Section Begin -->\n");
      out.write("        <footer class=\"footer spad\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                        <div class=\"footer__about\">\n");
      out.write("                            <div class=\"footer__about__logo\">\n");
      out.write("                                <a href=\"./index.html\"><img src=\"img/logo.png\" alt=\"\"></a>\n");
      out.write("                            </div>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>Address: 60-49 Road 11378 New York</li>\n");
      out.write("                                <li>Phone: +65 11.188.888</li>\n");
      out.write("                                <li>Email: hello@colorlib.com</li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-6 col-sm-6 offset-lg-1\">\n");
      out.write("                        <div class=\"footer__widget\">\n");
      out.write("                            <h6>Useful Links</h6>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">About Us</a></li>\n");
      out.write("                                <li><a href=\"#\">About Our Shop</a></li>\n");
      out.write("                                <li><a href=\"#\">Secure Shopping</a></li>\n");
      out.write("                                <li><a href=\"#\">Delivery infomation</a></li>\n");
      out.write("                                <li><a href=\"#\">Privacy Policy</a></li>\n");
      out.write("                                <li><a href=\"#\">Our Sitemap</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">Who We Are</a></li>\n");
      out.write("                                <li><a href=\"#\">Our Services</a></li>\n");
      out.write("                                <li><a href=\"#\">Projects</a></li>\n");
      out.write("                                <li><a href=\"#\">Contact</a></li>\n");
      out.write("                                <li><a href=\"#\">Innovation</a></li>\n");
      out.write("                                <li><a href=\"#\">Testimonials</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-12\">\n");
      out.write("                        <div class=\"footer__widget\">\n");
      out.write("                            <h6>Join Our Newsletter Now</h6>\n");
      out.write("                            <p>Get E-mail updates about our latest shop and special offers.</p>\n");
      out.write("                            <form action=\"#\">\n");
      out.write("                                <input type=\"text\" placeholder=\"Enter your mail\">\n");
      out.write("                                <button type=\"submit\" class=\"site-btn\">Subscribe</button>\n");
      out.write("                            </form>\n");
      out.write("                            <div class=\"footer__widget__social\">\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-instagram\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-pinterest\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"footer__copyright\">\n");
      out.write("                            <div class=\"footer__copyright__text\"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>\n");
      out.write("                            <div class=\"footer__copyright__payment\"><img src=\"img/payment-item.png\" alt=\"\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <!-- Footer Section End -->\n");
      out.write("\n");
      out.write("        <!-- Js Plugins -->\n");
      out.write("        <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.nice-select.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.slicknav.js\"></script>\n");
      out.write("        <script src=\"js/mixitup.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.CART}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("c");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <li>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.product.productName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" <span> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.quantity*c.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("$\n");
          out.write("                                                    ");
          if (_jspx_meth_c_set_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</span></li>\n");
          out.write("                                                    ");
          if (_jspx_meth_c_set_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_set_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_0.setVar("amount");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.quantity*c.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_set_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_1.setPageContext(_jspx_page_context);
    _jspx_th_c_set_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_1.setVar("total");
    _jspx_th_c_set_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${total+amount}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_1 = _jspx_th_c_set_1.doStartTag();
    if (_jspx_th_c_set_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
    return false;
  }
}
