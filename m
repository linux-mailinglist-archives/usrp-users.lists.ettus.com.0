Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D11F8859427
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 03:45:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4478384922
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 21:45:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708224314; bh=PqwgKdEoIwG7hzBUFHrahGR2TrIAsxbfDpb/V8KgU9o=;
	h=Date:To:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=RPURghjuFnkNUVDUyRuY7pGhU7J4ekOU0EtYPEjgFRt0U2iUh9y9QnIqujTM6a8mo
	 n0GCOouqamQ+iRKb7EqABLFK2MVn21VulvlOaTSs3mhI5dRaR63cK04KkvUYWBM9hr
	 BMJZNVEipX7M0n6FA0RJxDYlKECmAG2G0MkNTZrTm4iXWixxexj4L12Jd2qOTKinDv
	 GE134zBDZKlGwnhzJfkTnPAwxrvuVmRfPAiD9V+nDIfQedKloCSPv1Tfupj6RYJCWJ
	 yXNEPtgT5lbKOrqbtJ2Su+7Qe/7PpG8UGJZTAOHhdO63qWq1bQYu6o/ODGF8yeHNVo
	 64qPtcnI1wtpQ==
Received: from mr85p00im-zteg06022001.me.com (mr85p00im-zteg06022001.me.com [17.58.23.193])
	by mm2.emwd.com (Postfix) with ESMTPS id 53C4C381180
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 21:44:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="hfMBv0TP";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708224278; bh=HVe9t/0RR+6EWc/fAt6sZW1/7AWGLMQwgDTwxCWyabc=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
	b=hfMBv0TPyIPKAUGx74uElZo43efxy+xcHPuARAmheRV7dAKOqMwRIdK6buJf+5HvX
	 6v0+cot5tCvi5nQvRJDMOI1PnZ5vuG1f1aNJc/B3AKSF3jwWB+E7bRUClJaDL+87FF
	 ZLRimsjuYyXIj+1p04U5O0H+0LOOJcv6TkPl3CdYGkfb413H57bk9rkYJWACC+PnmL
	 Er/4WelGJ6/dVgrvFvfBj+u7W1QqmumtdiOVdyicbZ4ACRD3WrBgjbVRA+/b6sBlg7
	 vdC4rRHigJUevnBOjdat1FzgucWtbtc/JGR7GHW7o/uKc9TmG0Tjhe+xXM3qo/5WOe
	 Mt2pCpZ0pbo/A==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-zteg06022001.me.com (Postfix) with ESMTPSA id E5F6980001F;
	Sun, 18 Feb 2024 02:44:37 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Message-Id: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
Date: Sat, 17 Feb 2024 18:44:26 -0800
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: Apple Mail (2.3774.400.31)
X-Proofpoint-GUID: oYt4HBXUomdsMKxAppgWW-HL4xty06Rv
X-Proofpoint-ORIG-GUID: oYt4HBXUomdsMKxAppgWW-HL4xty06Rv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-17_23,2024-02-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxscore=0 spamscore=0
 suspectscore=0 clxscore=1015 adultscore=0 phishscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402180018
Message-ID-Hash: Z5TYB3NDI7N7V2F3SIVBOZK4JKYXT42V
X-Message-ID-Hash: Z5TYB3NDI7N7V2F3SIVBOZK4JKYXT42V
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5TYB3NDI7N7V2F3SIVBOZK4JKYXT42V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============6392148047323387812=="


--===============6392148047323387812==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B4A4B5EF-D303-4883-AB59-717D85FE52B2"


--Apple-Mail=_B4A4B5EF-D303-4883-AB59-717D85FE52B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I was able to get UHD 4.1.0.5-3 installed after removing the ppa.  =
Unfortunately I'm still running into a problem.

Any ideas would be appreciated.
Thanks
j

jim@pop-os:/usr/lib/uhd/utils$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-3
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 3293561
    name: B205i
    product: B205mini
    type: b200


