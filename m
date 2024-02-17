Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 475FA858BDD
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 01:30:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B376B3843CF
	for <lists+usrp-users@lfdr.de>; Fri, 16 Feb 2024 19:30:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708129817; bh=beKKLz+WvRzrMPvvvbyW0eXjMFwDmlupkK+/sfTHd/4=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=b5QJ/PrqRIMKk+D9VGaBJw3OvOvwCZuOJE5yMLl6YpeFGN8JyfBY6MZptj80RgbTs
	 eMVPX/Ke/xRkBUMwwUzU97zgVzXVU9jNlWHkct+SyvRG5B0Ow77GqzXi80PPa+8/PM
	 +Jh9nJ00cAoPXo5roNGSIwBmy3YIbs+0oqET5t1zvlqvk2O8prV3syXyYXOXYzZ4mt
	 pGy/5SZU9w+s654nMzIeaH5RR9IexikcZhDUmjpVbsphyIzdmjYy2o8XmgFazBmdiN
	 4vsvXH1SZ8b2zpVbWy2MCZvH+3bm1QM9fA0aqDzlYVdgrrfdzWSR5At+B4j9gu7IFE
	 kPbdoRUYNsdNw==
Received: from qs51p00im-qukt01071902.me.com (qs51p00im-qukt01071902.me.com [17.57.155.9])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D5583841DF
	for <usrp-users@lists.ettus.com>; Fri, 16 Feb 2024 19:30:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="Cdp61vMs";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708129812; bh=Fz2O6hqfMcRscOum6ucn65cgeDXQco8r4l4EwkgvY/I=;
	h=To:From:Subject:Date:Message-id:Content-Type:MIME-Version;
	b=Cdp61vMs7r276f0wmpvQF2l9B3ArEup8MLVJw6WIiHUT87NNa82IoiH6ahG75+XoB
	 Nu3o73YXt30ntrg0ghGZhkfeWA5QiZx1GY9Um6EHq4dcUwINRgIeWsPRgnl6shLxVT
	 f0AAkaPPzSFp809/5dmjoIDH8Snqhsr4jtHytkb6uIgfJdtBejCH5GJcz6ZDSknF8W
	 xNIcwhNSuTQHfurLAPAS2755lnlW4ajiBtixbXQ83JFUrZpF3YDC5NLI/fdKj0v9Lg
	 Dir+XM+x75JW7Bxghq8gOhHtrRaIBbz2XyQ58tbMU2uP1G3kHB1aCjdYzKikvDYmn3
	 4c0NTONXqWoHg==
Received: from qs51p00im-qukt01071902.me.com (unknown [17.57.155.9])
	by qs51p00im-qukt01071902.me.com (Postfix) with ESMTPS id 4A22B5EC0430
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 00:30:12 +0000 (UTC)
Received: from p00-mailws2-59788ccdd8-gzrx4 (qs51p00im.dlb-asmtpoutvip.me.com [10.112.113.12])
	by qs51p00im-qukt01071902.me.com (Postfix) with ESMTPSA id 034705EC0187
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 00:30:11 +0000 (UTC)
To: usrp-users@lists.ettus.com
Date: Sat, 17 Feb 2024 00:30:11 +0000 (UTC)
X-Mailer: iCloud MailClientcurrent MailServer2409B72.10000-master-0-9980a4f196b0
Message-id: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: N8EjHRkQw_uq6ybEiv7UQRtFhNpyFqCo
X-Proofpoint-GUID: N8EjHRkQw_uq6ybEiv7UQRtFhNpyFqCo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-16_24,2024-02-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=751
 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0
 spamscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402170002
Message-ID-Hash: WNMEFE5OB6ZSWORBSOR2TC2QU4V5NW5H
X-Message-ID-Hash: WNMEFE5OB6ZSWORBSOR2TC2QU4V5NW5H
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem getting USRP B205mini-i running
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WNMEFE5OB6ZSWORBSOR2TC2QU4V5NW5H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============6450071850714963866=="


--===============6450071850714963866==
Content-Type: multipart/alternative; boundary=Apple-Webmail-42--db33c1cc-b887-4b1e-ac18-ce27434a6fbc


--Apple-Webmail-42--db33c1cc-b887-4b1e-ac18-ce27434a6fbc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
    charset=utf-8;
    format=flowed

