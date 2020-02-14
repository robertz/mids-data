component output = "false" {

    this.datasources["web"] = {
        class: 'com.mysql.jdbc.Driver'
    , bundleName: 'com.mysql.jdbc'
    , bundleVersion: '5.1.40'
    , connectionString: 'jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true'
    , username: 'rob'
    , password: "encrypted:49bd112f78d3933741e4a4f83ec455f316e338acd1d91d4f7e0d21c284a687b445377951cb4d774659fab275772f1375"
    // optional settings
    , connectionLimit:100 // default:-1
    , storage:true // default: false
	};

    this['name'] = hash ( getCurrentTemplatePath() );
    this['datasource'] = "web";

 }