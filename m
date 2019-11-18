Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 570F310084D
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 16:33:32 +0100 (CET)
Received: from [::1] (port=45678 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWj1o-00039r-RO; Mon, 18 Nov 2019 10:33:24 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:33252)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iWj1l-000360-Sb
 for USRP-users@lists.ettus.com; Mon, 18 Nov 2019 10:33:21 -0500
Received: by mail-qk1-f179.google.com with SMTP id 71so14779001qkl.0
 for <USRP-users@lists.ettus.com>; Mon, 18 Nov 2019 07:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=xUFTf26Mw8ehSGN1ei9SJKTw0470sLLCrs9CydtRV04=;
 b=R43vVV22yhWs+f7pABMDLtiMtIUIbLVW2LZb4ycqUF2CVrnjkdRRpTkFyNNNC4CqrZ
 45DyijSvBUiEYs0tnRb5+Oy++97RAqsa6lk1GrIUXBYupF+23YBs00pEYPivQGeHxPX4
 b5+dJzQ0xgImzqm0aCqYoF0e0n/w5JvjOGHxs/6dkMvCQAaiLavLjtgbVdpdjPe2Z825
 vRI0BUdwWb8Uq1f/o9WBmVqrpH+hHLo1xDyRz5kKkgRzlf74cJY6nGBILdOrb0BrIok/
 lXimweVEvSNDs2k3ZX4LM0pvDCeDBRk4+pxiSGUtUQ7MlaGfmdBeXith+2pck7Wb/e2o
 AabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=xUFTf26Mw8ehSGN1ei9SJKTw0470sLLCrs9CydtRV04=;
 b=Tow6WIoFop1WMr/+dAEEj9FSVDqaNe5u+AmaGYLda6Qhww6s+p4/GDfCWIfFVdYwbF
 E1qXvFpahjEXbtv2WSujsktVQrpI0CeiuEgnLMMNrizHJwouJcHkuh67Kcb2IV94l1F1
 2JqxeWJfNxJpGUlfxgUYWNLmaHSmIO4Cl8weZunyTiuIFuN7bfbesM3nrNKHZcBSwW8g
 tGq9r5podazVXYEZnh4M0pq44F6HfBWRBViTk53zhMuBYT1hakdTcb4sjFW/4xr3gX3E
 UGzqnDdZ+qHu8qjgo3lxwE13xgOqOhHl1KNSSwwgnfUCNeR2tlkHuMnksYHTeWcd4gN2
 K7Wg==
X-Gm-Message-State: APjAAAVzAeXNoUbqwHo/zSekeRPwq4RiUST2qxSWaLu3WPC7D0j77HQ+
 EIRiCKrSpnIJkJndT0BBNQM=
X-Google-Smtp-Source: APXvYqxExWgdEeW2FPayjrVIRKP7Z5VZYcpvAdbhVYB0S8gTxlIHHJjCDkI6t3L/wRCC/1VZMXuX5Q==
X-Received: by 2002:a37:dc03:: with SMTP id v3mr25444849qki.309.1574091161129; 
 Mon, 18 Nov 2019 07:32:41 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.gmail.com with ESMTPSA id t16sm8588925qkm.73.2019.11.18.07.32.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Nov 2019 07:32:40 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 18 Nov 2019 10:32:39 -0500
Message-Id: <FC6A3835-DE22-47F8-AB6A-C345CB2DBEAC@gmail.com>
References: <CAPAeKJE8GGRy1CGkmdX6fS=5_or2vThef8UezOw7PeX=JOFD9g@mail.gmail.com>
In-Reply-To: <CAPAeKJE8GGRy1CGkmdX6fS=5_or2vThef8UezOw7PeX=JOFD9g@mail.gmail.com>
To: =?utf-8?Q?Sergio_Parre=C3=B1o_G=C3=B3mez?= <sergio.parreno@iecisa.com>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] Maximun size Samples
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8692166259901203279=="
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


--===============8692166259901203279==
Content-Type: multipart/alternative; boundary=Apple-Mail-81492ECD-E60A-4B17-A097-7781146CAB54
Content-Transfer-Encoding: 7bit


--Apple-Mail-81492ECD-E60A-4B17-A097-7781146CAB54
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It depends on the MTU of your network interface.=20


