Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2135E85A9A8
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 18:15:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65029380BC1
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 12:15:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708362916; bh=zZBSXsCL9zfHT00VFXsJ14juYU9yzVaYa9DsywOX9ho=;
	h=To:Date:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=PD/OW4akxRMik4mUG28M0p0zexBZsibx8d0KHE4UE89sqnj6iHTZ9AWHFjqgl3NSb
	 a2GOfkIix7b3o+tz5qOEj3pRPExSqTwQuuz5orjlAX3XCFOimIr/JVM0WZB8EVyd3b
	 8rDg9IYnKByfkv6Cl0gxetZWXl8eO851fT0+Ssp7aLADhmzJHjbqY8iScQoct9vfYv
	 5xzmADfX6Z00NMMgYCJXZ6LY0CF1LZWWfIriemYtePpXG/rXHyVNeRtHR6/t2clmj5
	 a4bfppkIMh56bE3MSdq/VP/jMsEWEc05jCtZ7UoK/Ryq960VNWNG27Tg/c8OhVHyhZ
	 5qoWCixWjsQJA==
Received: from qs51p00im-qukt01071902.me.com (qs51p00im-qukt01071902.me.com [17.57.155.9])
	by mm2.emwd.com (Postfix) with ESMTPS id 07BA0380BA8
	for <usrp-users@lists.ettus.com>; Mon, 19 Feb 2024 12:14:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="W+V+dBZV";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708362853; bh=EQqLtwM5N2OZe+PfA43dcNtc3FwnRb3X9yQOulhQxtM=;
	h=To:From:Subject:Date:Message-id:Content-Type:MIME-Version;
	b=W+V+dBZV4j8aqdnfs5ldXDgAf5eUohiC5pRDCDSUqZgdwkd25P93nXC+eUXgNdge8
	 OMxx1uxRZYUIvKLzMtB+CQ35kCreY9YOABoBn3CIaXzO5tJmWr0MBLz7W1sI11IW/i
	 7r5luEUz6ZTQZGAhsAl9U3b6/3MDsIz5YDwUbTW6qasxmaGgKb+3OgRAkaLoOpBU6j
	 rg8Yzx0q3RVGJYeHIhUvuBQtd/ISxm70KqQJhRaIXETd4UbvoxtjZo1BA6Cr9EgD19
	 LSofCw5H8QYQIdcZadt/pRKAEWhEGzSX8PaOPNY9MR1xOxKe2lIftH1OkEX0vmp7h2
	 1fyjJ6PSpEU1Q==
Received: from qs51p00im-qukt01071902.me.com (unknown [17.57.155.9])
	by qs51p00im-qukt01071902.me.com (Postfix) with ESMTPS id 000F05EC0298;
	Mon, 19 Feb 2024 17:14:12 +0000 (UTC)
Received: from p00-mailws2-59788ccdd8-wjnlz (qs51p00im.dlb-asmtpoutvip.me.com [10.112.113.12])
	by qs51p00im-qukt01071902.me.com (Postfix) with ESMTPSA id 857CE5EC0711;
	Mon, 19 Feb 2024 17:14:12 +0000 (UTC)
To: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Date: Mon, 19 Feb 2024 17:14:12 +0000 (UTC)
X-Mailer: iCloud MailClientcurrent MailServer2409B72.10000-master-0-9980a4f196b0
Message-id: <f1015d0b-f38d-4e14-ab72-364e35f16db3@me.com>
MIME-Version: 1.0
In-Reply-To: <cc4c93ff-ff5b-4a6f-9572-01e0d99e4482@me.com>
References: <cc4c93ff-ff5b-4a6f-9572-01e0d99e4482@me.com>
X-Proofpoint-GUID: FkIQTMFeuXlTiQtpwDwWvGabC41_GcvJ
X-Proofpoint-ORIG-GUID: FkIQTMFeuXlTiQtpwDwWvGabC41_GcvJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-19_14,2024-02-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 mlxlogscore=999 adultscore=0
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402190129
Message-ID-Hash: 3DTJENIU3OWYL3ORS23CK4PO4KBPTWQ4
X-Message-ID-Hash: 3DTJENIU3OWYL3ORS23CK4PO4KBPTWQ4
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Running_uhd_4=2E1_and_still_having_the_issue?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3DTJENIU3OWYL3ORS23CK4PO4KBPTWQ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============7221634852509721608=="


