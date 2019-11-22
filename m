Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDB2106727
	for <lists+usrp-users@lfdr.de>; Fri, 22 Nov 2019 08:39:38 +0100 (CET)
Received: from [::1] (port=42292 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iY3XP-0004jK-2w; Fri, 22 Nov 2019 02:39:31 -0500
Received: from mx07-002f8c01.pphosted.com ([185.132.180.142]:48296)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <sergio.parreno@iecisa.com>)
 id 1iY3XM-0004fd-GA
 for usrp-users@lists.ettus.com; Fri, 22 Nov 2019 02:39:28 -0500
Received: from pps.filterd (m0143906.ppops.net [127.0.0.1])
 by mx07-002f8c01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAM7Xr1Q001388
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 08:38:46 +0100
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com
 [209.85.221.200])
 by mx07-002f8c01.pphosted.com with ESMTP id 2wd6wj66y2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 08:38:46 +0100
Received: by mail-vk1-f200.google.com with SMTP id n6so2511131vke.22
 for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2019 23:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iecisa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=NPSEoqLW0HV9rmrt9ZqtMWzqh5+WsS3Zgqcu8LpM/Xo=;
 b=oysFElPDMOm828e0pRSoe7d041YKcFkjFkVS9sG0DZ0Ovd/5Yek5F89Y4Rpfyyc2R7
 36RW1aC0UdwqAU/SjzDAhVOEO+u6urntrQVItysGhUleg8ESFARFzprO0QgOcXlTleOl
 gZyzMcAHvxXEpM/UQ2IKG6E4I6NZSOgWdPHwuyaanzvsq+bSI885TZbhvXjf53tkJah9
 floTqhT5hdzbwP/wutQypdgXYIDypxKCPRO7TTl0JyXENLLtHrJ1hByMn7GVEsV//8TV
 QRTWfvLmIyIAInIIMLIjHCJGvCDUwdebd+Y3Nz0ZIaEk2JkfPpfz8Nny611kEIscJCOa
 90mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NPSEoqLW0HV9rmrt9ZqtMWzqh5+WsS3Zgqcu8LpM/Xo=;
 b=Zl2jglsZ2Nef1+cm94PjcV76CCwIqOt1fOe8l7V0uVK2BmxFlZpInTHfTPiYGvmVek
 2cdlFgj2I8rMZdwH/w/8xPY4Z2N1vcOB/ABKerlTTpRv3RSYmVysX0EasaB9OBz29FhZ
 1+TnB7ji+yv+s2n/Wa0HhITpPoAqN7+i06njiNG9nhY144Kvd7ZbDmsVM8af1Zs5GV46
 7EY4BTjM807IA08+yRJ3P6Tqr6ZB8f8NU+kKXChdTpyo1QM6QwpGMsbhXtd/Tvd4Iga5
 Hd/wmg7UYnjkjuKJLMWitamcf7K6r/6HhrLtocnxo6T2cQW8CJQck1NWSAn1M5sT72Lj
 wLPg==
X-Gm-Message-State: APjAAAV65Cu8gFTbFjRxXuiy7fn/+RvcaM+jSDgvqx56+X7e5xp1Vh1A
 XBgNwsAl2UjrekrmbUwncG3JcTKt6Pp+CLNW+4DLpAAfPqmrgtmAjmF2SCHON5NTxxTdouyz570
 vCRzIF8hM5mXk81giZ2jBcDtePZaj0kqLvtn/
X-Received: by 2002:ab0:2551:: with SMTP id l17mr8734633uan.54.1574408324829; 
 Thu, 21 Nov 2019 23:38:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqyKGM9BUmDO/wbuFXhsSUGJH5uu4LNHbYEaf0110vZGyxfhVnKAOm46dZ362t8OmuMw0Xi0GU7zCz/Mr68UbYA=
X-Received: by 2002:ab0:2551:: with SMTP id l17mr8734624uan.54.1574408324483; 
 Thu, 21 Nov 2019 23:38:44 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 22 Nov 2019 08:38:09 +0100