When I run: uhd_find_devices I get: [INFO] [UHD] linux; GNU C++ version 11=
.4.0; Boost_107400; UHD_4.6.0.0-0ubuntu1~jammy1 --------------------------=
------------------------ -- UHD Device 0 ---------------------------------=
----------------- Device Address: serial: 3293561 name: B205i product: B20=
5mini type: b200 When I run: uhd_usrp_probe I get: [INFO] [UHD] linux; GNU=
 C++ version 11.4.0; Boost_107400; UHD_4.6.0.0-0ubuntu1~jammy1 [INFO] [B20=
0] Detected Device: B205mini [INFO] [B200] Operating over USB 3. [ERROR] [=
UHD] Exception caught in safe-call. in ~b200_radio_ctrl_core_impl at ./hos=
t/lib/usrp/b200/b200_radio_ctrl_core.cpp:65 this->peek32(0); _async_task.r=
eset(); -> AssertionError: accum_timeout < _timeout in wait_for_ack at ./h=
ost/lib/usrp/b200/b200_radio_ctrl_core.cpp:227 Error: AssertionError: accu=
m_timeout < _timeout in wait_for_ack at ./host/lib/usrp/b200/b200_radio_ct=
rl_core.cpp:227 This is on an X64 Ubuntu 20.04 machine. Any help would be =
appreciated. Thank you, Jim
--Apple-Webmail-42--db33c1cc-b887-4b1e-ac18-ce27434a6fbc
Content-Type: multipart/related;
    type="text/html";
    boundary=Apple-Webmail-86--db33c1cc-b887-4b1e-ac18-ce27434a6fbc


--Apple-Webmail-86--db33c1cc-b887-4b1e-ac18-ce27434a6fbc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
    charset=utf-8;

<html><body><div><div><br></div></div><div>When I run:<br></div><div><br></div><div>uh=
d_find_devices<br></div><div><br></div><div>I get:<br></div><div><br></div=
><div>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.6.0.=
0-0ubuntu1~jammy1<br></div><div>------------------------------------------=
--------<br></div><div>-- UHD Device 0<br></div><div>---------------------=
-----------------------------<br></div><div>Device Address:<br></div><div>=
&nbsp;&nbsp;&nbsp; serial: 3293561<br></div><div>&nbsp;&nbsp;&nbsp; name: =
B205i<br></div><div>&nbsp;&nbsp;&nbsp; product: B205mini<br></div><div>&nb=
sp;&nbsp;&nbsp; type: b200<br></div><div><br></div><div><br></div><div>Whe=
n I run:<br></div><div><br></div><div>uhd_usrp_probe<br></div><div><br></d=
iv><div>I get:<br></div><div><br></div><div>[INFO] [UHD] linux; GNU C++ ve=
rsion 11.4.0; Boost_107400; UHD_4.6.0.0-0ubuntu1~jammy1<br></div><div>[INF=
O] [B200] Detected Device: B205mini<br></div><div>[INFO] [B200] Operating =
over USB 3.<br></div><div>[ERROR] [UHD] Exception caught in safe-call.<br>=
</div><div>&nbsp; in ~b200_radio_ctrl_core_impl<br></div><div>&nbsp; at ./=
host/lib/usrp/b200/b200_radio_ctrl_core.cpp:65<br></div><div>this-&gt;peek=
32(0); _async_task.reset(); -&gt; AssertionError: accum_timeout &lt; _time=
out<br></div><div>&nbsp; in wait_for_ack<br></div><div>&nbsp; at ./host/li=
b/usrp/b200/b200_radio_ctrl_core.cpp:227<br></div><div><br></div><div>Erro=
r: AssertionError: accum_timeout &lt; _timeout<br></div><div>&nbsp; in wai=
t_for_ack<br></div><div>&nbsp; at ./host/lib/usrp/b200/b200_radio_ctrl_cor=
e.cpp:227<br></div><div><br></div><div><br></div><div>This is on an X64 Ub=
untu 20.04 machine.<br></div><div><br></div><div>Any help would be appreci=
ated.&nbsp; <br></div><div><br></div><div>Thank you,<br></div><div>Jim<br>=
</div></body></html>
--Apple-Webmail-86--db33c1cc-b887-4b1e-ac18-ce27434a6fbc--

--Apple-Webmail-42--db33c1cc-b887-4b1e-ac18-ce27434a6fbc--

--===============6450071850714963866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6450071850714963866==--