--===============7221634852509721608==
Content-Type: multipart/alternative; boundary=Apple-Webmail-42--9a4a181f-b055-4ee8-831b-3246079a23f8


--Apple-Webmail-42--9a4a181f-b055-4ee8-831b-3246079a23f8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
    charset=utf-8;
    format=flowed

I installed SDR Angel (which claims to support USRP devices), on my M1 Mac=
book to test and see if it could see the B205mini-i. No luck. j On Feb 19,=
 2024, at 9:01 AM, Jim Grubb via USRP-users <usrp-users@lists.ettus.com> w=
rote: jim@pop-os:~$ lsusb Bus 004 Device 001: ID 1d6b:0003 Linux Foundatio=
n 3.0 root hub Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root =
hub Bus 002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub Bus 00=
2 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub Bus 001 Device 01=
3: ID 2500:0022 Ettus Research LLC USRP B205-mini Bus 001 Device 011: ID 8=
087:0033 Intel Corp. Bus 001 Device 007: ID 0db0:6c09 Micro Star Internati=
onal USB Audio Bus 001 Device 010: ID 0db0:6a05 Micro Star International M=
EG Core Liquid S360 Bus 001 Device 009: ID 0db0:9ba6 Micro Star Internatio=
nal USB HID Bus 001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub Bus 0=
01 Device 003: ID 1462:7d89 Micro Star International MYSTIC LIGHT Bus 001 =
Device 008: ID 3434:0100 Keychron Keychron Q1 Bus 001 Device 006: ID 046d:=
c05a Logitech, Inc. M90/M100 Optical Mouse Bus 001 Device 004: ID 05e3:061=
0 Genesys Logic, Inc. Hub Bus 001 Device 002: ID 05e3:0610 Genesys Logic, =
Inc. Hub Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub ji=
m@pop-os:~$ uhd_find_devices [INFO] [UHD] linux; GNU C++ version 11.2.0; B=
oost_107400; UHD_4.1.0.5-3 [INFO] [B200] Loading firmware image: /usr/shar=
e/uhd/images/usrp_b200_fw.hex... -----------------------------------------=
--------- -- UHD Device 0 ------------------------------------------------=
-- Device Address: serial: 3293561 name: B205i product: B205mini type: b20=
0 jim@pop-os:~$ uhd_usrp_probe [INFO] [UHD] linux; GNU C++ version 11.2.0;=
 Boost_107400; UHD_4.1.0.5-3 [INFO] [B200] Detected Device: B205mini [INFO=
] [B200] Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin.=
.. [INFO] [B200] Operating over USB 3. [ERROR] [UHD] Exception caught in s=
afe-call. in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl=
() at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66 this->peek32(0); _a=
sync_task.reset(); -> AssertionError: accum_timeout < _timeout in uint64_t=
 b200_radio_ctrl_core_impl::wait_for_ack(bool) at ./host/lib/usrp/b200/b20=
0_radio_ctrl_core.cpp:228 Error: AssertionError: accum_timeout < _timeout =
in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool) at ./host/lib/us=
rp/b200/b200_radio_ctrl_core.cpp:228 jim@pop-os:~$ lsusb Bus 004 Device 00=
1: ID 1d6b:0003 Linux Foundation 3.0 root hub Bus 003 Device 001: ID 1d6b:=
0002 Linux Foundation 2.0 root hub Bus 002 Device 003: ID 2500:0022 Ettus =
Research LLC USRP B205-mini Bus 002 Device 002: ID 05e3:0625 Genesys Logic=
, Inc. USB3.2 Hub Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 ro=
ot hub Bus 001 Device 011: ID 8087:0033 Intel Corp. Bus 001 Device 007: ID=
 0db0:6c09 Micro Star International USB Audio Bus 001 Device 010: ID 0db0:=
