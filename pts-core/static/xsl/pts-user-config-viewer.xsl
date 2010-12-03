<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Phoronix Test Suite - User Configuration File</title>
	</head>
	<body>
		<div style="width: 90%; margin: 20px auto 10px; text-align: left;">
			<p align="center"><img src="xsl/pts-logo.png" /></p>
			<p>The <em>user-config.xml</em> file contains the user configuration options for the Phoronix Test Suite. To edit any option, open <em>user-config.xml</em> within your preferred text editor. Alternatively, you can use the <em>user-config-set</em> option with the Phoronix Test Suite to update settings. For example, to set the download cache with the Phoronix Test Suite, execute <em>phoronix-test-suite user-config-set CacheDirectory=~/cache-directory/</em>. For additional information, view the documentation included with the Phoronix Test Suite or visit <a href="http://www.phoronix-test-suite.com/">Phoronix-Test-Suite.com</a>.</p>

			<h1>General Options</h1>
			<h3>AnonymousUsageReporting: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/General/AnonymousUsageReporting" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, anonymous usage information and statistics, like the tests that are run and their length of run, will be reported to <a href="http://global.phoronix.com/">Phoronix Global</a> for analytical reasons. All submitted information is kept anonymous. For more information on the anonymous usage reporting, read the Phoronix Test Suite documentation.</p>
			<h3>DefaultBrowser: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/General/DefaultBrowser" /></span></h3>
			<p>The Phoronix Test Suite will automatically attempt to launch the system's default web browser when needed. This is done first by checking for x-www-browser and then xdg-open. If neither command is available, the Phoronix Test Suite will fallback to checking for Firefox, Epiphany, Mozilla, or the open command. If you wish to override the default browser that the Phoronix Test Suite selects, set this tag to the command name of the browser you wish to use. Leaving this tag empty will have the Phoronix Test Suite determine the default web browser.</p>
			<h3>UsePhodeviCache: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/General/UsePhodeviCache" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, the Phoronix Test Suite will use the Phodevi smart cache (if available). The Phodevi smart cache will automatically cache relevant system hardware/software attributes that can be safely stored and will be used until the system's software/hardware has changed or the system rebooted. Enabling this option will speed up the detection of installed hardware and software through the Phoronix Test Suite. If this option is set to <em>FALSE</em>, Phodevi will not generate a smart cache. The default value is <em>TRUE</em>.</p>
			<h3>DefaultDisplayMode: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/General/DefaultDisplayMode" /></span></h3>
			<p>This option affects how text is displayed on the command-line interface during the testing process. If this option is set to <em>DEFAULT</em>, the text interface will be the traditional Phoronix Test Suite output. If this option is set to <em>CONCISE</em>, the display mode is shorter and more concise. This is the default mode used during batch testing. The default value is <em>DEFAULT</em>.</p>

			<h1>Modules Options</h1>
			<h3>LoadModules: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Modules/LoadModules" /></span></h3>
			<p>This tag contains a string of the names of the Phoronix Test Suite modules to load by default when running the Phoronix Test Suite. Multiple modules can be listed when delimited by a comma. Modules that load via setting an environmental variable can also be specified here (i.e. <em>FORCE_AA=8</em> as an option in this string to load the <em>graphics_override</em> module with the 8x forced anti-aliasing). The default value is <em>toggle_screensaver, update_checker</em>.</p>

			<h1>Installation Options</h1>
			<h3>RemoveDownloadFiles: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Installation/RemoveDownloadFiles" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, once a test has been installed the downloaded files will be removed. Enabling this option will conserve disk space and in nearly all circumstances will not result in any problems. However, if a test profile directly depends upon a file that was downloaded (as opposed to something extracted from a downloaded file during the installation process), enabling this option will cause issues. If this option is set to <em>FALSE</em>, the downloaded files will not be removed unless the test is uninstalled. The default value is <em>FALSE</em>.</p>
			<h3>SearchMediaForCache: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Installation/SearchMediaForCache" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when installing a test it will automatically look for a Phoronix Test Suite download cache on removable media that is attached and mounted on the system. On the Linux operating system, the Phoronix Test Suite looks for devices mounted within the <em>/media/</em> or <em>/Volumes/</em> directories. If a download cache is found (a <em>download-cache/</em> folder within the drive's root directory) and a file it is looking for with matching MD5 check-sum, the file will be automatically copied. Otherwise the standard download cache is checked. If this option is set to <em>FALSE</em>, removable media devices are not checked. The default value is <em>TRUE</em>.</p>
			<h3>SymLinkFilesFromCache: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Installation/SymLinkFilesFromCache" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, during the test installation process when a file is found in a Phoronix Test Suite download cache, instead of copying the file just provide a symbolic link to the file. Enabling this option will conserve disk space and in nearly all circumstances will not result in any issues, permitting the download cache files are always mounted during testing and are not located on removable media. If this option is set to <em>FALSE</em>, the files will be copied from the download cache. The default value is <em>FALSE</em>.</p>
			<h3>PromptForDownloadMirror: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Installation/PromptForDownloadMirror" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when downloading a test file the user will be prompted to select a mirror when multiple mirrors available. This option is targeted for those in remote regions or where their download speed may be greatly affected depending upon the server. If this option is set to <em>FALSE</em>, the Phoronix Test Suite will randomly pick a mirror. The default value is <em>FALSE</em>.</p>
			<h3>EnvironmentDirectory: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Installation/EnvironmentDirectory" /></span></h3>
			<p>This option sets the directory where tests will be installed to by the Phoronix Test Suite. The full path to the directory on the local file-system should be specified, though <em>~</em> is a valid character for denoting the user's home directory. The default value is <em>~/.phoronix-test-suite/installed-tests/</em>.</p>
			<h3>CacheDirectory: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Installation/CacheDirectory" /></span></h3>
			<p>This option sets the directory for the main download cache. The download cache is checked when installing a test while attempting to locate a needed test file. If the file is found in the download cache, it will not be downloaded from there instead of an Internet mirror. When running <em>phoronix-test-suite make-download-cache</em>, files are automatically copied to this directory. The full path to the directory should be specified, though <em>~</em> is a valid character for denoting the user's home directory. Specifying an HTTP or FTP URL is valid. The default value is <em>~/.phoronix-test-suite/download-cache/</em>. Multiple cache directories can be specified as of Phoronix Test Suite 2.2 with each directory being delimited by a colon.</p>

			<h1>Testing Options</h1>
			<h3>SleepTimeBetweenTests: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Testing/SleepTimeBetweenTests" /></span></h3>
			<p>This option sets the time (in seconds) to sleep between running tests. The default value is <em>8</em>.</p>
			<h3>SaveSystemLogs: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Testing/SaveSystemLogs" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when saving the results from a test it will also save various system details and logs to a sub-directory of the result file's location. Among the logs that will be archived include the X.Org log, dmesg, and lspci outputs. These system details may also be saved if a test suite explicitly requests this information be saved. If this option is set to <em>FALSE</em>, the system details / logs will not be saved by default. The default value is <em>FALSE</em>. When running in batch mode or using a Phoronix Certification and Qualification Suite, the logs will be saved regardless of this user setting.</p>
			<h3>SaveInstallationLogs: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Testing/SaveInstallationLogs" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when saving the results from a test it will archive the complete output generated by the test during its earlier installation process. The log(s) are then saved to a sub-directory of the result file's location. If this option is set to <em>FALSE</em>, the full test logs will not be saved. The default value is <em>FALSE</em>. When running in batch mode or using a Phoronix Certification and Qualification Suite, the logs will be saved regardless of this user setting.</p>
			<h3>SaveTestLogs: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Testing/SaveTestLogs" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when saving the results from a test it will archive the complete output of each test's run generated by the application under test itself. The default value is <em>FALSE</em>.</p>
			<h3>ResultsDirectory: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Testing/ResultsDirectory" /></span></h3>
			<p>This option sets the directory where test results will be saved by the Phoronix Test Suite. The full path to the directory on the local file-system should be specified, though <em>~</em> is a valid character for denoting the user's home directory. The default value is <em>~/.phoronix-test-suite/test-results/</em>.</p>

			<h1>Statistics Options</h1>
			<h3>DynamicRunCount: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Statistics/DynamicRunCount" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, the Phoronix Test Suite will automatically increase the number of times a test is to be run if the standard deviation of the test results exceeds a predefined threshold. This option is set to <em>TRUE</em> by default and is designed to ensure the statistical signifiance of the test results. The run count will increase until the standard deviation falls below the threshold or when the total number of run counts exceeds twice the amount that is set to run by default from the given test profile. Under certain conditions the run count may also increase further.</p>
			<h3>LimitDynamicToTestLength: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Statistics/LimitDynamicToTestLength" /></span></h3>
			<p>If <em>DynamicRunCount</em> is set to <em>TRUE</em>, this option sets a limit on the maximum length per trial run that a test can execute (in minutes) for the run count to be adjusted. This option is to prevent tests that take a very long amount of time to run from consuming too much time. By default this value is set to <em>20</em> minutes.</p>
			<h3>StandardDeviationThreshold: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Statistics/StandardDeviationThreshold" /></span></h3>
			<p>This option defines the overall standard deviation threshold (as a percent) for the Phoronix Test Suite to dynamically increase the run count of a test if this limit is exceeded. The default value is <em>3.50</em>.</p>
			<h3>ExportResultsTo: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Statistics/ExportResultsTo" /></span></h3>
			<p>This option can specify a file (either the absolute path or relative if contained within <em>~/.phoronix-test-suite/</em> where a set of test results will be passed as the first argument as a string with each of the test results being delimited by a colon. If the executed script returns an exit status of <em>0</em> the results are considered valid, if the script returns an exit status of <em>1</em> the Phoronix Test Suite will request the test be run again.</p>

			<h1>External Hook Options</h1>
			<h3>PreTestProcess: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/ExternalHooks/PreTestProcess" /></span></h3>
			<p>This option can specify the absolute path to an executable file or a command found within the <em>PATH</em> environmental variable. If supplied, this process will be executed prior to the start of the testing process in order to set an external context, adjust any environmental settings, etc for the system under test.</p>
			<h3>InterimTestProcess: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/ExternalHooks/InterimTestProcess" /></span></h3>
			<p>This option can specify the absolute path to an executable file or a command found within the <em>PATH</em> environmental variable. If supplied, this process will be executed following every individual test run within the test execution queue, in order to adjust an external context, tweak any environmental settings, etc for the system under test.</p>
			<h3>PostTestProcess: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/ExternalHooks/PostTestProcess" /></span></h3>
			<p>This option can specify the absolute path to an executable file or a command found within the <em>PATH</em> environmental variable. If supplied, this process will be executed after the testing process has been completed. This can be used for adjusting the context to the system under test, etc.</p>

			<h1>Batch Mode Options</h1>
			<p>The batch mode options are only used when using either the <em>batch-run</em> or <em>batch-benchmark</em> options with the Phoronix Test Suite. This mode is designed to fully automate the operation of the Phoronix Test Suite except for areas where the user would like to be prompted. To configure the batch mode options, it is recommended to run <em>phoronix-test-suite batch-setup</em> instead of modifying these values by hand.</p>
			<h3>SaveResults: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/BatchMode/SaveResults" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when running in batch mode the test results will be automatically saved.</p>
			<h3>OpenBrowser: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/BatchMode/OpenBrowser" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when running in batch mode the web-browser will automatically open when displaying test results. If this option is set to <em>FALSE</em>, the web-browser will not be opened.</p>
			<h3>UploadResults: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/BatchMode/UploadResults" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when running in batch mode the test results will be automatically uploaded to <a href="http://global.phoronix-test-suite.com/">Phoronix Global</a>.</p>
			<h3>PromptForTestIdentifier: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/BatchMode/PromptForTestIdentifier" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when running in batch mode the user will be prompted to enter a test identifier. If this option is set to <em>FALSE</em>, a test identifier will be automatically generated.</p>
			<h3>PromptForTestDescription: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/BatchMode/PromptForTestDescription" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when running in batch mode the user will be prompted to enter a test description. If this option is set to <em>FALSE</em>, the default test description will be used.</p>
			<h3>PromptSaveName: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/BatchMode/PromptSaveName" /></span></h3>
			<p>If this option is set to <em>TRUE</em>, when running in batch mode the user will be prompted to enter a test name. If this option is set to <em>FALSE</em>, a test name will be automatically generated.</p>

			<h1>Networking Options</h1>
			<h3>NoNetworkCommunication: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Networking/NoNetworkCommunication" /></span></h3>
			<p>If you wish to disable network support entirely within the Phoronix Test Suite, set this option to <em>TRUE</em>. The default value is <em>FALSE</em>.</p>
			<h3>Timeout: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Networking/Timeout" /></span></h3>
			<p>This is the read timeout (in seconds) for network connections. The default value is <em>20</em>.</p>
			<h3>ProxyAddress: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Networking/ProxyAddress" /></span></h3>
			<p>If you wish to use a HTTP proxy server to allow the Phoronix Test Suite to communicate with Phoronix Global and other web services, enter the IP address / server name of the proxy server in this tag. If the proxy address and port tags are left empty but the <em>http_proxy</em> environmental variable is set, the Phoronix Test Suite will attempt to use that as the proxy information.</p>
			<h3>ProxyPort: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/Networking/ProxyPort" /></span></h3>
			<p>If using a proxy server, enter the TCP port in this tag.</p>

			<h1>User-Interface Options</h1>
			<h3>SelectDependencies: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/UserInterface/Menus/SelectDependencies" /></span></h3>
			<p>This option is currently not documented. Edit with caution.</p>
			<h3>SelectDownloads: <span style="color: #CC0000;"><xsl:value-of select="PhoronixTestSuite/Options/UserInterface/Menus/SelectDownloads" /></span></h3>
			<p>This option is currently not documented. Edit with caution.</p>

		</div>
		<div style="text-align: center; font-size: 12px;">Copyright &#xA9; 2008 - 2010 by <a href="http://www.phoronix-media.com/" style="text-decoration: none; color: #000;">Phoronix Media</a>.</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
