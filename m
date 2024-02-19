Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C24285A97D
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 18:01:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB7FC380BF7
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 12:01:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708362102; bh=ZNpyDLUS6bBp/2fRqfV1cuaHMWMOarnD3xpBF6ko7Fc=;
	h=To:Date:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=wWaZ7BW9m42eg8GI0sO4szEf5U2qjL3as87uZ1mHHDQLx6Q5KOBbUVfG5PL1/UlsG
	 mmJIo/huV69E9L4zMKsBw0+MGVLohioiT7e+0dWClt6SQNvtJgd+QrlTeHRtDuwrgL
	 Qxe8eP0tpPZUPKCuv+T7kv54+dlQum+U6ytOcrGTU25QSO1zkvfqGGnA/Giw/SBtIM
	 5egtaym+GV0FhCk8IXTbcaBpoLkWDpn5OwWnP71KqKsJ6DuMPpkyO8ohzIScPofKSj
	 zWb4eIp/eOr+VIokzDkb0o7B4tJNhj+I5MEcTd2TuaWjdqs8kXWzeqlCqkP2hYOfrS
	 XKZCGpHhtyi8g==
Received: from qs51p00im-qukt01072101.me.com (qs51p00im-qukt01072101.me.com [17.57.155.10])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E6BC380B7C
	for <usrp-users@lists.ettus.com>; Mon, 19 Feb 2024 12:00:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="q5px7WIz";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708362039; bh=j81I4cvcCkZJgU3mHiJyGqddN8B4Z2K8AXlkLHzZipI=;
	h=To:From:Subject:Date:Message-id:Content-Type:MIME-Version;
	b=q5px7WIzwnpWJwyaRW4PdlqlDE5DbabK4FZGA+l/ggoJypTlnjC2OqbDaT+8TGK2E
	 nZuh24z3wIhvESMogH8r83mOyaOo+rF8Pu7lkJ1n5+zjqqwqBg3YE6SefNwv49iLZa
	 zZA9J/O6QsMQofdjBIaAxnbFqRUqgUf61VP0Av8KupiA8qOPd2Nzpm6osEqH04Ghd7
	 YkkcOQQMoXuPpPN6USjaZwPhJ6RVQC6OYe8YfNK7txMCc2I8l+Nh4/IhF+2EPYIdSq
	 OnccH5SKuzOciwsFo7TT1vM+F0snTKmor5z1kYphw/2MYe385YJjSJPhqJeejkMi7y
	 G7ep/b5Vw0HAg==
Received: from qs51p00im-qukt01072101.me.com (unknown [17.57.155.10])
	by qs51p00im-qukt01072101.me.com (Postfix) with ESMTPS id 6FB28404F0;
	Mon, 19 Feb 2024 17:00:38 +0000 (UTC)
Received: from p00-mailws2-59788ccdd8-gzrx4 (qs51p00im.dlb-asmtpoutvip.me.com [10.112.113.12])
	by qs51p00im-qukt01072101.me.com (Postfix) with ESMTPSA id 13B73405AB;
	Mon, 19 Feb 2024 17:00:38 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Mon, 19 Feb 2024 17:00:38 +0000 (UTC)
X-Mailer: iCloud MailClientcurrent MailServer2409B72.10000-master-0-9980a4f196b0
Message-id: <cc4c93ff-ff5b-4a6f-9572-01e0d99e4482@me.com>
MIME-Version: 1.0
In-Reply-To: <3e087895-b2fb-41e2-91e2-6861516101e0@gmail.com>
References: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
 <cab295b9-3b63-4cf0-a8c6-96f1c7bf7a27@gmail.com>
 <164C83CE-6546-4971-ACFA-B79657294389@me.com>
 <4e44e92f-23ff-470c-9d23-0a4329513dc9@gmail.com>
 <B27745C3-863A-4BC9-91E6-0AB46965E8C0@me.com>
 <3e087895-b2fb-41e2-91e2-6861516101e0@gmail.com>
X-Proofpoint-ORIG-GUID: VYczPCW8S38EWe2uwxicIWUZ49NKX8t5
X-Proofpoint-GUID: VYczPCW8S38EWe2uwxicIWUZ49NKX8t5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-19_14,2024-02-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402190127
Message-ID-Hash: MOGTSY3BZS7P4TT3F4PUAC3NLHT2K5J6
X-Message-ID-Hash: MOGTSY3BZS7P4TT3F4PUAC3NLHT2K5J6
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MOGTSY3BZS7P4TT3F4PUAC3NLHT2K5J6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============3134887857072720218=="