6a05 Micro Star International MEG Core Liquid S360 Bus 001 Device 009: ID =
0db0:9ba6 Micro Star International USB HID Bus 001 Device 005: ID 05e3:060=
8 Genesys Logic, Inc. Hub Bus 001 Device 003: ID 1462:7d89 Micro Star Inte=
rnational MYSTIC LIGHT Bus 001 Device 008: ID 3434:0100 Keychron Keychron =
Q1 Bus 001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse =
Bus 001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub Bus 001 Device 00=
2: ID 05e3:0610 Genesys Logic, Inc. Hub Bus 001 Device 001: ID 1d6b:0002 L=
inux Foundation 2.0 root hub Sent from iCloud On Feb 19, 2024, at 8:51 AM,=
 Marcus D. Leech <patchvonbraun@gmail.com> wrote: On 19/02/2024 11:27, Jim=
 Grubb wrote: Unfortunately, the new Y cable did not resolve the issue. I=E2=
=80=99m not sure what else to try. Could you share the output of: lsusb Wi=
th us? Just working on a hunch. Thanks, j On Feb 18, 2024, at 6:36 AM, Mar=
cus D. Leech <patchvonbraun@gmail.com> wrote: On 18/02/2024 00:04, Jim Gru=
bb wrote: One other datapoint. I have a separate machine, intel NUC runnin=
g dragonOS which comes with gnu radio pre-installed with uhd drivers. I=E2=
=80=99m getting the same result on that machine as well. It is also using =
4.1 j This may still be a power issue. Once you've tried the "Y" cable, if=
 it still doesn't work then we might be dealing with broken hardware. On F=
eb 17, 2024, at 6:57 PM, Marcus D. Leech <patchvonbraun@gmail.com> wrote: =
On 17/02/2024 21:44, Jim Grubb wrote: I was able to get UHD 4.1.0.5-3 inst=
alled after removing the ppa. Unfortunately I'm still running into a probl=
em. Any ideas would be appreciated. Thanks j jim@ pop-os:/usr/lib/uhd/util=
s $ uhd_find_devices [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107=
400; UHD_4.1.0.5-3 -------------------------------------------------- -- U=
HD Device 0 -------------------------------------------------- Device Addr=
ess: serial: 3293561 name: B205i product: B205mini type: b200 jim@ pop-os:=
/usr/lib/uhd/utils $ uhd_usrp_probe [INFO] [UHD] linux; GNU C++ version 11=
.2.0; Boost_107400; UHD_4.1.0.5-3 [INFO] [B200] Detected Device: B205mini =
[INFO] [B200] Operating over USB 3. [ERROR] [UHD] Exception caught in safe=
-call. in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl() =
at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66 this->peek32(0); _asyn=
c_task.reset(); -> AssertionError: accum_timeout < _timeout in uint64_t b2=
00_radio_ctrl_core_impl::wait_for_ack(bool) at ./host/lib/usrp/b200/b200_r=
adio_ctrl_core.cpp:228 Error: AssertionError: accum_timeout < _timeout in =
uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool) at ./host/lib/usrp/=
b200/b200_radio_ctrl_core.cpp:228 The other thing that just occurred to me=
 is that your host controller may not be supplying enough power. This shou=
ld "never" happen these days, but you might try using one of those "Y" USB=
 cables that can provide extra power from another USB port to a downstream=
 device. _______________________________________________ USRP-users mailin=
g list -- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-=
users-leave@lists.ettus.com ______________________________________________=
_ USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe sen=
d an email to usrp-users-leave@lists.ettus.com
--Apple-Webmail-42--9a4a181f-b055-4ee8-831b-3246079a23f8
Content-Type: multipart/related;
    type="text/html";
    boundary=Apple-Webmail-86--9a4a181f-b055-4ee8-831b-3246079a23f8


--Apple-Webmail-86--9a4a181f-b055-4ee8-831b-3246079a23f8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
    charset=utf-8;

