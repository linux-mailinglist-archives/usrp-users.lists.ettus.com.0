Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0FC2DFBA4
	for <lists+usrp-users@lfdr.de>; Mon, 21 Dec 2020 12:50:50 +0100 (CET)
Received: from [::1] (port=42338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1krJi6-0007Ba-Sw; Mon, 21 Dec 2020 06:50:42 -0500
Received: from mail1.rz.htw-berlin.de ([141.45.10.101]:24529)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <s0564590@HTW-Berlin.de>)
 id 1krJi2-0006mE-FW
 for usrp-users@lists.ettus.com; Mon, 21 Dec 2020 06:50:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=htw-berlin.de; s=my; h=To:Date:Subject:From:From:To:Date:Subject;
 bh=Z2B1XKrCidiz4wgIgVJ4glCriNgqzlajqLROLGivmzE=; b=xdEtkkMWLAjvkArMWxokXYP9ig
 aQkkmY+74hPoiaW525J4XyBYgl+m8V8iBPeOTBxt8mYfH8eVtVKMWpElrY+tziAtsEvcofCDN51Q9
 sywqGADmjvKP8YtES/sqDSc+toeG+pMNb0bvp//0+HM1N+JvLdZLDnZqDaPcTAUAffAPLx4qlzvnO
 D3EHI12ShHd3flIjO+feuj5kEYPekKzqSr6rsByYl+G7SpGiuhAel3Nk0S7mpi0LDoOstYCs+ZgIz
 9ebBkttJpk41PGZBoZb72/g+x7kWkK7UObgCHKs417ZZLyvWMDPLQxNwJI/kkvgvrjE4Oe3k2JI3X
 MzV8AEHw==;
Received: from p4fd31d15.dip0.t-ipconnect.de ([79.211.29.21]
 helo=quarte.fritz.box) by mail1.rz.htw-berlin.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3 (FreeBSD))
 (envelope-from <s0564590@HTW-Berlin.de>) id 1krJhL-000M6I-Gc
 for usrp-users@lists.ettus.com; Mon, 21 Dec 2020 12:49:55 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Message-Id: <8CC32919-3C30-449F-83A2-18CE6BC62291@htw-berlin.de>
Date: Mon, 21 Dec 2020 12:49:56 +0100
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3608.120.23.2.1)
X-HTW-AUTHENTICATED: yes
X-HTW-SPAMINFO: this message was scanned by eXpurgate (http://www.eleven.de)
X-HTW-MAINCATEGORY: clean
X-HTW-DELIVERED-TO: usrp-users@lists.ettus.com
Subject: [USRP-users] Connection problems
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Philipp Schach via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philipp Schach <s0564590@htw-berlin.de>
Content-Type: multipart/mixed; boundary="===============1579089198893348616=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============1579089198893348616==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8E1D58C2-700A-4E1F-A29A-D7CFEC8EA656"


--Apple-Mail=_8E1D58C2-700A-4E1F-A29A-D7CFEC8EA656
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi guys!=20
I am new here and needed some help. My name is Philipp and I am a =
student at HTW Berlin in Germany.
We have built a small test network with srsLTE in our lab. The network =
consists of a computer with a USRP N210 and a Virtual Access GW2028 as =
UE with a Pi. The computer runs the eNodeB service of srsLTE with =
Open5GS as EPC. The network was built by another student last semester. =
It was configured for band 3 at 1800 MHz. Now the network should run in =
band 31 at 450 MHz. Basically it runs as well. The GW2028 successfully =
logs in. However, after a short time there is an error with the USRB =
N210:

[ERROR] [UHD] An unexpected exception was caught in a task loop.The task =
loop will now exit, things may not work.EnvironmentError: IOError: usb =
rx8 transfer status: LIBUSB_TRANSFER_NO_DEVICE
/home/u1804/srsLTE_20_10/srsLTE/lib/src/phy/rf/rf_uhd_imp.cc.228: USRP =
reported the following error: EnvironmentError: IOError: usb rx6 =
transfer status: LIBUSB_TRANSFER_NO_DEVICE

After the appearance the command "uhd_find_devices" returns wrong =
answers. The serial number is no longer returned completely or no device =
is found at all. After a restart it runs again for a few minutes and =
then crashes again with the error.
In band 3, everything was supposedly running relatively stable.=20

Unfortunately, due to Corona, I am not at the university in the lab =
every day, but I plan to be there in the next few days.
If more information is needed, I will submit it when I am on site. =
Currently running a version of Ubuntu 18 as operating system. UHD is =
installed in version 3.15.

Has anyone had this problem before, or could kindly help me?

Greetings Philipp=

--Apple-Mail=_8E1D58C2-700A-4E1F-A29A-D7CFEC8EA656
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">Hi =
guys!&nbsp;</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, =
0, 0);" class=3D"">I am new here and needed some help. My name is =
Philipp and I am a student at HTW Berlin in Germany.</div><div =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">We =
have built a small test network with srsLTE in our lab. The network =
consists of a computer with a USRP N210 and a Virtual Access GW2028 as =
UE with a Pi. The computer runs the eNodeB service of srsLTE with =
Open5GS as EPC. The network was built by another student last semester. =
It was configured for band 3 at 1800 MHz. Now the network should run in =
band 31 at 450 MHz. Basically it runs as well. The GW2028 successfully =
logs in. However, after a short time there is an error with the USRB =
N210:</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D""><br class=3D""></div><div style=3D"caret-color: rgb(0, =
0, 0); color: rgb(0, 0, 0);" class=3D""><div class=3D"">[ERROR] [UHD] An =
unexpected exception was caught in a task loop.The task loop will now =
exit, things may not work.EnvironmentError: IOError: usb rx8 transfer =
status: LIBUSB_TRANSFER_NO_DEVICE</div><div =
class=3D"">/home/u1804/srsLTE_20_10/srsLTE/lib/src/phy/rf/<a =
href=3D"http://rf_uhd_imp.cc" class=3D"">rf_uhd_imp.cc</a>.228: USRP =
reported the following error: EnvironmentError: IOError: usb rx6 =
transfer status: LIBUSB_TRANSFER_NO_DEVICE</div></div><div =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, =
0, 0);" class=3D"">After the appearance the command "uhd_find_devices" =
returns wrong answers. The serial number is no longer returned =
completely or no device is found at all.&nbsp;After a restart it runs =
again for a few minutes and then crashes again with the error.</div><div =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">In =
band 3, everything was supposedly running relatively =
stable.&nbsp;</div><div style=3D"caret-color: rgb(0, 0, 0); color: =
rgb(0, 0, 0);" class=3D""><br class=3D""></div><div style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">Unfortunately, due to =
Corona, I am not at the university in the lab every day, but I plan to =
be there in the next few days.</div><div style=3D"caret-color: rgb(0, 0, =
0); color: rgb(0, 0, 0);" class=3D"">If more information is needed, I =
will submit it when I am on site. Currently running a version of Ubuntu =
18 as operating system. UHD is installed in version 3.15.</div><div =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></div><div class=3D""><font color=3D"#000000" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0);" class=3D"">Has anyone had this =
problem before, or could kindly help me?</span></font></div><div =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, =
0, 0);" class=3D"">Greetings Philipp</div></body></html>=

--Apple-Mail=_8E1D58C2-700A-4E1F-A29A-D7CFEC8EA656--


--===============1579089198893348616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1579089198893348616==--

