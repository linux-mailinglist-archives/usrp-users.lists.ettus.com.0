Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE28100648
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 14:17:09 +0100 (CET)
Received: from [::1] (port=54970 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWgto-0003uW-Ng; Mon, 18 Nov 2019 08:17:00 -0500
Received: from mx07-002f8c01.pphosted.com ([185.132.180.142]:58560)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <sergio.parreno@iecisa.com>)
 id 1iWgtl-0003pU-1g
 for usrp-users@lists.ettus.com; Mon, 18 Nov 2019 08:16:57 -0500
Received: from pps.filterd (m0143906.ppops.net [127.0.0.1])
 by mx07-002f8c01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAIDBInO015267
 for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2019 14:16:15 +0100
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com
 [209.85.221.198])
 by mx07-002f8c01.pphosted.com with ESMTP id 2wa95h51vw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2019 14:16:15 +0100
Received: by mail-vk1-f198.google.com with SMTP id y189so3220803vka.14
 for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2019 05:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iecisa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=crDTodL7GaFy40CzYoIvAoyd13F1qW9jAJkXDFbiEoU=;
 b=HTpctNf2t+MAxd2bb14dUacGQ1ccW7n+Hghyi8OMMu7hMBfiOdJUBTNuRWSHZiiwmK
 QZZCN7AjoZusohWJ+ZYzHPDXVmPEwitDVR6WkWxQtkyeq6PX6yRHm23FnTgTXWpiEGWm
 ZCc48cNWRtGC40gVL8Ptg5+hLxPjgOJNynx6Gbx11O/4u98yPrG9rFe9gIKPK0u3X4B7
 AU4wqhWcsM+df/Vj13+gSZL+ENRVPa2WPyFJxL7JurZJtHjhOMzuaSX+Ztb+BUMs5cH0
 uqpzI5Y5PgE5l9ZGay01hiFm49dukpyNRLIfV06wncJRMskCAmJ/DMB+1QQwEBQ/3CJM
 tz3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=crDTodL7GaFy40CzYoIvAoyd13F1qW9jAJkXDFbiEoU=;
 b=DBQgWdmAh651MUCY913kDnpxrQPZ9Q0LTMCtQAjFJTLsi0LmiYc7rwSQ7qnGtq1d8D
 XZITSRKByxDGjaRt0mRGnxfkge27MZPOVMtLcd6jlpGm60LTvXTd9cEt0RNpd5FntHnW
 NGKo0sH/GvPuN+JgiqmASFNLqhHjA8zjwyARgvJ98sQwmCzIJdYySfLpKJ8gQ8Z3pz9e
 emxH7pgHYjCDEmTakj4dxiauVgT/BDGkc8SnKoq/W3SFmeKSCI72kx1WUPyKCFICGr8m
 SBQBTyWAFgavWv7mV8qq66Fq+j+y0L+6OUFQV+lxHrPlxVJJanLuw92FOni3CWqGy1Em
 Z9fg==
X-Gm-Message-State: APjAAAVdu4Oo5lIi/O5U7Mwkw141pJNQKYPGwT2jBeXLR2zU26WenQNl
 B03FkV/YlVHLE5qopr4DvOL+bcNFZmJdW61VLWdI6NQzY4nhHS6uQv1iiq+Ux7Xz3FUfkf7TtMT
 Z8ht7q4kmaamZZiwCc/p1fWASC75JhPfhIbum
X-Received: by 2002:a67:ef90:: with SMTP id r16mr17651135vsp.199.1574082973494; 
 Mon, 18 Nov 2019 05:16:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqyQ6Tld/ogfQRIG4b7zRHX7tNC4Zf1mQAYaIXW+h+ICCNs92uEDqWVrH3mA6S9WrylsWnxAZZ+bJFVE2dROljo=
X-Received: by 2002:a67:ef90:: with SMTP id r16mr17651113vsp.199.1574082973113; 
 Mon, 18 Nov 2019 05:16:13 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 18 Nov 2019 14:15:37 +0100
Message-ID: <CAPAeKJE8GGRy1CGkmdX6fS=5_or2vThef8UezOw7PeX=JOFD9g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Maximun size Samples
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
Content-Type: multipart/mixed; boundary="===============0864367760247016920=="
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