Sent from my iPhone

> On Nov 18, 2019, at 8:17 AM, Sergio Parre=C3=B1o G=C3=B3mez via USRP-users=
 <usrp-users@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> We have a x310 SDR  with release version 3.14.1.1 of UHD. We are obtaining=
 IQ samples from 4 channels.=20
> When the radio starts to send packages with samples the maximum size of ea=
ch package of samples is 1020 samples.
> The value returned from get_max_num_samps() is 1020 samples per
> packet. Is this value a constant depending on the hardware? It would be
> great for us to reach 1024 samples per packet. =20
>=20
> Best regards=20
>=20
>=20
> --=20
> INFORM=C3=81TICA EL CORTE INGL=C3=89S
> Sergio Parre=C3=B1o Gomez
> =C3=81rea Seguridad Electr=C3=B3nica - DEFENSA
> __________________________________________________________________________=
_______________________________________
> M. +34 671 746 106
> Traves=C3=ADa de Costa Brava, 4 Mirasierra  |  28034 Madrid  | Espa=C3=B1a=

> www.iecisa.com
>=20
>=20
> Este mensaje, y en su caso, cualquier fichero anexo al mismo, puede
> contener informaci=C3=B3n confidencial, siendo para uso exclusivo del
> destinatario, quedando prohibida su divulgaci=C3=B3n copia o  distribuci=C3=
=B3n a
> terceros sin la autorizaci=C3=B3n expresa del remitente. Si Vd. ha recibid=
o
> este mensaje err=C3=B3neamente, se ruega lo  notifique al remitente y
> proceda a su borrado.
> Gracias por su colaboraci=C3=B3n.
>=20
> This message (including any attachments) may contain confidential
> information. It is intended for use by the recipient only. Any
> dissemination, copying or distribution to third parties without the
> express consent of the sender is strictly prohibited. If you have
> received this message in error, please delete it immediately and
> notify the sender.
> Thank you for your collaboration._________________________________________=
______
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-81492ECD-E60A-4B17-A097-7781146CAB54
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It depends on the MTU of your network inter=
face.&nbsp;<div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Nov 18, 2019, at 8:17 AM, Sergio Parr=
e=C3=B1o G=C3=B3mez via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr">Hi all,<br><br>We have a x310 SDR&nbsp; with release ver=
sion 3.14.1.1 of UHD. We are obtaining IQ samples from 4 channels.&nbsp;<div=
>When the radio starts to send packages with samples the maximum&nbsp;size o=
f each package of samples is 1020 samples.</div><div>The value returned from=
<i><b> get_max_num_samps()</b></i> is 1020 samples per<br>packet. Is this va=
lue a constant depending on the hardware? It would be<br>great for us to rea=
ch 1024 samples per packet.&nbsp;&nbsp;<br></div><div><br></div><div>Best re=
gards&nbsp;</div><div><br></div><div><div><br></div>-- <br><div dir=3D"ltr" c=
lass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div><div dir=3D"ltr"><p style=3D"background-color:tr=
ansparent;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;font-size:=
11.2px;margin:0px;padding:0px;vertical-align:baseline"><b><span style=3D"col=
or:rgb(0,135,80);font-family:Arial,sans-serif;font-size:12px">INFORM=C3=81TI=
CA EL CORTE INGL=C3=89S</span></b></p><p style=3D"background-color:transpare=
nt;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;margin:0px;paddin=
g:0px;vertical-align:baseline"><b><span style=3D"font-family:Arial,sans-seri=
f"><font>Sergio Parre=C3=B1o Gomez</font></span></b></p><p style=3D"backgrou=
nd-color:transparent;margin:0px;padding:0px;vertical-align:baseline"><b styl=
e=3D"color:rgb(102,102,102);font-family:Arial,&quot;Default Sans Serif&quot;=
,Verdana,Helvetica,sans-serif;font-size:x-small">=C3=81rea Seguridad Electr=C3=
=B3nica - DEFENSA</b><br></p><p style=3D"background-color:transparent;color:=
rgb(0,0,0);font-family:arial,helvetica,sans-serif;font-size:11.2px;margin:0p=
x;padding:0px;vertical-align:baseline"><span style=3D"font-family:Arial,sans=
-serif;font-size:6.66px">___________________________________________________=
______________________________________________________________</span><br></p=
><p style=3D"background-color:transparent;color:rgb(0,0,0);font-family:arial=
,helvetica,sans-serif;font-size:11.2px;margin:0px;padding:0px;vertical-align=
:baseline"><span lang=3D"EN-US" style=3D"font-family:Arial,sans-serif;font-s=
ize:12px">M. +34 671 746 106</span></p><p style=3D"background-color:transpar=
ent;color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;font-size:11.2px=
;margin:0px;padding:0px;vertical-align:baseline"><span style=3D"color:rgb(89=
,89,89);font-family:Arial,sans-serif;font-size:12px;background-color:transpa=
rent">Traves=C3=ADa de Costa Brava, 4 Mirasierra&nbsp; | &nbsp;28034 Madrid &=
nbsp;| Espa=C3=B1a</span></p><p style=3D"background-color:transparent;color:=
rgb(0,0,0);font-family:arial,helvetica,sans-serif;font-size:11.2px;margin:0p=
x;padding:0px;vertical-align:baseline"><span style=3D"color:rgb(89,89,89);fo=
nt-size:14.66px"></span></p><p style=3D"background-color:transparent;color:r=
gb(0,0,0);font-family:arial,helvetica,sans-serif;font-size:11.2px;margin:0px=
;padding:0px;vertical-align:baseline"><b><span style=3D"color:rgb(0,135,80);=
font-family:Arial,sans-serif;font-size:12px"><a href=3D"http://www.iecisa.co=
m/" style=3D"color:rgb(16,92,182)" target=3D"_blank">www.iecisa.com</a></spa=
n></b></p></div></div></div></div></div></div></div></div>

