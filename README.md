<<<<<<< HEAD
# hit-1163710122

系统环境：JDK1.6，tomcat 7，mysql 5.6

程序使用的支柱框架，程序包含前端，后端还有数据库，后端主要由动作的ActionFrom，核心，DAO四部分组成；

action中有各种动作类（Book、BookCase、BookType、Borrow、Library、Manager、parameter、Publishing、Reader、Readertype）实现系统的不同的功能，通过ActionMapping对象的findForward()方法获得一个ActionForward对象，然后把处理结果转发到ActionForward对象所指的目标

Book类中包含添加图书信息、查询全部图书信息，条件查询图书信息、修改图书信息、修改图书信息、删除图书信息。

BookCase类中包含添加书架信息、查询全部书架信息、修改书架信息、修改书架信息，删除书架

BookType类中包含添加图书类型信息、查询全部图书类型信息、查询修改图书类型信息、修改图书类型信息、删除图书类型信息

Borrow类中包含图书借阅排行、图书借阅查询、图书借阅、图书续借、图书归还

Manager类中，调用ManagerDAO类进行数据操作，包含管理员身份验证、查询管理员信息、添加管理员信息、查询修改管理员信息、修改密码时查询管理员、修改管理员信
息、删除管理员信息、修改管理员密码

Parameter类中，对参数进行操作

Publishing类中，查询全部出版社信息

Reader类中，包含操作添加读者信息、查询全部读者信息、查询修改读者信息、查询读者详细信息、修改读者信息、删除读者信息

ReaderType类中，包含添加读者类型信息、查询全部读者类型信息、修改读者类型信息、删除读者类型信息

ActionFrom中包含（BookForm、BookCaseForm、BookTypeForm、BorrowForm、LibraryForm、ManagerForm、parameterForm、PublishingForm、ReaderForm、ReadertypeForm类），ActionFrom类是用来临时存放视图页面中的表单数据，例如，一个登录页面会有一个用户名输入框和一个密码输入框，以及用来提交登录请求的按扭。当用户提交登录请求后，Struts将 用户名和密码两个输入域的数据自动填充到相应的ActionForm对象中，然后控制层可以从该ActionForm对象中读取用户输入的表单数据，也可以把来自模型层的数据存放到ActionForm中，然后返回给视图显示。所以每个单独的类中 都是构造方法，getters和setters

core中，包含ChStr类，ConnDB类，SetCharacterEncodingFilter类

ChStr类是检查字符，包含处理字符串中的空值和过滤危险字符

ConnDB类是连接数据库，数据库的详细信息都在 中，包括用户名，密码，端口号

dao中,包含BookDAO、BookCaseDAO、BookTypeDAO、BorrowDAO、LibraryDAO、ManagerDAO、parameterDAO、PublishingDAO、ReaderDAO、ReadertypeDAO。DAO类都是进行数据操作的类，是对于数据可进行增删改查等操作的代码，包含查询数据，添加数据，删除数据，修改数据，用于修改的查询操作，在涉及到时间的数据，会进行获取时间和计算时间操作。