jim@pop-os:/usr/lib/uhd/utils$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-3
[INFO] [B200] Detected Device: B205mini
[INFO] [B200] Operating over USB 3.
[ERROR] [UHD] Exception caught in safe-call.
  in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()
  at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66
this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout < =
_timeout
  in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
  at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228

Error: AssertionError: accum_timeout < _timeout
  in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
  at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228



--Apple-Mail=_B4A4B5EF-D303-4883-AB59-717D85FE52B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div><font =
face=3D"Monaco">I was able to get UHD 4.1.0.5-3 installed after removing =
the ppa. &nbsp;Unfortunately I'm still running into a =
problem.</font></div><div><font =
face=3D"Monaco"><br></font></div><div><font face=3D"Monaco">Any ideas =
would be&nbsp;appreciated.</font></div><div><font =
face=3D"Monaco">Thanks</font></div><div><font =
face=3D"Monaco">j</font></div><div><font =
face=3D"Monaco"><br></font></div><div><div><font =
face=3D"Monaco">jim@pop-os:/usr/lib/uhd/utils$ =
uhd_find_devices</font></div><div><font face=3D"Monaco">[INFO] [UHD] =
linux; GNU C++ version 11.2.0; Boost_107400; =
UHD_4.1.0.5-3</font></div><div><font =
face=3D"Monaco">--------------------------------------------------</font><=
/div><div><font face=3D"Monaco">-- UHD Device 0</font></div><div><font =
face=3D"Monaco">--------------------------------------------------</font><=
/div><div><font face=3D"Monaco">Device Address:</font></div><div><font =
face=3D"Monaco">&nbsp; &nbsp; serial: 3293561</font></div><div><font =
face=3D"Monaco">&nbsp; &nbsp; name: B205i</font></div><div><font =
face=3D"Monaco">&nbsp; &nbsp; product: B205mini</font></div><div><font =
face=3D"Monaco">&nbsp; &nbsp; type: b200</font></div><div><font =
face=3D"Monaco"><br></font></div><div><font =
face=3D"Monaco"><br></font></div><div><font =
face=3D"Monaco">jim@pop-os:/usr/lib/uhd/utils$ =
uhd_usrp_probe</font></div><div><font face=3D"Monaco">[INFO] [UHD] =
linux; GNU C++ version 11.2.0; Boost_107400; =
UHD_4.1.0.5-3</font></div><div><font face=3D"Monaco">[INFO] [B200] =
Detected Device: B205mini</font></div><div><font face=3D"Monaco">[INFO] =
[B200] Operating over USB 3.</font></div><div><font =
face=3D"Monaco">[ERROR] [UHD] Exception caught in =
safe-call.</font></div><div><font face=3D"Monaco">&nbsp; in virtual =
b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()</font></div><div><=
font face=3D"Monaco">&nbsp; at =
./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66</font></div><div><font =
face=3D"Monaco">this-&gt;peek32(0); _async_task.reset(); -&gt; =
AssertionError: accum_timeout &lt; _timeout</font></div><div><font =
face=3D"Monaco">&nbsp; in uint64_t =
b200_radio_ctrl_core_impl::wait_for_ack(bool)</font></div><div><font =
face=3D"Monaco">&nbsp; at =
./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</font></div><div><font =
face=3D"Monaco"><br></font></div><div><font face=3D"Monaco">Error: =
AssertionError: accum_timeout &lt; _timeout</font></div><div><font =
face=3D"Monaco">&nbsp; in uint64_t =
b200_radio_ctrl_core_impl::wait_for_ack(bool)</font></div><div><font =
face=3D"Monaco">&nbsp; at =
./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</font></div></div><div><=
br></div><div><br></div></body></html>=

--Apple-Mail=_B4A4B5EF-D303-4883-AB59-717D85FE52B2--

--===============6392148047323387812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6392148047323387812==--