<html><body><div><div><div>I installed SDR Angel (which claims to support USRP devices=
), on my M1 Macbook to test and see if it could see the B205mini-i.&nbsp; =
No luck.<br></div><div>j<br></div><div><br></div></div><blockquote type=3D=
"cite"><div>On Feb 19, 2024, at 9:01 AM, Jim Grubb via USRP-users &lt;usrp=
-users@lists.ettus.com&gt; wrote:<br></div><div><br></div><div><br></div><=
div><div><div><div><span class=3D"font" style=3D"font-family: courier new,=
monospace, sans-serif;">jim@pop-os:~$ lsusb</span><br></div></div></div><d=
iv><span class=3D"font" style=3D"font-family: courier new,monospace, sans-=
serif;">Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</sp=
an><br></div><div><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;">Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2=
.0 root hub</span><br></div><div><span class=3D"font" style=3D"font-family=
: courier new,monospace, sans-serif;">Bus 002 Device 002: ID 05e3:0625 Gen=
esys Logic, Inc. USB3.2 Hub</span><br></div><div><span class=3D"font" styl=
e=3D"font-family: courier new,monospace, sans-serif;">Bus 002 Device 001: =
ID 1d6b:0003 Linux Foundation 3.0 root hub</span><br></div><div><span clas=
s=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">Bus 0=
01 Device 013: ID 2500:0022 Ettus Research LLC USRP B205-mini</span><br></=
div><div><span class=3D"font" style=3D"font-family: courier new,monospace,=
 sans-serif;">Bus 001 Device 011: ID 8087:0033 Intel Corp.</span><br></div=
><div><span class=3D"font" style=3D"font-family: courier new,monospace, sa=
ns-serif;">Bus 001 Device 007: ID 0db0:6c09 Micro Star International USB A=
udio</span><br></div><div><span class=3D"font" style=3D"font-family: couri=
er new,monospace, sans-serif;">Bus 001 Device 010: ID 0db0:6a05 Micro Star=
 International MEG Core Liquid S360</span><br></div><div><span class=3D"fo=
nt" style=3D"font-family: courier new,monospace, sans-serif;">Bus 001 Devi=
ce 009: ID 0db0:9ba6 Micro Star International USB HID</span><br></div><div=
><span class=3D"font" style=3D"font-family: courier new,monospace, sans-se=
rif;">Bus 001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub</span><br><=
/div><div><span class=3D"font" style=3D"font-family: courier new,monospace=
, sans-serif;">Bus 001 Device 003: ID 1462:7d89 Micro Star International M=
YSTIC LIGHT</span><br></div><div><span class=3D"font" style=3D"font-family=
: courier new,monospace, sans-serif;">Bus 001 Device 008: ID 3434:0100 Key=
chron Keychron Q1</span><br></div><div><span class=3D"font" style=3D"font-=
family: courier new,monospace, sans-serif;">Bus 001 Device 006: ID 046d:c0=
5a Logitech, Inc. M90/M100 Optical Mouse</span><br></div><div><span class=3D=
"font" style=3D"font-family: courier new,monospace, sans-serif;">Bus 001 D=
evice 004: ID 05e3:0610 Genesys Logic, Inc. Hub</span><br></div><div><span=
 class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">=
