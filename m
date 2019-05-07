Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 093A6158CD
	for <lists+usrp-users@lfdr.de>; Tue,  7 May 2019 07:12:41 +0200 (CEST)
Received: from [::1] (port=54030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNsP3-0006I3-6A; Tue, 07 May 2019 01:12:33 -0400
Received: from web-atmail1.tpgi.com.au ([203.12.160.53]:42383)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <gobbo@tpg.com.au>) id 1hNsOT-00069X-OQ
 for usrp-users@lists.ettus.com; Tue, 07 May 2019 01:12:28 -0400
Received: from localhost (localhost [127.0.0.1])
 by web-atmail1.tpgi.com.au (8.14.4/8.14.4) with ESMTP id x475BENV025607
 for <usrp-users@lists.ettus.com>; Tue, 7 May 2019 15:11:14 +1000
Message-Id: <aa3eab48687a6c3dc862458dff7643395e62665b@new-postoffice.tpg.com.au>
To: usrp-users@lists.ettus.com
X-Mailer: Atmail 7.2.0.14467
X-Originating-IP: 138.44.192.14
in-reply-to: <CAOR0_ujmQ3poAON=sxihVFa7-+dgOcRdAOWAYuUvzm7MQj5EyQ@mail.gmail.com>
Date: Tue, 07 May 2019 15:11:14 +1000
MIME-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] E320 Auto-Booting function not working?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Chris Gobbett via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Chris Gobbett <gobbo@tpg.com.au>
Content-Type: multipart/mixed; boundary="===============3622079210980208499=="
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

--===============3622079210980208499==
Content-Type: multipart/alternative;
 boundary="=_e606cf66458d3f747c57502aed0803a8"

--=_e606cf66458d3f747c57502aed0803a8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Following the steps from the E320 getting started guide [1], I'm not=0Ah=
aving any luck with the unit auto booting when power is applied=0AThe co=
mmand "eeprom-set-flags 0x1" seems to take effect successfully,=0Aand se=
ts the value of MCU_FLAGS[0] to 0x1 (noting that the default=0Avalue is=
 0x8, which I'm assuming means auto boot is "off") . This is=0Aalso veri=
fied as holding its value between power cycles, by looking at=0Athe outp=
ut of the eeprom-dump command.=0A=0ABut... removing power to the unit, t=
hen applying power again doesn't=0Aresult in the unit booting by itself.=
=0A=0AAnyone had any experience with this and/or able to offer help? I'm=
=0Ahesitant to trial-and-error different values into eeprom-set-flags,=
=0Afor fear of breaking something... :)=0A=0ACheers,Chris=0A=0A[1]=C2=A0=
https://kb.ettus.com/E320_Getting_Started_Guide [1]=0A=0ALinks:=0A------=
=0A[1] https://kb.ettus.com/E320_Getting_Started_Guide=0A

--=_e606cf66458d3f747c57502aed0803a8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: 'Helvetica Neue',Helvetica,Arial,sans-=
serif; font-size: 12px;"><div>Following the steps from the E320 getting=
 started guide [1], I'm not having any luck with the unit auto booting w=
hen power is applied</div><div><br /></div><div>The command "eeprom-set-=
flags 0x1" seems to take effect successfully, and sets the value of MCU_=
FLAGS[0] to 0x1 (noting that the default value is 0x8, which I'm assumin=
g means auto boot is "off") . This is also verified as holding its value=
 between power cycles, by looking at the output of the eeprom-dump comma=
nd.<br /></div><div><br /></div><div>But... removing power to the unit,=
 then applying power again doesn't result in the unit booting by itself.=
<br /></div><div><br /></div><div>Anyone had any experience with this an=
d/or able to offer help? I'm hesitant to trial-and-error different value=
s into eeprom-set-flags, for fear of breaking something... :)<br /></div=
><div><br /></div><div>Cheers,</div><div>Chris<br /></div><br /><div><br=
 /></div><div>[1]=C2=A0<a href=3D"https://kb.ettus.com/E320_Getting_Star=
ted_Guide">https://kb.ettus.com/E320_Getting_Started_Guide</a></div></bo=
dy></html>

--=_e606cf66458d3f747c57502aed0803a8--



--===============3622079210980208499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3622079210980208499==--