<br>
<br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-col=
or:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;background-color:rgb(255,255,255)">Este mensaje, y en su caso, cual=
quier fichero anexo al mismo, puede</span><br style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;background-color:rgb(255,255,255)"><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,2=
55,255)">contener informaci=C3=B3n confidencial, siendo para uso exclusivo d=
el</span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;backg=
round-color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;background-color:rgb(255,255,255)">destinatario, quedando p=
rohibida su divulgaci=C3=B3n copia o &nbsp;distribuci=C3=B3n a</span><br sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(=
255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-seri=
f;background-color:rgb(255,255,255)">terceros sin la autorizaci=C3=B3n expre=
sa del remitente. Si Vd. ha recibido</span><br style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;background-color:rgb(255,255,255)"><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,2=
55,255)">este mensaje err=C3=B3neamente, se ruega lo &nbsp;notifique al remi=
tente y</span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
background-color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;background-color:rgb(255,255,255)">proceda a su borra=
do.</span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;back=
ground-color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-famil=
y:arial,sans-serif;background-color:rgb(255,255,255)">Gracias por su colabor=
aci=C3=B3n.</span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;background-color:rgb(255,255,255)"><br style=3D"color:rgb(34,34,34);font=
-family:arial,sans-serif;background-color:rgb(255,255,255)"><span style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,255=
,255)">This message (including any attachments) may contain confidential</sp=
an><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-=
color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;background-color:rgb(255,255,255)">information. It is intended f=
or use by the recipient only. Any</span><br style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;background-color:rgb(255,255,255)"><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(255,25=
5,255)">dissemination, copying or distribution to third parties without the<=
/span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;backgrou=
nd-color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;background-color:rgb(255,255,255)">express consent of the sen=
der is strictly prohibited. If you have</span><br style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;background-color:rgb(255,255,255)"><span sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-color:rgb(=
255,255,255)">received this message in error, please delete it immediately a=
nd</span><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;backg=
round-color:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;background-color:rgb(255,255,255)">notify the sender.</spa=
n><br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;background-c=
olor:rgb(255,255,255)"><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;background-color:rgb(255,255,255)">Thank you for your collaborati=
on.</span><span>_______________________________________________</span><br><s=
pan>USRP-users mailing list</span><br><span>USRP-users@lists.ettus.com</span=
><br><span>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m</span><br></div></blockquote></div></body></html>=

--Apple-Mail-81492ECD-E60A-4B17-A097-7781146CAB54--


--===============8692166259901203279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8692166259901203279==--