Bus 001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub</span><br></div><=
div><span class=3D"font" style=3D"font-family: courier new,monospace, sans=
-serif;">Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</s=
pan><br></div><div><span class=3D"font" style=3D"font-family: courier new,=
monospace, sans-serif;">jim@pop-os:~$ uhd_find_devices</span><br></div><di=
v><span class=3D"font" style=3D"font-family: courier new,monospace, sans-s=
erif;">[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0=
.5-3</span><br></div><div><span class=3D"font" style=3D"font-family: couri=
er new,monospace, sans-serif;">[INFO] [B200] Loading firmware image: /usr/=
share/uhd/images/usrp_b200_fw.hex...</span><br></div><div><span class=3D"f=
ont" style=3D"font-family: courier new,monospace, sans-serif;">-----------=
---------------------------------------</span><br></div><div><span class=3D=
"font" style=3D"font-family: courier new,monospace, sans-serif;">-- UHD De=
vice 0</span><br></div><div><span class=3D"font" style=3D"font-family: cou=
rier new,monospace, sans-serif;">-----------------------------------------=
---------</span><br></div><div><span class=3D"font" style=3D"font-family: =
courier new,monospace, sans-serif;">Device Address:</span><br></div><div><=
span class=3D"font" style=3D"font-family: courier new,monospace, sans-seri=
f;">&nbsp;&nbsp;&nbsp; serial: 3293561</span><br></div><div><span class=3D=
"font" style=3D"font-family: courier new,monospace, sans-serif;">&nbsp;&nb=
sp;&nbsp; name: B205i</span><br></div><div><span class=3D"font" style=3D"f=
ont-family: courier new,monospace, sans-serif;">&nbsp;&nbsp;&nbsp; product=
: B205mini</span><br></div><div><span class=3D"font" style=3D"font-family:=
 courier new,monospace, sans-serif;">&nbsp;&nbsp;&nbsp; type: b200</span><=
br></div><div><span class=3D"font" style=3D"font-family: courier new,monos=
pace, sans-serif;"></span><br></div><div><span class=3D"font" style=3D"fon=
t-family: courier new,monospace, sans-serif;"></span><br></div><div><span =
class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">j=
im@pop-os:~$ uhd_usrp_probe</span><br></div><div><span class=3D"font" styl=
e=3D"font-family: courier new,monospace, sans-serif;">[INFO] [UHD] linux; =
GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-3</span><br></div><div><=
span class=3D"font" style=3D"font-family: courier new,monospace, sans-seri=
f;">[INFO] [B200] Detected Device: B205mini</span><br></div><div><span cla=
ss=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">[INF=
O] [B200] Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin=
...</span><br></div><div><span class=3D"font" style=3D"font-family: courie=
r new,monospace, sans-serif;">[INFO] [B200] Operating over USB 3.</span><b=
r></div><div><span class=3D"font" style=3D"font-family: courier new,monosp=
ace, sans-serif;">[ERROR] [UHD] Exception caught in safe-call.</span><br><=
/div><div><span class=3D"font" style=3D"font-family: courier new,monospace=
, sans-serif;">&nbsp; in virtual b200_radio_ctrl_core_impl::~b200_radio_ct=
rl_core_impl()</span><br></div><div><span class=3D"font" style=3D"font-fam=
ily: courier new,monospace, sans-serif;">&nbsp; at ./host/lib/usrp/b200/b2=
00_radio_ctrl_core.cpp:66</span><br></div><div><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;">this-&gt;peek32(0); _asy=
nc_task.reset(); -&gt; AssertionError: accum_timeout &lt; _timeout</span><=
br></div><div><span class=3D"font" style=3D"font-family: courier new,monos=
pace, sans-serif;">&nbsp; in uint64_t b200_radio_ctrl_core_impl::wait_for_=
ack(bool)</span><br></div><div><span class=3D"font" style=3D"font-family: =
courier new,monospace, sans-serif;">&nbsp; at ./host/lib/usrp/b200/b200_ra=
dio_ctrl_core.cpp:228</span><br></div><div><span class=3D"font" style=3D"f=
ont-family: courier new,monospace, sans-serif;"></span><br></div><div><spa=
n class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;"=
>Error: AssertionError: accum_timeout &lt; _timeout</span><br></div><div><=
span class=3D"font" style=3D"font-family: courier new,monospace, sans-seri=
f;">&nbsp; in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)</span=
><br></div><div><span class=3D"font" style=3D"font-family: courier new,mon=
ospace, sans-serif;">&nbsp; at ./host/lib/usrp/b200/b200_radio_ctrl_core.c=
pp:228</span><br></div><div><span class=3D"font" style=3D"font-family: cou=
rier new,monospace, sans-serif;"></span><br></div><div><span class=3D"font=
" style=3D"font-family: courier new,monospace, sans-serif;">jim@pop-os:~$ =
lsusb</span><br></div><div><span class=3D"font" style=3D"font-family: cour=
ier new,monospace, sans-serif;">Bus 004 Device 001: ID 1d6b:0003 Linux Fou=
ndation 3.0 root hub</span><br></div><div><span class=3D"font" style=3D"fo=
nt-family: courier new,monospace, sans-serif;">Bus 003 Device 001: ID 1d6b=
:0002 Linux Foundation 2.0 root hub</span><br></div><div><span class=3D"fo=
nt" style=3D"font-family: courier new,monospace, sans-serif;">Bus 002 Devi=
ce 003: ID 2500:0022 Ettus Research LLC USRP B205-mini</span><br></div><di=
v><span class=3D"font" style=3D"font-family: courier new,monospace, sans-s=
erif;">Bus 002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub</sp=
an><br></div><div><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;">Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3=
.0 root hub</span><br></div><div><span class=3D"font" style=3D"font-family=
: courier new,monospace, sans-serif;">Bus 001 Device 011: ID 8087:0033 Int=
el Corp.</span><br></div><div><span class=3D"font" style=3D"font-family: c=
ourier new,monospace, sans-serif;">Bus 001 Device 007: ID 0db0:6c09 Micro =
Star International USB Audio</span><br></div><div><span class=3D"font" sty=
le=3D"font-family: courier new,monospace, sans-serif;">Bus 001 Device 010:=
 ID 0db0:6a05 Micro Star International MEG Core Liquid S360</span><br></di=
