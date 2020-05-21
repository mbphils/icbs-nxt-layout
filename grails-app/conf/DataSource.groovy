dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "org.postgresql.Driver"
    username = "postgres"
    password = "postgres" //LOCAL
}

hibernate {
    cache.use_second_level_cache = true
    cache.us//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            //url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
            url = "jdbc:postgresql://localhost:5432/icbs-nxt" //Local
            //url = "jdbc:postgresql://192.168.0.4:7477/signamarch06"  //PROD_SERVER
            //url = "jdbc:postgresql://192.168.5.11:5432/icbs"  //San Clemente
            //url = "jdbc:postgresql://192.168.5.15:5432/icbs"  //Live
            //url = "jdbc:postgresql://192.168.5.16:5432/icbs" 
           }
    }
    test {
        dataSource {
            dbCreate = "update"
            //url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
            url = "jdbc:postgresql://localhost:5432/icbs-nxt" //Local
            //url = "jdbc:postgresql://172.16.0.5:5432/icbs"  //PROD_SERVER
            //url = "jdbc:postgresql://192.168.5.11:5432/icbs"  //San Clemente
            //url = "jdbc:postgresql://192.168.0.4:7477/signamarch06" 
            //url = "jdbc:postgresql://192.168.5.15:5432/icbs"  //Live
            //url = "jdbc:postgresql://192.168.5.16:5432/icbs" 
        }
    }
    
    production {
        dataSource {
            dbCreate = "update" 
            //url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
            /*properties {
               // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
               jmxEnabled = true
               initialSize = 5
               maxActive = 50
               minIdle = 5
               maxIdle = 25
               maxWait = 10000
               maxAge = 10 * 60000
               timeBetweenEvictionRunsMillis = 5000
               minEvictableIdleTimeMillis = 60000
               validationQuery = "SELECT 1"
               validationQueryTimeout = 3
               validationInterval = 15000
               testOnBorrow = true
               testWhileIdle = true
               testOnReturn = false
               jdbcInterceptors = "ConnectionState"
               defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }*/
            // ICBS PROD   
            //url = "jdbc:postgresql://192.168.1.80:5432/icbs" // live
            //url = "jdbc:postgresql://192.168.1.81:5432/icbs" //backup server
            url = "jdbc:postgresql://localhost:5432/icbs-nxt" //Local
            //url = "jdbc:postgresql://172.16.0.5:5432/icbs"  //PROD_SERVER
            //url = "jdbc:postgresql://192.168.5.11:5432/icbs"  //San Clemente
            //url = "jdbc:postgresql://192.168.0.4:7477/signamarch06" 
            //url = "jdbc:postgresql://192.168.5.15:5432/icbs"  //Live
            //url = "jdbc:postgresql://192.168.5.16:5432/icbs"  //Live

        }
    }
    
}