--===============3134887857072720218==
Content-Type: multipart/alternative; boundary=Apple-Webmail-42--312d98e2-87f6-4abd-8f85-4e75e6560613


--Apple-Webmail-42--312d98e2-87f6-4abd-8f85-4e75e6560613
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
    charset=utf-8;
    format=flowed

jim@pop-os:~$ lsusb Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 =
root hub Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub Bu=
s 002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub Bus 002 Devi=
ce 001: ID 1d6b:0003 Linux Foundation 3.0 root hub Bus 001 Device 013: ID =
2500:0022 Ettus Research LLC USRP B205-mini Bus 001 Device 011: ID 8087:00=
33 Intel Corp. Bus 001 Device 007: ID 0db0:6c09 Micro Star International U=
SB Audio Bus 001 Device 010: ID 0db0:6a05 Micro Star International MEG Cor=
e Liquid S360 Bus 001 Device 009: ID 0db0:9ba6 Micro Star International US=
B HID Bus 001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub Bus 001 Dev=
ice 003: ID 1462:7d89 Micro Star International MYSTIC LIGHT Bus 001 Device=
 008: ID 3434:0100 Keychron Keychron Q1 Bus 001 Device 006: ID 046d:c05a L=
ogitech, Inc. M90/M100 Optical Mouse Bus 001 Device 004: ID 05e3:0610 Gene=
sys Logic, Inc. Hub Bus 001 Device 002: ID 05e3:0610 Genesys Logic, Inc. H=
ub Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub jim@pop-=
os:~$ uhd_find_devices [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_1=
07400; UHD_4.1.0.5-3 [INFO] [B200] Loading firmware image: /usr/share/uhd/=
images/usrp_b200_fw.hex... -----------------------------------------------=
--- -- UHD Device 0 -------------------------------------------------- Dev=
ice Address: serial: 3293561 name: B205i product: B205mini type: b200 jim@=
pop-os:~$ uhd_usrp_probe [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost=
_107400; UHD_4.1.0.5-3 [INFO] [B200] Detected Device: B205mini [INFO] [B20=
0] Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin... [IN=
FO] [B200] Operating over USB 3. [ERROR] [UHD] Exception caught in safe-ca=
ll. in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl() at =
./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66 this->peek32(0); _async_t=
ask.reset(); -> AssertionError: accum_timeout < _timeout in uint64_t b200_=
radio_ctrl_core_impl::wait_for_ack(bool) at ./host/lib/usrp/b200/b200_radi=
o_ctrl_core.cpp:228 Error: AssertionError: accum_timeout < _timeout in uin=
t64_t b200_radio_ctrl_core_impl::wait_for_ack(bool) at ./host/lib/usrp/b20=
0/b200_radio_ctrl_core.cpp:228 jim@pop-os:~$ lsusb Bus 004 Device 001: ID =
1d6b:0003 Linux Foundation 3.0 root hub Bus 003 Device 001: ID 1d6b:0002 L=
inux Foundation 2.0 root hub Bus 002 Device 003: ID 2500:0022 Ettus Resear=
ch LLC USRP B205-mini Bus 002 Device 002: ID 05e3:0625 Genesys Logic, Inc.=
 USB3.2 Hub Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub=
 Bus 001 Device 011: ID 8087:0033 Intel Corp. Bus 001 Device 007: ID 0db0:=
6c09 Micro Star International USB Audio Bus 001 Device 010: ID 0db0:6a05 M=
icro Star International MEG Core Liquid S360 Bus 001 Device 009: ID 0db0:9=
ba6 Micro Star International USB HID Bus 001 Device 005: ID 05e3:0608 Gene=
sys Logic, Inc. Hub Bus 001 Device 003: ID 1462:7d89 Micro Star Internatio=
nal MYSTIC LIGHT Bus 001 Device 008: ID 3434:0100 Keychron Keychron Q1 Bus=
 001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse Bus 00=
1 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub Bus 001 Device 002: ID =
05e3:0610 Genesys Logic, Inc. Hub Bus 001 Device 001: ID 1d6b:0002 Linux F=
oundation 2.0 root hub Sent from iCloud On Feb 19, 2024, at 8:51 AM, Marcu=
s D. Leech <patchvonbraun@gmail.com> wrote: On 19/02/2024 11:27, Jim Grubb=
 wrote: Unfortunately, the new Y cable did not resolve the issue. I=E2=80=99=
m not sure what else to try. Could you share the output of: lsusb With us?=
 Just working on a hunch. Thanks, j On Feb 18, 2024, at 6:36 AM, Marcus D.=
 Leech <patchvonbraun@gmail.com> wrote: On 18/02/2024 00:04, Jim Grubb wro=
te: One other datapoint. I have a separate machine, intel NUC running drag=
onOS which comes with gnu radio pre-installed with uhd drivers. I=E2=80=99=
m getting the same result on that machine as well. It is also using 4.1 j =
This may still be a power issue. Once you've tried the "Y" cable, if it st=
ill doesn't work then we might be dealing with broken hardware. On Feb 17,=
 2024, at 6:57 PM, Marcus D. Leech <patchvonbraun@gmail.com> wrote: On 17/=
02/2024 21:44, Jim Grubb wrote: I was able to get UHD 4.1.0.5-3 installed =
after removing the ppa. Unfortunately I'm still running into a problem. An=
y ideas would be appreciated. Thanks j jim@ pop-os:/usr/lib/uhd/utils $ uh=
d_find_devices [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; U=
HD_4.1.0.5-3 -------------------------------------------------- -- UHD Dev=
ice 0 -------------------------------------------------- Device Address: s=
erial: 3293561 name: B205i product: B205mini type: b200 jim@ pop-os:/usr/l=
ib/uhd/utils $ uhd_usrp_probe [INFO] [UHD] linux; GNU C++ version 11.2.0; =
Boost_107400; UHD_4.1.0.5-3 [INFO] [B200] Detected Device: B205mini [INFO]=
 [B200] Operating over USB 3. [ERROR] [UHD] Exception caught in safe-call.=
 in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl() at ./h=
ost/lib/usrp/b200/b200_radio_ctrl_core.cpp:66 this->peek32(0); _async_task=
.reset(); -> AssertionError: accum_timeout < _timeout in uint64_t b200_rad=
io_ctrl_core_impl::wait_for_ack(bool) at ./host/lib/usrp/b200/b200_radio_c=
trl_core.cpp:228 Error: AssertionError: accum_timeout < _timeout in uint64=
_t b200_radio_ctrl_core_impl::wait_for_ack(bool) at ./host/lib/usrp/b200/b=
200_radio_ctrl_core.cpp:228 The other thing that just occurred to me is th=
at your host controller may not be supplying enough power. This should "ne=
ver" happen these days, but you might try using one of those "Y" USB cable=
s that can provide extra power from another USB port to a downstream devic=
e. _______________________________________________ USRP-users mailing list=
 -- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-=
leave@lists.ettus.com
--Apple-Webmail-42--312d98e2-87f6-4abd-8f85-4e75e6560613
Content-Type: multipart/related;
    type="text/html";
    boundary=Apple-Webmail-86--312d98e2-87f6-4abd-8f85-4e75e6560613


--Apple-Webmail-86--312d98e2-87f6-4abd-8f85-4e75e6560613
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
    charset=utf-8;

<html><body><div><div><div><span class=3D"font" style=3D"font-family: courier new,mono=
space, sans-serif;">jim@pop-os:~$ lsusb</span><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;"><br></span></div></div><=
/div><div><span class=3D"font" style=3D"font-family: courier new,monospace=
, sans-serif;">Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root =
hub</span><span class=3D"font" style=3D"font-family: courier new,monospace=
, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"font-fa=
mily: courier new,monospace, sans-serif;">Bus 003 Device 001: ID 1d6b:0002=
 Linux Foundation 2.0 root hub</span><span class=3D"font" style=3D"font-fa=
mily: courier new,monospace, sans-serif;"><br></span></div><div><span clas=
s=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">Bus 0=
02 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub</span><span cla=
ss=3D"font" style=3D"font-family: courier new,monospace, sans-serif;"><br>=
</span></div><div><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;">Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3=
.0 root hub</span><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;">Bus 001 Device 013: ID 2=
500:0022 Ettus Research LLC USRP B205-mini</span><span class=3D"font" styl=
e=3D"font-family: courier new,monospace, sans-serif;"><br></span></div><di=
v><span class=3D"font" style=3D"font-family: courier new,monospace, sans-s=
erif;">Bus 001 Device 011: ID 8087:0033 Intel Corp.</span><span class=3D"f=
ont" style=3D"font-family: courier new,monospace, sans-serif;"><br></span>=
</div><div><span class=3D"font" style=3D"font-family: courier new,monospac=
e, sans-serif;">Bus 001 Device 007: ID 0db0:6c09 Micro Star International =
USB Audio</span><span class=3D"font" style=3D"font-family: courier new,mon=
ospace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"f=
ont-family: courier new,monospace, sans-serif;">Bus 001 Device 010: ID 0db=
0:6a05 Micro Star International MEG Core Liquid S360</span><span class=3D"=
font" style=3D"font-family: courier new,monospace, sans-serif;"><br></span=
></div><div><span class=3D"font" style=3D"font-family: courier new,monospa=
ce, sans-serif;">Bus 001 Device 009: ID 0db0:9ba6 Micro Star International=
 USB HID</span><span class=3D"font" style=3D"font-family: courier new,mono=
space, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"fo=
nt-family: courier new,monospace, sans-serif;">Bus 001 Device 005: ID 05e3=
:0608 Genesys Logic, Inc. Hub</span><span class=3D"font" style=3D"font-fam=
ily: courier new,monospace, sans-serif;"><br></span></div><div><span class=
=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">Bus 00=
1 Device 003: ID 1462:7d89 Micro Star International MYSTIC LIGHT</span><sp=
an class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;=
"><br></span></div><div><span class=3D"font" style=3D"font-family: courier=
 new,monospace, sans-serif;">Bus 001 Device 008: ID 3434:0100 Keychron Key=
chron Q1</span><span class=3D"font" style=3D"font-family: courier new,mono=
space, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"fo=
nt-family: courier new,monospace, sans-serif;">Bus 001 Device 006: ID 046d=
:c05a Logitech, Inc. M90/M100 Optical Mouse</span><span class=3D"font" sty=
le=3D"font-family: courier new,monospace, sans-serif;"><br></span></div><d=
iv><span class=3D"font" style=3D"font-family: courier new,monospace, sans-=
serif;">Bus 001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub</span><sp=
an class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;=
"><br></span></div><div><span class=3D"font" style=3D"font-family: courier=
 new,monospace, sans-serif;">Bus 001 Device 002: ID 05e3:0610 Genesys Logi=
c, Inc. Hub</span><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;">Bus 001 Device 001: ID 1=
d6b:0002 Linux Foundation 2.0 root hub</span><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;"><br></span></div><div><s=
pan class=3D"font" style=3D"font-family: courier new,monospace, sans-serif=
;">jim@pop-os:~$ uhd_find_devices</span><span class=3D"font" style=3D"font=
-family: courier new,monospace, sans-serif;"><br></span></div><div><span c=
lass=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">[I=
NFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-3</spa=
n><span class=3D"font" style=3D"font-family: courier new,monospace, sans-s=
erif;"><br></span></div><div><span class=3D"font" style=3D"font-family: co=
urier new,monospace, sans-serif;">[INFO] [B200] Loading firmware image: /u=
sr/share/uhd/images/usrp_b200_fw.hex...</span><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;"><br></span></div><div><s=
pan class=3D"font" style=3D"font-family: courier new,monospace, sans-serif=
;">--------------------------------------------------</span><span class=3D=
"font" style=3D"font-family: courier new,monospace, sans-serif;"><br></spa=
n></div><div><span class=3D"font" style=3D"font-family: courier new,monosp=
ace, sans-serif;">-- UHD Device 0</span><span class=3D"font" style=3D"font=
-family: courier new,monospace, sans-serif;"><br></span></div><div><span c=
lass=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">--=
------------------------------------------------</span><span class=3D"font=
" style=3D"font-family: courier new,monospace, sans-serif;"><br></span></d=
iv><div><span class=3D"font" style=3D"font-family: courier new,monospace, =
sans-serif;">Device Address:</span><span class=3D"font" style=3D"font-fami=
ly: courier new,monospace, sans-serif;"><br></span></div><div><span class=3D=
"font" style=3D"font-family: courier new,monospace, sans-serif;">&nbsp;&nb=
sp;&nbsp; serial: 3293561</span><span class=3D"font" style=3D"font-family:=
 courier new,monospace, sans-serif;"><br></span></div><div><span class=3D"=
font" style=3D"font-family: courier new,monospace, sans-serif;">&nbsp;&nbs=
p;&nbsp; name: B205i</span><span class=3D"font" style=3D"font-family: cour=
ier new,monospace, sans-serif;"><br></span></div><div><span class=3D"font"=
 style=3D"font-family: courier new,monospace, sans-serif;">&nbsp;&nbsp;&nb=
sp; product: B205mini</span><span class=3D"font" style=3D"font-family: cou=
rier new,monospace, sans-serif;"><br></span></div><div><span class=3D"font=
" style=3D"font-family: courier new,monospace, sans-serif;">&nbsp;&nbsp;&n=
bsp; type: b200</span><span class=3D"font" style=3D"font-family: courier n=
ew,monospace, sans-serif;"><br></span></div><div><span class=3D"font" styl=
e=3D"font-family: courier new,monospace, sans-serif;"><br></span></div><di=
v><span class=3D"font" style=3D"font-family: courier new,monospace, sans-s=
erif;"><br></span></div><div><span class=3D"font" style=3D"font-family: co=
urier new,monospace, sans-serif;">jim@pop-os:~$ uhd_usrp_probe</span><span=
 class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;">=
<br></span></div><div><span class=3D"font" style=3D"font-family: courier n=
ew,monospace, sans-serif;">[INFO] [UHD] linux; GNU C++ version 11.2.0; Boo=
st_107400; UHD_4.1.0.5-3</span><span class=3D"font" style=3D"font-family: =
courier new,monospace, sans-serif;"><br></span></div><div><span class=3D"f=
ont" style=3D"font-family: courier new,monospace, sans-serif;">[INFO] [B20=
0] Detected Device: B205mini</span><span class=3D"font" style=3D"font-fami=
ly: courier new,monospace, sans-serif;"><br></span></div><div><span class=3D=
"font" style=3D"font-family: courier new,monospace, sans-serif;">[INFO] [B=
200] Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin...</=
span><span class=3D"font" style=3D"font-family: courier new,monospace, san=
s-serif;"><br></span></div><div><span class=3D"font" style=3D"font-family:=
 courier new,monospace, sans-serif;">[INFO] [B200] Operating over USB 3.</=
span><span class=3D"font" style=3D"font-family: courier new,monospace, san=
s-serif;"><br></span></div><div><span class=3D"font" style=3D"font-family:=
 courier new,monospace, sans-serif;">[ERROR] [UHD] Exception caught in saf=
e-call.</span><span class=3D"font" style=3D"font-family: courier new,monos=
pace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"fon=
t-family: courier new,monospace, sans-serif;">&nbsp; in virtual b200_radio=
_ctrl_core_impl::~b200_radio_ctrl_core_impl()</span><span class=3D"font" s=
tyle=3D"font-family: courier new,monospace, sans-serif;"><br></span></div>=
<div><span class=3D"font" style=3D"font-family: courier new,monospace, san=
s-serif;">&nbsp; at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66</span=
><span class=3D"font" style=3D"font-family: courier new,monospace, sans-se=
rif;"><br></span></div><div><span class=3D"font" style=3D"font-family: cou=
rier new,monospace, sans-serif;">this-&gt;peek32(0); _async_task.reset(); =
-&gt; AssertionError: accum_timeout &lt; _timeout</span><span class=3D"fon=
t" style=3D"font-family: courier new,monospace, sans-serif;"><br></span></=
div><div><span class=3D"font" style=3D"font-family: courier new,monospace,=
 sans-serif;">&nbsp; in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(b=
ool)</span><span class=3D"font" style=3D"font-family: courier new,monospac=
e, sans-serif;"><br></span></div><div><span class=3D"font" style=3D"font-f=
amily: courier new,monospace, sans-serif;">&nbsp; at ./host/lib/usrp/b200/=
b200_radio_ctrl_core.cpp:228</span><span class=3D"font" style=3D"font-fami=
ly: courier new,monospace, sans-serif;"><br></span></div><div><span class=3D=
"font" style=3D"font-family: courier new,monospace, sans-serif;"><br></spa=
n></div><div><span class=3D"font" style=3D"font-family: courier new,monosp=
ace, sans-serif;">Error: AssertionError: accum_timeout &lt; _timeout</span=
><span class=3D"font" style=3D"font-family: courier new,monospace, sans-se=
rif;"><br></span></div><div><span class=3D"font" style=3D"font-family: cou=
rier new,monospace, sans-serif;">&nbsp; in uint64_t b200_radio_ctrl_core_i=
mpl::wait_for_ack(bool)</span><span class=3D"font" style=3D"font-family: c=
ourier new,monospace, sans-serif;"><br></span></div><div><span class=3D"fo=
nt" style=3D"font-family: courier new,monospace, sans-serif;">&nbsp; at ./=
host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</span><span class=3D"font"=
 style=3D"font-family: courier new,monospace, sans-serif;"><br></span></di=
v><div><span class=3D"font" style=3D"font-family: courier new,monospace, s=
ans-serif;"><br></span></div><div><span class=3D"font" style=3D"font-famil=
y: courier new,monospace, sans-serif;">jim@pop-os:~$ lsusb</span><span cla=
ss=3D"font" style=3D"font-family: courier new,monospace, sans-serif;"><br>=
</span></div><div><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;">Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3=
.0 root hub</span><span class=3D"font" style=3D"font-family: courier new,m=
onospace, sans-serif;"><br></span></div><div><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;">Bus 003 Device 001: ID 1=
d6b:0002 Linux Foundation 2.0 root hub</span><span class=3D"font" style=3D=
"font-family: courier new,monospace, sans-serif;"><br></span></div><div><s=
pan class=3D"font" style=3D"font-family: courier new,monospace, sans-serif=
;">Bus 002 Device 003: ID 2500:0022 Ettus Research LLC USRP B205-mini</spa=
n><span class=3D"font" style=3D"font-family: courier new,monospace, sans-s=
erif;"><br></span></div><div><span class=3D"font" style=3D"font-family: co=
urier new,monospace, sans-serif;">Bus 002 Device 002: ID 05e3:0625 Genesys=
 Logic, Inc. USB3.2 Hub</span><span class=3D"font" style=3D"font-family: c=
ourier new,monospace, sans-serif;"><br></span></div><div><span class=3D"fo=
nt" style=3D"font-family: courier new,monospace, sans-serif;">Bus 002 Devi=
ce 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</span><span class=3D"fo=
nt" style=3D"font-family: courier new,monospace, sans-serif;"><br></span><=
/div><div><span class=3D"font" style=3D"font-family: courier new,monospace=
, sans-serif;">Bus 001 Device 011: ID 8087:0033 Intel Corp.</span><span cl=
ass=3D"font" style=3D"font-family: courier new,monospace, sans-serif;"><br=
></span></div><div><span class=3D"font" style=3D"font-family: courier new,=
monospace, sans-serif;">Bus 001 Device 007: ID 0db0:6c09 Micro Star Intern=
ational USB Audio</span><span class=3D"font" style=3D"font-family: courier=
 new,monospace, sans-serif;"><br></span></div><div><span class=3D"font" st=
yle=3D"font-family: courier new,monospace, sans-serif;">Bus 001 Device 010=
: ID 0db0:6a05 Micro Star International MEG Core Liquid S360</span><span c=
lass=3D"font" style=3D"font-family: courier new,monospace, sans-serif;"><b=
r></span></div><div><span class=3D"font" style=3D"font-family: courier new=
,monospace, sans-serif;">Bus 001 Device 009: ID 0db0:9ba6 Micro Star Inter=
national USB HID</span><span class=3D"font" style=3D"font-family: courier =
new,monospace, sans-serif;"><br></span></div><div><span class=3D"font" sty=
le=3D"font-family: courier new,monospace, sans-serif;">Bus 001 Device 005:=
 ID 05e3:0608 Genesys Logic, Inc. Hub</span><span class=3D"font" style=3D"=
font-family: courier new,monospace, sans-serif;"><br></span></div><div><sp=
an class=3D"font" style=3D"font-family: courier new,monospace, sans-serif;=
">Bus 001 Device 003: ID 1462:7d89 Micro Star International MYSTIC LIGHT</=
span><span class=3D"font" style=3D"font-family: courier new,monospace, san=
s-serif;"><br></span></div><div><span class=3D"font" style=3D"font-family:=
 courier new,monospace, sans-serif;">Bus 001 Device 008: ID 3434:0100 Keyc=
hron Keychron Q1</span><span class=3D"font" style=3D"font-family: courier =
new,monospace, sans-serif;"><br></span></div><div><span class=3D"font" sty=
le=3D"font-family: courier new,monospace, sans-serif;">Bus 001 Device 006:=
 ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse</span><span class=3D"f=
ont" style=3D"font-family: courier new,monospace, sans-serif;"><br></span>=
</div><div><span class=3D"font" style=3D"font-family: courier new,monospac=
e, sans-serif;">Bus 001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub</=
span><span class=3D"font" style=3D"font-family: courier new,monospace, san=
s-serif;"><br></span></div><div><span class=3D"font" style=3D"font-family:=
 courier new,monospace, sans-serif;">Bus 001 Device 002: ID 05e3:0610 Gene=
sys Logic, Inc. Hub</span><span class=3D"font" style=3D"font-family: couri=
er new,monospace, sans-serif;"><br></span></div><div><span class=3D"font" =
style=3D"font-family: courier new,monospace, sans-serif;">Bus 001 Device 0=
01: ID 1d6b:0002 Linux Foundation 2.0 root hub</span><br></div><div><br></=
div><div><div><div class=3D"x-apple-signature" style=3D"white-space: pre-w=
rap">Sent from iCloud<br></div></div><div><br></div><blockquote type=3D"ci=
te"><div>On Feb 19, 2024, at 8:51 AM, Marcus D. Leech &lt;patchvonbraun@gm=
ail.com&gt; wrote:<br></div><div><br></div><div><br></div><div><div class=3D=
"moz-cite-prefix">On 19/02/2024 11:27, Jim Grubb wrote:<br></div><blockquo=
te type=3D"cite">Unfortunately, the new Y cable did not resolve the issue.=
 &nbsp;I=E2=80=99m not=0A      sure what else to try.<br></blockquote><div=
>Could you share the output of:<br></div><div> <br></div><div> lsusb<br></=
div><div> <br></div><div> With us?<br></div><div> <br></div><div> Just wor=
king on a hunch.<br></div><div> <br></div><div> <br></div><div> <br></div>=
<blockquote type=3D"cite"><div><br></div><div>Thanks,<br></div><div><div>j=
<br></div><div> <br></div><div><div><br></div><blockquote type=3D"cite"><d=
iv>On Feb 18, 2024, at 6:36=E2=80=AFAM, Marcus D. Leech <a class=3D"moz-tx=
t-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun=
@gmail.com&gt;</a> wrote:<br></div><div><br></div><div><div><div class=3D"=
moz-cite-prefix">On 18/02/2024 00:04, Jim=0A                  Grubb wrote:=
<br></div><blockquote type=3D"cite"><div>One other datapoint. &nbsp;I have=
 a separate machine, intel=0A                  NUC running dragonOS which =
comes with gnu radio=0A                  pre-installed with uhd drivers. &=
nbsp;I=E2=80=99m getting the same=0A                  result on that machi=
ne as well. &nbsp;It is also using 4.1 <br></div><div>j<br></div></blockqu=
ote><div>This may still be a power issue.&nbsp; Once you've tried the=0A  =
              "Y" cable, if it still doesn't work then we might be=0A     =
           dealing with<br></div><div> &nbsp; broken hardware.<br></div><d=
iv> <br></div><div> <br></div><div> <br></div><blockquote type=3D"cite"><d=
iv><div><div><br></div><blockquote type=3D"cite"><div>On Feb 17, 2024, at =
6:57=E2=80=AFPM, Marcus D.=0A                          Leech <a class=3D"m=
oz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvon=
braun@gmail.com&gt;</a> wrote:<br></div><div><br></div><div><div><div clas=
s=3D"moz-cite-prefix">On 17/02/2024=0A                              21:44,=
 Jim Grubb wrote:<br></div><blockquote type=3D"cite"><div><span class=3D"f=
ont" style=3D"font-family:Monaco">I was able to get=0A                    =
              UHD 4.1.0.5-3 installed after removing=0A                   =
               the ppa. &nbsp;Unfortunately I'm still=0A                  =
                running into a problem.</span><br></div><div><span class=3D=
"font" style=3D"font-family:Monaco"></span><br></div><div><span class=3D"f=
ont" style=3D"font-family:Monaco">Any ideas would=0A                      =
            be&nbsp;appreciated.</span><br></div><div><span class=3D"font"=
 style=3D"font-family:Monaco">Thanks</span><br></div><div><span class=3D"f=
ont" style=3D"font-family:Monaco">j</span><br></div><div><span class=3D"fo=
nt" style=3D"font-family:Monaco"></span><br></div><div><div><span class=3D=
"font" style=3D"font-family:Monaco">jim@<a href=3D"http://pop-os:/usr/lib/=
uhd/utils" rel=3D"noopener noreferrer">pop-os:/usr/lib/uhd/utils</a>$=0A  =
                                  uhd_find_devices</span><br></div><div><s=
pan class=3D"font" style=3D"font-family:Monaco">[INFO] [UHD]=0A           =
                         linux; GNU C++ version 11.2.0;=0A                =
                    Boost_107400; UHD_4.1.0.5-3</span><br></div><div><span=
 class=3D"font" style=3D"font-family:Monaco">-----------------------------=
---------------------</span><br></div><div><span class=3D"font" style=3D"f=
ont-family:Monaco">-- UHD Device 0</span><br></div><div><span class=3D"fon=
t" style=3D"font-family:Monaco">------------------------------------------=
--------</span><br></div><div><span class=3D"font" style=3D"font-family:Mo=
naco">Device Address:</span><br></div><div><span class=3D"font" style=3D"f=
ont-family:Monaco">&nbsp; &nbsp; serial:=0A                               =
     3293561</span><br></div><div><span class=3D"font" style=3D"font-famil=
y:Monaco">&nbsp; &nbsp; name: B205i</span><br></div><div><span class=3D"fo=
nt" style=3D"font-family:Monaco">&nbsp; &nbsp; product:=0A                =
                    B205mini</span><br></div><div><span class=3D"font" sty=
le=3D"font-family:Monaco">&nbsp; &nbsp; type: b200</span><br></div><div><s=
pan class=3D"font" style=3D"font-family:Monaco"></span><br></div><div><spa=
n class=3D"font" style=3D"font-family:Monaco"></span><br></div><div><span =
class=3D"font" style=3D"font-family:Monaco">jim@<a href=3D"http://pop-os:/=
usr/lib/uhd/utils" rel=3D"noopener noreferrer">pop-os:/usr/lib/uhd/utils</=
a>$=0A                                    uhd_usrp_probe</span><br></div><=
div><span class=3D"font" style=3D"font-family:Monaco">[INFO] [UHD]=0A     =
                               linux; GNU C++ version 11.2.0;=0A          =
                          Boost_107400; UHD_4.1.0.5-3</span><br></div><div=
><span class=3D"font" style=3D"font-family:Monaco">[INFO] [B200]=0A       =
                             Detected Device: B205mini</span><br></div><di=
v><span class=3D"font" style=3D"font-family:Monaco">[INFO] [B200]=0A      =
                              Operating over USB 3.</span><br></div><div><=
span class=3D"font" style=3D"font-family:Monaco">[ERROR] [UHD]=0A         =
                           Exception caught in safe-call.</span><br></div>=
<div><span class=3D"font" style=3D"font-family:Monaco">&nbsp; in virtual=0A=
                                    b200_radio_ctrl_core_impl::~b200_radio=
_ctrl_core_impl()</span><br></div><div><span class=3D"font" style=3D"font-=
family:Monaco">&nbsp; at=0A                                    ./host/lib/=
usrp/b200/b200_radio_ctrl_core.cpp:66</span><br></div><div><span class=3D"=
font" style=3D"font-family:Monaco">this-&gt;peek32(0);=0A                 =
                   _async_task.reset(); -&gt;=0A                          =
          AssertionError: accum_timeout &lt;=0A                           =
         _timeout</span><br></div><div><span class=3D"font" style=3D"font-=
family:Monaco">&nbsp; in uint64_t=0A                                    b2=
00_radio_ctrl_core_impl::wait_for_ack(bool)</span><br></div><div><span cla=
ss=3D"font" style=3D"font-family:Monaco">&nbsp; at=0A                     =
               ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</span><br=
></div><div><span class=3D"font" style=3D"font-family:Monaco"></span><br><=
/div><div><span class=3D"font" style=3D"font-family:Monaco">Error:=0A     =
                               AssertionError: accum_timeout &lt;=0A      =
                              _timeout</span><br></div><div><span class=3D=
"font" style=3D"font-family:Monaco">&nbsp; in uint64_t=0A                 =
                   b200_radio_ctrl_core_impl::wait_for_ack(bool)</span><br=
></div><div><span class=3D"font" style=3D"font-family:Monaco">&nbsp; at=0A=
                                    ./host/lib/usrp/b200/b200_radio_ctrl_c=
ore.cpp:228</span><br></div></div><div><br></div><div><br></div></blockquo=
te><div>The other thing that just occurred to me is=0A                    =
        that your host controller may not be=0A                           =
 supplying enough power.&nbsp; This should "never"<br></div><div> &nbsp; h=
appen these days, but you might try using=0A                            on=
e of those "Y" USB cables that can provide=0A                            e=
xtra power from another USB port<br></div><div> &nbsp; to a downstream dev=
ice.<br></div><div> <br></div><div> <br></div><div> <br></div></div><div>_=
______________________________________________<br></div><div> USRP-users m=
ailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br></div><div> To unsubscribe send an email to <a class=3D"moz-txt-link-a=
bbreviated moz-txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.et=
tus.com">usrp-users-leave@lists.ettus.com</a><br></div></div></blockquote>=
</div></div></blockquote></div></div></blockquote></div></div></blockquote=
></div></blockquote></div><div><br></div></body></html>
--Apple-Webmail-86--312d98e2-87f6-4abd-8f85-4e75e6560613--

--Apple-Webmail-42--312d98e2-87f6-4abd-8f85-4e75e6560613--

--===============3134887857072720218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3134887857072720218==--