v><div><span class=3D"font" style=3D"font-family: courier new,monospace, s=
ans-serif;">Bus 001 Device 009: ID 0db0:9ba6 Micro Star International USB =
HID</span><br></div><div><span class=3D"font" style=3D"font-family: courie=
r new,monospace, sans-serif;">Bus 001 Device 005: ID 05e3:0608 Genesys Log=
ic, Inc. Hub</span><br></div><div><span class=3D"font" style=3D"font-famil=
y: courier new,monospace, sans-serif;">Bus 001 Device 003: ID 1462:7d89 Mi=
cro Star International MYSTIC LIGHT</span><br></div><div><span class=3D"fo=
nt" style=3D"font-family: courier new,monospace, sans-serif;">Bus 001 Devi=
ce 008: ID 3434:0100 Keychron Keychron Q1</span><br></div><div><span class=
=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">Bus 00=
1 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse</span><br=
></div><div><span class=3D"font" style=3D"font-family: courier new,monospa=
ce, sans-serif;">Bus 001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub<=
/span><br></div><div><span class=3D"font" style=3D"font-family: courier ne=
w,monospace, sans-serif;">Bus 001 Device 002: ID 05e3:0610 Genesys Logic, =
Inc. Hub</span><br></div><div><span class=3D"font" style=3D"font-family: c=
ourier new,monospace, sans-serif;">Bus 001 Device 001: ID 1d6b:0002 Linux =
Foundation 2.0 root hub</span><br></div><div><br></div><div><div><div clas=
s=3D"x-apple-signature" style=3D"white-space: pre-wrap">Sent from iCloud<b=
r></div></div><div><br></div><blockquote type=3D"cite"><div>On Feb 19, 202=
4, at 8:51 AM, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:<br><=
/div><div><br></div><div><br></div><div><div class=3D"moz-cite-prefix">On =
19/02/2024 11:27, Jim Grubb wrote:<br></div><blockquote type=3D"cite">Unfo=
rtunately, the new Y cable did not resolve the issue. &nbsp;I=E2=80=99m no=
t=0A      sure what else to try.<br></blockquote><div>Could you share the =
output of:<br></div><div><br></div><div>lsusb<br></div><div><br></div><div=
>With us?<br></div><div><br></div><div>Just working on a hunch.<br></div><=
div><br></div><div><br></div><div><br></div><blockquote type=3D"cite"><div=
><br></div><div>Thanks,<br></div><div><div>j<br></div><div><br></div><div>=
<div><br></div><blockquote type=3D"cite"><div>On Feb 18, 2024, at 6:36=E2=80=
=AFAM, Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:p=
atchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br></di=
v><div><br></div><div><div><div class=3D"moz-cite-prefix">On 18/02/2024 00=
:04, Jim=0A                  Grubb wrote:<br></div><blockquote type=3D"cit=
e"><div>One other datapoint. &nbsp;I have a separate machine, intel=0A    =
              NUC running dragonOS which comes with gnu radio=0A          =
        pre-installed with uhd drivers. &nbsp;I=E2=80=99m getting the same=
