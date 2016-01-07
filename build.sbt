import play.sbt.PlayImport._
import play.sbt.PlayJava
import play.sbt.routes.RoutesKeys._
import sbt.Keys._
import sbt._

name := """simple-deploy"""

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayJava)

scalaVersion := "2.11.6"

libraryDependencies ++= Seq(
  javaJdbc,
  cache,
  javaWs
)

// Play provides two styles of routers, one expects its actions to be injected, the
// other, legacy style, accesses its actions statically.
routesGenerator := InjectedRoutesGenerator


fork in run := true
