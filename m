Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 507A57EF54A
	for <lists+usrp-users@lfdr.de>; Fri, 17 Nov 2023 16:29:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9B25385016
	for <lists+usrp-users@lfdr.de>; Fri, 17 Nov 2023 10:29:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700234944; bh=6O/FCD53GLxEl+xKYemetYwppLfbbhh4tYk0zrIWjE8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cimuuD+ENLtuDvsYaAu/JCN3SphfDedtX11ByrfClqnm2GzIjJ2hMvpCZi5u/XLkP
	 S850ijZJe7gDOlo7S9asg7UPzcyNwhng4fKkm13YvSLiapcl+feta4PvKPYtONDZL8
	 b9uMG38l8MZJ1nSZF6jyEqsUCwF96HNIngAEBqaf6TlfS3C64hIqDmj/IzFAPUBCiA
	 sHZ1gSiLDtg3s8Rrf4AAKFU2jJ8fBrAdKxuP6joVADRoQQnlwi0D/DgfkU/gwE4UDE
	 47/x/pZxyH6mS4j9pyc3Vbip0ifGfUFeKXltysgVqmplrev3yP8g3viCM01ObJmY2U
	 Y2BslJuK7qIjg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1529384FCD
	for <usrp-users@lists.ettus.com>; Fri, 17 Nov 2023 10:28:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700234927; bh=EoSt7VipniiXK1hT02jsUvtP8ubpuE+4LWcLiHyyN4s=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ts9pR2hvSZU3qUWeAPXNEV8PuivkAerlL6CVCu516rLiq2PkUxXkSTw2BJLW6KnDL
	 DXudo8uXdX0nZDXx78XtyyatZtKYJXqRDNzuJKlrUiAbrx+OU6KZ9RycmOzqMbwmgM
	 OXzNciPD34UWTKOi0R03NR0RsQ01G7AxJbvdSrEx5GKu01kje3/emIJ5Vu6fcCTcNR
	 QEuEmahX9Oq3+GYPaCuAeitjXeId/8pvRnV/c7idWewIkDADD12WD2yi6AjjK34qBV
	 fKPNp6ra0coLBo6vrZ4qkImF1pzVtc7lHocEqmKO3rROWIdCOJ9jq10z9a29MH2WcR
	 Gjk9Yp1fVU5hA==
Date: Fri, 17 Nov 2023 15:28:46 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <Odx4tDUYncJGnH0oJMmpMBeZZtU8F772A1EXm1eRE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PH0PR04MB83111EDB22A7E1341B36D781F3B1A@PH0PR04MB8311.namprd04.prod.outlook.com
MIME-Version: 1.0
Message-ID-Hash: SEMREHRLDTPGEWBBUVSTUGWISFCFU5KQ
X-Message-ID-Hash: SEMREHRLDTPGEWBBUVSTUGWISFCFU5KQ
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 recv error on socket: Connection refused
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SEMREHRLDTPGEWBBUVSTUGWISFCFU5KQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5883926851830430829=="

This is a multi-part message in MIME format.

--===============5883926851830430829==
Content-Type: multipart/alternative;
 boundary="b1_Odx4tDUYncJGnH0oJMmpMBeZZtU8F772A1EXm1eRE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Odx4tDUYncJGnH0oJMmpMBeZZtU8F772A1EXm1eRE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I can verify that the QSFP ports on my host computer are both configured =
properly. Before we moved to using both QSFP28 interfaces on the x410, we=
 only using a single one, indexed 1 on the x410, with IP 192.168.20.2. Th=
is worked with both images, as long as I specified the addr to be that IP=
. Once I plugged in the second port is when I started having these issues=
. If I only have interface 0 plugged in (192.68.10.2), the UC_200 doesn=E2=
=80=99t work, which is expected after reading the wiki, and the CG_400 im=
age does works. This makes me believe that they are configured correctly.

--b1_Odx4tDUYncJGnH0oJMmpMBeZZtU8F772A1EXm1eRE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I can verify that the QSFP ports on my host computer are both configur=
ed properly. Before we moved to using both QSFP28 interfaces on the x410,=
 we only using a single one, indexed 1 on the x410, with IP 192.168.20.2.=
 This worked with both images, as long as I specified the addr to be that=
 IP. Once I plugged in the second port is when I started having these iss=
ues. If I only have interface 0 plugged in (192.68.10.2), the UC_200 does=
n=E2=80=99t work, which is expected after reading the wiki, and the CG_40=
0 image does works. This makes me believe that they are configured correc=
tly.</p>


--b1_Odx4tDUYncJGnH0oJMmpMBeZZtU8F772A1EXm1eRE--

--===============5883926851830430829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5883926851830430829==--
