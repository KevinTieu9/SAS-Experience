{"version":2,"type":"import","id":"8b761b55-78d8-47d9-84dc-7ce649a93dba","name":"storm_final","label":"storm_final","description":"","created":1626760559000,"modified":1626760561000,"notes":"","parameters":{"server":"","target":"com.sas.ep.sascoder.execution.producers.VPP","action":"runSASCode","priority":"Reserved","code":"/* Generated Code (IMPORT) */\r\n/* Source File: storm_final.csv */\r\n/* Source Path: /home/u58811620/CISP357/output */\r\n/* Code generated on: 7/20/21, 5:56 AM */\r\n\r\n%web_drop_table(WORK.IMPORT);\r\n\r\n\r\nFILENAME REFFILE '/home/u58811620/CISP357/output/storm_final.csv';\r\n\r\nPROC IMPORT DATAFILE=REFFILE\r\n\tDBMS=CSV\r\n\tOUT=WORK.IMPORT;\r\n\tGETNAMES=YES;\r\nRUN;\r\n\r\nPROC CONTENTS DATA=WORK.IMPORT; RUN;\r\n\r\n\r\n%web_open_table(WORK.IMPORT);","resource":false,"outputType":"TABLE","outputName":"IMPORT","outputLocation":"WORK","fileName":"storm_final.csv","filePath":"/home/u58811620/CISP357/output","fileType":"","fileSheet":"","fileTable":"","delimiterOption":"","dataRowOption":-1,"guessingRowsOption":-1,"getnamesOption":true,"quoteDelimiterOption":true,"eolDelimiterOption":""},"properties":{"left":"20","top":"20","width":"100","height":"60","region":"output","fillcolor":"#E0E6F1","linecolor":"#6882a3","tooltip":"","portsonly":false,"key":"control","visible":true}}