Message-ID: <CAPAeKJEM8cObGkx9Qsef_+Z8+=HgJbS781svpnAGToFmLfEcRA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Automatic Gain Control
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Sergio_Parre=C3=B1o_G=C3=B3mez_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Sergio_Parre=C3=B1o_G=C3=B3mez?=
 <sergio.parreno@iecisa.com>
Content-Type: multipart/mixed; boundary="===============1591529430016845265=="
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

--===============1591529430016845265==
Content-Type: multipart/alternative; boundary="000000000000e9a4dc0597ea80ef"

--000000000000e9a4dc0597ea80ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
We have a X310 SDR  with release version 3.14.1.1 of UHD. We are obtaining
IQ samples from 4 channels.
My question is, X310 includes Automatic Gain Control in samples
depending on signal power? I say that because in the datasheet I couldn't
find any information about that but I observed differences in power level
depending on if SDR gives samples in int or in float format.

Clarification: When SDR gives samples in int format and after I'm
interpreting that sample the signal power is different than if I obtain
samples in float format.
Best regards
Sergio

--=20

*INFORM=C3=81TICA EL CORTE INGL=C3=89S*

*Sergio Parre=C3=B1o Gomez*

*=C3=81rea Seguridad Electr=C3=B3nica - DEFENSA*

___________________________________________________________________________=
______________________________________

M. +34 671 746 106

Traves=C3=ADa de Costa Brava, 4 Mirasierra  |  28034 Madrid  | Espa=C3=B1a

*www.iecisa.com <http://www.iecisa.com/>*

--=20

Este mensaje, y en su caso, cualquier fichero anexo al mismo, puede

contener informaci=C3=B3n confidencial, siendo para uso exclusivo del

destinatario, quedando prohibida su divulgaci=C3=B3n copia o =C2=A0distribu=
ci=C3=B3n a

terceros sin la autorizaci=C3=B3n expresa del remitente. Si Vd. ha recibido
este=20
mensaje err=C3=B3neamente, se ruega lo =C2=A0notifique al remitente y
proceda a su=20
borrado.
Gracias por su colaboraci=C3=B3n.

This message (including any=20
attachments) may contain confidential
information. It is intended for use=20
by the recipient only. Any
dissemination, copying or distribution to third=20
parties without the
express consent of the sender is strictly prohibited.=20
If you have
received this message in error, please delete it immediately=20
and
notify the sender.
Thank you for your collaboration.

--000000000000e9a4dc0597ea80ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br>We have a X310 SDR=C2=A0 with release version 3=
.14.1.1 of UHD. We are obtaining IQ samples from 4 channels.=C2=A0<div>My q=
uestion is, X310 includes Automatic Gain Control in samples depending=C2=A0=
on signal power? I say that because in the datasheet I couldn&#39;t find an=
y information about that but I observed differences in power=C2=A0level dep=
ending on if SDR gives samples in int or in float format.=C2=A0</div><div><=
br></div><div>Clarification: When SDR gives samples in int format and after=
 I&#39;m interpreting that sample the signal power is different than if I o=