--===============0864367760247016920==
Content-Type: multipart/alternative; boundary="00000000000075b8bd05979ec036"

--00000000000075b8bd05979ec036
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

We have a x310 SDR  with release version 3.14.1.1 of UHD. We are obtaining
IQ samples from 4 channels.
When the radio starts to send packages with samples the maximum size of
each package of samples is 1020 samples.
The value returned from* get_max_num_samps()* is 1020 samples per
packet. Is this value a constant depending on the hardware? It would be
great for us to reach 1024 samples per packet.

Best regards


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

--00000000000075b8bd05979ec036
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>We have a x310 SDR=C2=A0 with release versi=
on 3.14.1.1 of UHD. We are obtaining IQ samples from 4 channels.=C2=A0<div>=
When the radio starts to send packages with samples the maximum=C2=A0size o=
f each package of samples is 1020 samples.</div><div>The value returned fro=
m<i><b> get_max_num_samps()</b></i> is 1020 samples per<br>packet. Is this =
value a constant depending on the hardware? It would be<br>great for us to =
reach 1024 samples per packet.=C2=A0=C2=A0<br></div><div><br></div><div>Bes=
t regards=C2=A0</div><div><br></div><div><div><br></div>-- <br><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><p style=3D"background=
-color:transparent;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;=
font-size:11.2px;margin:0px;padding:0px;vertical-align:baseline"><b><span s=
tyle=3D"color:rgb(0,135,80);font-family:Arial,sans-serif;font-size:12px">IN=
FORM=C3=81TICA EL CORTE INGL=C3=89S</span></b></p><p style=3D"background-co=
lor:transparent;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;mar=
gin:0px;padding:0px;vertical-align:baseline"><b><span style=3D"font-family:=
Arial,sans-serif"><font>Sergio Parre=C3=B1o Gomez</font></span></b></p><p s=
tyle=3D"background-color:transparent;margin:0px;padding:0px;vertical-align:=
baseline"><b style=3D"color:rgb(102,102,102);font-family:Arial,&quot;Defaul=
t Sans Serif&quot;,Verdana,Helvetica,sans-serif;font-size:x-small">=C3=81re=
a Seguridad Electr=C3=B3nica - DEFENSA</b><br></p><p style=3D"background-co=
lor:transparent;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;fon=
t-size:11.2px;margin:0px;padding:0px;vertical-align:baseline"><span style=
=3D"font-family:Arial,sans-serif;font-size:6.66px">________________________=
___________________________________________________________________________=
______________</span><br></p><p style=3D"background-color:transparent;color=
:rgb(0,0,0);font-family:arial,helvetica,sans-serif;font-size:11.2px;margin:=
0px;padding:0px;vertical-align:baseline"><span lang=3D"EN-US" style=3D"font=
-family:Arial,sans-serif;font-size:12px">M. +34 671 746 106</span></p><p st=
yle=3D"background-color:transparent;color:rgb(0,0,0);font-family:arial,helv=
etica,sans-serif;font-size:11.2px;margin:0px;padding:0px;vertical-align:bas=
eline"><span style=3D"color:rgb(89,89,89);font-family:Arial,sans-serif;font=
-size:12px;background-color:transparent">Traves=C3=ADa de Costa Brava, 4 Mi=
rasierra=C2=A0 | =C2=A028034 Madrid =C2=A0| Espa=C3=B1a</span></p><p style=
=3D"background-color:transparent;color:rgb(0,0,0);font-family:arial,helveti=
ca,sans-serif;font-size:11.2px;margin:0px;padding:0px;vertical-align:baseli=
ne"><span style=3D"color:rgb(89,89,89);font-size:14.66px"></span></p><p sty=
le=3D"background-color:transparent;color:rgb(0,0,0);font-family:arial,helve=
tica,sans-serif;font-size:11.2px;margin:0px;padding:0px;vertical-align:base=
line"><b><span style=3D"color:rgb(0,135,80);font-family:Arial,sans-serif;fo=
nt-size:12px"><a href=3D"http://www.iecisa.com/" style=3D"color:rgb(16,92,1=
82)" target=3D"_blank">www.iecisa.com</a></span></b></p></div></div></div><=
/div></div></div></div></div>

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
--00000000000075b8bd05979ec036--


--===============0864367760247016920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0864367760247016920==--

