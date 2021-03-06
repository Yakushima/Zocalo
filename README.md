# Zocalo

From the Sourceforge README (author Chris Hibbert):

This is the April, 2011 release of the Zocalo Prediction Market code.

This release is being made available to fix a bug in the RPC server.
I broke RPC setup when I introduced Quantities and Prices.  

The latest version is always available at
http://zocalo.sourceforge.net.  You can use it to build a complete
source release or either of two binary releases on Windows or any
standard Unix-based platform (Linux, Macintosh).  Release files with
"Exp" in the file names support markets for economics experiments,
while those with "PM" in their names support more general Prediction
Markets.  The INSTALL file gives instructions for installing and
running.  RELEASE-TODO lists a few of the many tasks left to be done.
(doc/Priorities.txt lists more.)  The windows releases use standard
installers that walk you through the installation and configuration
process.  On Unix there is a configuration file to edit in etc/zocalo.conf.

The source release includes javadoc as well as the source code, and an
Ant file (build.xml) that will allow you to build source and binary
releases, run JUnit tests, or regenerate the javadoc.  It does not
directly support installation.  Installation should be done from one
of the binary releases; you can build those from the source release.
The binary releases include just what you need to run either an
economics experiment setup or a prediction market, including the
INSTALL instructions and suggestions for CONFIGURing an experiment
using Zocalo.  All versions include these NOTES and a list of CHANGES.

LICENSE gives the license for the base Zocalo code.  Third party code
that we have included is described in THIRD_PARTY_SOFTWARE.  We don't
include source code for any of the third party code.
Source: README, updated 2011-04-17