=0A                  result on that machine as well. &nbsp;It is also usin=
g 4.1 <br></div><div>j<br></div></blockquote><div>This may still be a powe=
r issue.&nbsp; Once you've tried the=0A                "Y" cable, if it st=
ill doesn't work then we might be=0A                dealing with<br></div>=
<div>&nbsp; broken hardware.<br></div><div><br></div><div><br></div><div><=
br></div><blockquote type=3D"cite"><div><div><div><br></div><blockquote ty=
pe=3D"cite"><div>On Feb 17, 2024, at 6:57=E2=80=AFPM, Marcus D.=0A        =
                  Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:=
patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br></d=
iv><div><br></div><div><div><div class=3D"moz-cite-prefix">On 17/02/2024=0A=
                              21:44, Jim Grubb wrote:<br></div><blockquote=
 type=3D"cite"><div><span class=3D"font" style=3D"font-family:Monaco">I wa=
s able to get=0A                                  UHD 4.1.0.5-3 installed =
after removing=0A                                  the ppa. &nbsp;Unfortun=
ately I'm still=0A                                  running into a problem=
.</span><br></div><div><span class=3D"font" style=3D"font-family:Monaco"><=
/span><br></div><div><span class=3D"font" style=3D"font-family:Monaco">Any=
 ideas would=0A                                  be&nbsp;appreciated.</spa=
n><br></div><div><span class=3D"font" style=3D"font-family:Monaco">Thanks<=
/span><br></div><div><span class=3D"font" style=3D"font-family:Monaco">j</=
span><br></div><div><span class=3D"font" style=3D"font-family:Monaco"></sp=
an><br></div><div><div><span class=3D"font" style=3D"font-family:Monaco">j=
im@<a href=3D"http://pop-os:/usr/lib/uhd/utils" rel=3D"noopener noreferrer=
">pop-os:/usr/lib/uhd/utils</a>$=0A                                    uhd=
_find_devices</span><br></div><div><span class=3D"font" style=3D"font-fami=
ly:Monaco">[INFO] [UHD]=0A                                    linux; GNU C=
++ version 11.2.0;=0A                                    Boost_107400; UHD=
_4.1.0.5-3</span><br></div><div><span class=3D"font" style=3D"font-family:=
Monaco">--------------------------------------------------</span><br></div=
><div><span class=3D"font" style=3D"font-family:Monaco">-- UHD Device 0</s=
pan><br></div><div><span class=3D"font" style=3D"font-family:Monaco">-----=
---------------------------------------------</span><br></div><div><span c=
lass=3D"font" style=3D"font-family:Monaco">Device Address:</span><br></div=
><div><span class=3D"font" style=3D"font-family:Monaco">&nbsp; &nbsp; seri=
al:=0A                                    3293561</span><br></div><div><sp=
an class=3D"font" style=3D"font-family:Monaco">&nbsp; &nbsp; name: B205i</=
span><br></div><div><span class=3D"font" style=3D"font-family:Monaco">&nbs=
p; &nbsp; product:=0A                                    B205mini</span><b=
r></div><div><span class=3D"font" style=3D"font-family:Monaco">&nbsp; &nbs=
p; type: b200</span><br></div><div><span class=3D"font" style=3D"font-fami=
ly:Monaco"></span><br></div><div><span class=3D"font" style=3D"font-family=
:Monaco"></span><br></div><div><span class=3D"font" style=3D"font-family:M=
onaco">jim@<a href=3D"http://pop-os:/usr/lib/uhd/utils" rel=3D"noopener no=
referrer">pop-os:/usr/lib/uhd/utils</a>$=0A                               =
     uhd_usrp_probe</span><br></div><div><span class=3D"font" style=3D"fon=
