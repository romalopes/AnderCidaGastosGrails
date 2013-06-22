dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    developmentLocal {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            //dbCreate = 'update'
  //          url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
          driverClassName = 'org.h2.Driver'
          username = 'sa'
          password = ''
          url = 'jdbc:h2:file:db/bancoDados;MVCC=TRUE'
  
      }
  
    }
    development {
        dataSource {
          pooled = true
          dbCreate = "update"
          url = "jdbc:mysql://localhost/bancoDados"
          driverClassName = "com.mysql.jdbc.Driver"
          dialect = org.hibernate.dialect.MySQL5InnoDBDialect
          username = "root"
          password = "admin"
          properties {
              maxActive = 50
              maxIdle = 25
              minIdle = 5
              initialSize = 5
              minEvictableIdleTimeMillis = 60000
              timeBetweenEvictionRunsMillis = 60000
              maxWait = 10000
              validationQuery = "/* ping */"
          }
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    /*Host: sql3.freemysqlhosting.net
    Database name: sql311056
    Database user: sql311056
    Database password: kL2!cQ5!*/
    production {
        dataSource {
          pooled = true
          dbCreate = "update"
          url = "jdbc:mysql://sql3.freemysqlhosting.net/sql311056"
          driverClassName = "com.mysql.jdbc.Driver"
          dialect = org.hibernate.dialect.MySQL5InnoDBDialect
          username = "sql311056"
          password = "kL2!cQ5!"
          properties {
              maxActive = 50
              maxIdle = 25
              minIdle = 5
              initialSize = 5
              minEvictableIdleTimeMillis = 60000
              timeBetweenEvictionRunsMillis = 60000
              maxWait = 10000
              validationQuery = "/* ping */"
          }
          hibernate
        }
    }

/*    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
*/}