btain samples in float format.<br><div></div><div>Best regards</div><div>Se=
rgio<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><p style=3D"background-color:transparent;c=
olor:rgb(0,0,0);font-family:arial,helvetica,sans-serif;font-size:11.2px;mar=
gin:0px;padding:0px;vertical-align:baseline"><b><span style=3D"color:rgb(0,=
135,80);font-family:Arial,sans-serif;font-size:12px">INFORM=C3=81TICA EL CO=
RTE INGL=C3=89S</span></b></p><p style=3D"background-color:transparent;colo=
r:rgb(0,0,0);font-family:arial,helvetica,sans-serif;margin:0px;padding:0px;=
vertical-align:baseline"><b><span style=3D"font-family:Arial,sans-serif"><f=
ont>Sergio Parre=C3=B1o Gomez</font></span></b></p><p style=3D"background-c=
olor:transparent;margin:0px;padding:0px;vertical-align:baseline"><b style=
=3D"color:rgb(102,102,102);font-family:Arial,&quot;Default Sans Serif&quot;=
,Verdana,Helvetica,sans-serif;font-size:x-small">=C3=81rea Seguridad Electr=
=C3=B3nica - DEFENSA</b><br></p><p style=3D"background-color:transparent;co=
lor:rgb(0,0,0);font-family:arial,helvetica,sans-serif;font-size:11.2px;marg=
in:0px;padding:0px;vertical-align:baseline"><span style=3D"font-family:Aria=
l,sans-serif;font-size:6.66px">____________________________________________=
_____________________________________________________________________</span=
><br></p><p style=3D"background-color:transparent;color:rgb(0,0,0);font-fam=
ily:arial,helvetica,sans-serif;font-size:11.2px;margin:0px;padding:0px;vert=
ical-align:baseline"><span lang=3D"EN-US" style=3D"font-family:Arial,sans-s=
erif;font-size:12px">M. +34 671 746 106</span></p><p style=3D"background-co=
lor:transparent;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;fon=
t-size:11.2px;margin:0px;padding:0px;vertical-align:baseline"><span style=
=3D"color:rgb(89,89,89);font-family:Arial,sans-serif;font-size:12px;backgro=
und-color:transparent">Traves=C3=ADa de Costa Brava, 4 Mirasierra=C2=A0 | =
=C2=A028034 Madrid =C2=A0| Espa=C3=B1a</span></p><p style=3D"background-col=
or:transparent;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;font=
-size:11.2px;margin:0px;padding:0px;vertical-align:baseline"><span style=3D=
"color:rgb(89,89,89);font-size:14.66px"></span></p><p style=3D"background-c=
olor:transparent;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;fo=
nt-size:11.2px;margin:0px;padding:0px;vertical-align:baseline"><b><span sty=
le=3D"color:rgb(0,135,80);font-family:Arial,sans-serif;font-size:12px"><a h=
ref=3D"http://www.iecisa.com/" style=3D"color:rgb(16,92,182)" target=3D"_bl=
ank">www.iecisa.com</a></span></b></p></div></div></div></div></div></div><=
/div></div></div>

<br>
<br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-co=
lor:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;background-color:rgb(255,255,255)">Este mensaje, y en su caso, c=
ualquier fichero anexo al mismo, puede</span><br style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;background-color:rgb(255,255,255)"><span st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-color:rg=
b(255,255,255)">contener informaci=C3=B3n confidencial, siendo para uso exc=
lusivo del</span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;background-color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;background-color:rgb(255,255,255)">destinatario=
, quedando prohibida su divulgaci=C3=B3n copia o =C2=A0distribuci=C3=B3n a<=
/span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;backgro=
und-color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;background-color:rgb(255,255,255)">terceros sin la autoriz=
aci=C3=B3n expresa del remitente. Si Vd. ha recibido</span><br style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,255,=
255)"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;backg=
round-color:rgb(255,255,255)">este mensaje err=C3=B3neamente, se ruega lo =
=C2=A0notifique al remitente y</span><br style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;background-color:rgb(255,255,255)"><span style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,25=
5,255)">proceda a su borrado.</span><br style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;background-color:rgb(255,255,255)"><span style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,255=
,255)">Gracias por su colaboraci=C3=B3n.</span><br style=3D"color:rgb(34,34=
,34);font-family:arial,sans-serif;background-color:rgb(255,255,255)"><br st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-color:rg=
b(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-s=
erif;background-color:rgb(255,255,255)">This message (including any attachm=
ents) may contain confidential</span><br style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;background-color:rgb(255,255,255)"><span style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,25=
5,255)">information. It is intended for use by the recipient only. Any</spa=
n><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-=
color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;background-color:rgb(255,255,255)">dissemination, copying or d=
istribution to third parties without the</span><br style=3D"color:rgb(34,34=
,34);font-family:arial,sans-serif;background-color:rgb(255,255,255)"><span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-color:=
rgb(255,255,255)">express consent of the sender is strictly prohibited. If =
you have</span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-seri=
f;background-color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;background-color:rgb(255,255,255)">received this =
message in error, please delete it immediately and</span><br style=3D"color=
:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,255,25=
5)"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;backgro=
und-color:rgb(255,255,255)">notify the sender.</span><br style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,255,255)">=
<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-=
color:rgb(255,255,255)">Thank you for your collaboration.</span>
--000000000000e9a4dc0597ea80ef--


--===============1591529430016845265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1591529430016845265==--

