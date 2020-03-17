import os, inspect
import sys
import platform

#windows platform specific import
if sys.platform == 'win32':
        import _winreg as winreg

#Pass Installation registry KEY NAME along with VALUE NAME
def getRegValue(keyName, valueName):
	try:
		reg = winreg.ConnectRegistry(None, winreg.HKEY_LOCAL_MACHINE)
		key = winreg.OpenKey(reg, keyName) 
		value = winreg.QueryValueEx(key, valueName)
		winreg.CloseKey(key)
		return value[0]
	except WindowsError, err:
		assert False, "Error '%s' while checking registry key '%s' for value '%s'." % (err, keyName, valueName)

# GHS Multi CC86 compiler system include
def sysInclude():
	try:
		current_dir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
		scriptFile = inspect.getfile(inspect.currentframe())
		fileName = os.path.basename(scriptFile)
		cipFilename = os.path.splitext(fileName.strip())[0] + '.cip'
		normal_parent = os.path.dirname(current_dir)
		dataDir = os.path.dirname(normal_parent)
		cctDir = os.path.dirname(dataDir)
		configDir = os.path.dirname(cctDir)
		cipDir = os.path.join(configDir, "cip")
		cipFilepath = os.path.join(cipDir, cipFilename)
		stubDir = os.path.join(normal_parent, "Stub")
		cipFile = open(cipFilepath, 'w')
		
		# GHS MULTI for copm 2012.5.4 installation path
		# Checking if registry entry is available - No Installation registry entry available to check uninstall registry
		#exists = True
		#try:
		#	compInstall = getRegValue(r'SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\GreenHillsSoftware411ec217','InstallLocation')
		#except WindowsError:
		#	exists = False		
		#try:
		#	if not exists:
		#		compInstall = getRegValue(r'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\GreenHillsSoftware411ec217','InstallLocation')
		#except WindowsError, err:
		#	assert False, " Error: '%s' - Encountered problems reading Registry..." % (err)
		
		## Installation Path for GHS MULTI comp v 2012.5.4
		compInstall = os.path.join('c:',os.sep,'ghs','comp_201254')

        	# Stub Directory   
		stubList = [os.path.join(d, t) for d, ds, fs in os.walk(stubDir) for t in ds]
		for dirName in stubList:
			cipFile.write('-i "' + dirName + '"\n')
			cipFile.write('-q "' + dirName + '"\n')
		for fiDir in stubList:
			if fiDir.endswith("prlforceinclude"):
				fileList = [os.path.join(fiDir, x) for x in os.listdir(fiDir)]
				fileList.sort()
				for fn in fileList:
					cipFile.write('-fi "' + fn + '"\n')


		# Compiler include directory
		cccfeInclude = os.path.join(compInstall, "include","ppc")
		cipFile.write('-i "' + cccfeInclude + '"\n')
		cipFile.write('-q "' + cccfeInclude + '"\n')
		incList = [os.path.join(d, t) for d, ds, fs in os.walk(cccfeInclude) for t in ds]
		for dirName in incList:
			cipFile.write('-i "' + dirName + '"\n')
			cipFile.write('-q "' + dirName + '"\n')

		# ansi include directory
		ansiInclude = os.path.join(compInstall, "ansi")
		cipFile.write('-i "' + ansiInclude + '"\n')
		cipFile.write('-q "' + ansiInclude + '"\n')
		incList = [os.path.join(d, t) for d, ds, fs in os.walk(ansiInclude) for t in ds]
		for dirName in incList:
			cipFile.write('-i "' + dirName + '"\n')
			cipFile.write('-q "' + dirName + '"\n')

		cipFile.close()
        			
	except IOError: pass 

if __name__=="__main__":
	if sys.platform == 'win32' :
		sysInclude()