t-family:Monaco">[INFO] [UHD]=0A                                    linux;=
 GNU C++ version 11.2.0;=0A                                    Boost_10740=
0; UHD_4.1.0.5-3</span><br></div><div><span class=3D"font" style=3D"font-f=
amily:Monaco">[INFO] [B200]=0A                                    Detected=
 Device: B205mini</span><br></div><div><span class=3D"font" style=3D"font-=
family:Monaco">[INFO] [B200]=0A                                    Operati=
ng over USB 3.</span><br></div><div><span class=3D"font" style=3D"font-fam=
ily:Monaco">[ERROR] [UHD]=0A                                    Exception =
caught in safe-call.</span><br></div><div><span class=3D"font" style=3D"fo=
nt-family:Monaco">&nbsp; in virtual=0A                                    =
b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()</span><br></div><d=
iv><span class=3D"font" style=3D"font-family:Monaco">&nbsp; at=0A         =
                           ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:6=
6</span><br></div><div><span class=3D"font" style=3D"font-family:Monaco">t=
his-&gt;peek32(0);=0A                                    _async_task.reset=
(); -&gt;=0A                                    AssertionError: accum_time=
out &lt;=0A                                    _timeout</span><br></div><d=
iv><span class=3D"font" style=3D"font-family:Monaco">&nbsp; in uint64_t=0A=
                                    b200_radio_ctrl_core_impl::wait_for_ac=
k(bool)</span><br></div><div><span class=3D"font" style=3D"font-family:Mon=
aco">&nbsp; at=0A                                    ./host/lib/usrp/b200/=
b200_radio_ctrl_core.cpp:228</span><br></div><div><span class=3D"font" sty=
le=3D"font-family:Monaco"></span><br></div><div><span class=3D"font" style=
=3D"font-family:Monaco">Error:=0A                                    Asser=
tionError: accum_timeout &lt;=0A                                    _timeo=
ut</span><br></div><div><span class=3D"font" style=3D"font-family:Monaco">=
&nbsp; in uint64_t=0A                                    b200_radio_ctrl_c=
ore_impl::wait_for_ack(bool)</span><br></div><div><span class=3D"font" sty=
le=3D"font-family:Monaco">&nbsp; at=0A                                    =
./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</span><br></div></div><d=
iv><br></div><div><br></div></blockquote><div>The other thing that just oc=
curred to me is=0A                            that your host controller ma=
y not be=0A                            supplying enough power.&nbsp; This =
should "never"<br></div><div>&nbsp; happen these days, but you might try u=
sing=0A                            one of those "Y" USB cables that can pr=
ovide=0A                            extra power from another USB port<br><=
/div><div>&nbsp; to a downstream device.<br></div><div><br></div><div><br>=
</div><div><br></div></div><div>__________________________________________=
_____<br></div><div>USRP-users mailing list -- <a class=3D"moz-txt-link-ab=
breviated moz-txt-link-freetext" href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a><br></div><div>To unsubscribe send an emai=
l to <a class=3D"moz-txt-link-abbreviated moz-txt-link-freetext" href=3D"m=
ailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</=
a><br></div></div></blockquote></div></div></blockquote></div></div></bloc=
kquote></div></div></blockquote></div></blockquote></div><div><br></div><d=
iv><div>_______________________________________________<br></div><div>USRP=
-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a><br></div><div>To unsubscribe send an email to <a=
 href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.e=
ttus.com</a><br></div></div></div></blockquote></div><div><br></div></body></html>
--Apple-Webmail-86--9a4a181f-b055-4ee8-831b-3246079a23f8--

--Apple-Webmail-42--9a4a181f-b055-4ee8-831b-3246079a23f8--

--===============7221634852509721608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7221634852509721608==--
