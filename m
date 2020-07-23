Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F1E22AF63
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 14:32:43 +0200 (CEST)
Received: from [::1] (port=32888 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyaOt-0008Lp-Fj; Thu, 23 Jul 2020 08:32:39 -0400
Received: from st43p00im-ztbu10063601.me.com ([17.58.63.174]:41498)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <don.kelly@mac.com>) id 1jyaOp-0008HL-OS
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 08:32:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mac.com; s=1a1hai;
 t=1595507514; bh=pCrwHxBTb1IlKg7eBGv9b2hXydCedfUc8q6FSMwsdlE=;
 h=From:Content-Type:Subject:Message-Id:Date:To;
 b=edN9AH8V8vI38ar2QfKO64QKVgmiEWtUVdg98ak9Dtcg4I88Zj//hMHWBDoZsOX4u
 LQQK3WUV921n0R0XxyZAtOxBsuKMeXLLmPopT6uNTJT9yDuXL+OkC1aftxeXL1eP7/
 gNm53UpHJnTVWdqpYxdsmkOGm/Jso7ChKa8gjt0HeH/8YvaraadSmTAY40Xb1DNzFz
 chpzOTIRygSYSysJHkKD6DFtNTqK4/5tFCqZfnycd30mZTNRByjnF3UgK25LxOCJlK
 +uxvsHU6mb8BwFphafX4UqaR7aGzjPYht36sfZ655wI+G91tOK6eOaI35cSpVE99Tl
 aTuKdS9Nsq/8g==
Received: from dons-imac-4.hsd1.tx.comcast.net
 (c-73-77-239-39.hsd1.tx.comcast.net [73.77.239.39])
 by st43p00im-ztbu10063601.me.com (Postfix) with ESMTPSA id 8B84C7008D8
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 12:31:54 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Message-Id: <AF6B9576-0AB8-4F40-8A12-EA6E0BCE9AA9@mac.com>
Date: Thu, 23 Jul 2020 07:31:53 -0500
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3608.120.23.2.1)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-23_05:2020-07-23,
 2020-07-23 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=760 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2004280000 definitions=main-2007230093
Subject: [USRP-users] B200mini with GNSS-SDR
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
From: Don Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Don Kelly <don.kelly@mac.com>
Content-Type: multipart/mixed; boundary="===============8119723144220342313=="
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


--===============8119723144220342313==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_08D050C4-BA23-4DC3-9982-A9E9AA55D800"


--Apple-Mail=_08D050C4-BA23-4DC3-9982-A9E9AA55D800
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Any other usrp-users using the B200mini and the GNSS-SDR software? =
I=E2=80=99ve got it running, but am seeing some unusual behavior so am =
hoping to discuss configurations with others.=20

In particular, I=E2=80=99m seeing =E2=80=9Cjumps=E2=80=9D in the =
GNSS-SDR calculation of Doppler, and I do not see this running the same =
config on a HackRF. I=E2=80=99m guessing this may be a configuration =
issue, but want to rule out some issue with my new B200mini.

Thanks!

Don

Don Kelly

Agile Engineering

LinkedIn: www.linkedin.com/in/kellydak
Cell:  281-221-2853
4403 Orange Leaf Court
Houston, TX   77059


--Apple-Mail=_08D050C4-BA23-4DC3-9982-A9E9AA55D800
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Any =
other usrp-users using the B200mini and the GNSS-SDR software? I=E2=80=99v=
e got it running, but am seeing some unusual behavior so am hoping to =
discuss configurations with others.&nbsp;<div class=3D""><br =
class=3D""></div><div class=3D"">In particular, I=E2=80=99m seeing =
=E2=80=9Cjumps=E2=80=9D in the GNSS-SDR calculation of Doppler, and I do =
not see this running the same config on a HackRF. I=E2=80=99m guessing =
this may be a configuration issue, but want to rule out some issue with =
my new B200mini.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks!<br class=3D""><div class=3D"">
<div dir=3D"auto" style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0); letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div dir=3D"auto" style=3D"color: rgb(0, 0, 0); =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
dir=3D"auto" style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D""><div style=3D"color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><br class=3D"">Don<br class=3D""><br class=3D"">Don Kelly<br =
class=3D""><br class=3D"">Agile Engineering<br class=3D""><br =
class=3D"">LinkedIn: <a href=3D"http://www.linkedin.com/in/kellydak" =
class=3D"">www.linkedin.com/in/kellydak</a><br class=3D"">Cell: =
&nbsp;281-221-2853<br class=3D"">4403 Orange Leaf Court<br =
class=3D"">Houston, TX &nbsp; 77059<br =
class=3D""></div></div></div></div></div></div></div></div>
</div>

<br class=3D""></div></body></html>=

--Apple-Mail=_08D050C4-BA23-4DC3-9982-A9E9AA55D800--


--===============8119723144220342313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8119723144220342313==--

