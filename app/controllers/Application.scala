package controllers

import com.google.inject.Inject
import play.api.db.slick.DatabaseConfigProvider
import play.api.mvc._
import slick.driver.MySQLDriver

class Application @Inject()(dbConfigProvider: DatabaseConfigProvider) extends Controller {

    val dbConfig = dbConfigProvider.get[MySQLDriver]

    def index = Action {
        var outString = "Number is "
        Ok(views.html.index(outString))
    }

}
