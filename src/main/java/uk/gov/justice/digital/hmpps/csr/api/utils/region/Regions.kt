package uk.gov.justice.digital.hmpps.csr.api.utils.region

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.context.annotation.Configuration

@ConfigurationProperties(prefix = "csr")
@Configuration
class Regions {
    lateinit var regions: List<Region>
}

class Region {
    lateinit var name: String
    lateinit var username: String
    lateinit var password: String
    lateinit var url: String
    lateinit var driverClassName: String
}