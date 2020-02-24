Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6730116B05D
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 20:39:56 +0100 (CET)
Received: from [::1] (port=51224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6Ja6-0002t9-TB; Mon, 24 Feb 2020 14:39:54 -0500
Received: from mail-qt1-f170.google.com ([209.85.160.170]:35928)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1j6Ja2-0002l9-P4
 for USRP-users@lists.ettus.com; Mon, 24 Feb 2020 14:39:50 -0500
Received: by mail-qt1-f170.google.com with SMTP id t13so7382351qto.3
 for <USRP-users@lists.ettus.com>; Mon, 24 Feb 2020 11:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=5cVwplPQfcXCs8Dxe69rgC0QDVHrg9L2i+Y5PebYzbo=;
 b=Yj0VNCx3MaBFJ3COcjV/RKBEk1HXpEXZWKwheJ753Lgml0cYhP13c6vFRgpkBoZHxX
 APeMfJ+oEXI2PsuIRjO2qgWkXRU2Q4y73tqFMOpHR6L6Idf1AhfHrPpw3xXXO2mS1k4P
 egeqNYyvHVtep/fIXk+UA2t9QcatU6ac+k8RUHr0y42EGEvYkzCiK/Se/MHdoUYLTYc4
 UobKTiY/cTTYV+RDOtIwpUcEe8ghSNiIm4XTDO8Z56huY0MoKKTGFXe+P92XIeXqp/h3
 km+3Zx7WV3ARCt/OxgSJyeCnWNSPEDhsG9F9IU0UO6YjIfpkFu7V5vKBXGMWWRkimks9
 nB6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=5cVwplPQfcXCs8Dxe69rgC0QDVHrg9L2i+Y5PebYzbo=;
 b=SP9oqqy+P42TlLviDdTYzgwnJrZ1D18KeluLif7aezANG6+o8lP+VVJ2ONdaCGPk8i
 YVsJAooBKi1teQjul4ySn+S5HehvGF0GKaQqEdvhm/WbDUaBRqy+iFqzA2dlb7AJD1fS
 cVrZ7V2aiK+6B0n4r4/KJc3rGgzfNlGxcZsh/mwJnEmqJ8NbZauIQso5PWhC/RsT6vQ6
 u0UzbJZjVHRD31+6wPEKjR+U4qj9IRiQCRP0A1lCHDcDMWk7LVoYqGmWLYgkbxZmoEPP
 j4bYAKfVhQ9JbyU3+hkovba59rIOsclPyxCzOj0l8zYqhwkjlF5D61TJEmXg6Zo9+NZW
 C0Tg==
X-Gm-Message-State: APjAAAWj889aDDtsy44QkP9SkVuBjL8yycw8XtiUK4YPmGeX7z4pbDLW
 /gpdLRR/rFAW7/0wFmfoRC8=
X-Google-Smtp-Source: APXvYqxStyfV0aR9BH6m3C6hwCISTw/U81hCHFASF8XE3LBzJKmM0xdSnanzZonnB9FvBwtiBEwIew==
X-Received: by 2002:ac8:4cc9:: with SMTP id l9mr47021191qtv.207.1582573150154; 
 Mon, 24 Feb 2020 11:39:10 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.gmail.com with ESMTPSA id j30sm6225565qki.96.2020.02.24.11.39.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 11:39:09 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 24 Feb 2020 14:39:08 -0500
Message-Id: <E3FDE3B3-FCC0-4B33-BE61-2C5F58B94319@gmail.com>
References: <23a401d5eb48$525cbe00$f7163a00$@sdr-radio.com>
In-Reply-To: <23a401d5eb48$525cbe00$f7163a00$@sdr-radio.com>
To: simon@sdr-radio.com
X-Mailer: iPhone Mail (17D50)
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows
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
Content-Type: multipart/mixed; boundary="===============1830362446001835808=="
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


--===============1830362446001835808==
Content-Type: multipart/alternative; boundary=Apple-Mail-47741B51-018D-4654-977D-7FA1FB33EB97
Content-Transfer-Encoding: 7bit


--Apple-Mail-47741B51-018D-4654-977D-7FA1FB33EB97
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Just to emphasize, the Network Mode for the E310 was never really encouraged=
. The performance is poor due to hardware architecture issues. The E310 was o=
nly ever intended to be used as a stand-alone embedded radio platform, and n=
ot like a =E2=80=9Cconnect to a beefy computer=E2=80=9D USRP like the N and X=
 and B series.=20


Sent from my iPhone

> On Feb 24, 2020, at 2:27 PM, Simon G4ELI via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi Nate,
> =20
> Sorry, using GNU Radio is not an option, the aim is to connect to the E310=
 via a network and stream direct. As this isn=E2=80=99t possible with 3.15 L=
TS I=E2=80=99ll let the user know, thanks.
> =20
> Simon Brown, G4ELI
> https://www.sdr-radio.com
> =20
> From: Nate Temple <nate.temple@ettus.com>=20
> Sent: 24 February 2020 19:26
> To: simon@sdr-radio.com
> Cc: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] E310, 3.15 LTS, Windows
> =20
> Hi Simon,
>=20
> No, the USB cable will only provide serial access.=20
>=20
> You could use GNU Radio to stream samples via ZMQ/TCP/UDP sockets. You cou=
ld also use pure C++/UHD API to stream via a UDP interface such as with the e=
xample program rx_samples_to_udp.
>=20
> Regards,
> Nate Temple
> =20
> On Mon, Feb 24, 2020 at 11:19 AM <simon@sdr-radio.com> wrote:
> Thanks,
> =20
> Would the E310 work with the USB cable?
> =20
> Simon Brown, G4ELI
> https://www.sdr-radio.com
> =20
> From: Nate Temple <nate.temple@ettus.com>=20
> Sent: 24 February 2020 19:11
> To: simon@sdr-radio.com
> Cc: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] E310, 3.15 LTS, Windows
> =20
> Hi Simon,
>=20
> The E310 network mode was removed from UHD with the switch to the MPM base=
d file systems. If you need to use the network mode, you should use an older=
 version of UHD.
>=20
> Regards,
> Nate Temple
> =20
> On Mon, Feb 24, 2020 at 11:05 AM Simon G4ELI via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
> Hi All,
> =20
> A user cannot =E2=80=98see=E2=80=99 his E310 using 3.15 LTS compiled from s=
ource by me. The E310 is connected by Ethernet GigE.
> =20
> I=E2=80=99m wondering if there=E2=80=99s something special needed or if th=
ere=E2=80=99s a magic option I should enable in the source =E2=80=93 the ENA=
BLE_E300 option is checked, all looks good to me.
> =20
> There is a second person who will soon be testing just in case it=E2=80=99=
s finger trouble.
> =20
> Simon Brown, G4ELI
> https://www.sdr-radio.com
> =20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-47741B51-018D-4654-977D-7FA1FB33EB97
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Just to emphasize, the Network Mode for the=
 E310 was never really encouraged. The performance is poor due to hardware a=
rchitecture issues. The E310 was only ever intended to be used as a stand-al=
one embedded radio platform, and not like a =E2=80=9Cconnect to a beefy comp=
uter=E2=80=9D USRP like the N and X and B series.&nbsp;<div><br><br><div dir=
=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"c=
ite">On Feb 24, 2020, at 2:27 PM, Simon G4ELI via USRP-users &lt;usrp-users@=
lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cit=
e"><div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"Content-Type" content=3D"te=
xt/html; charset=3Dutf-8"><meta name=3D"Generator" content=3D"Microsoft Word=
 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--><div class=3D"WordSection1"><p class=3D"Ms=
oNormal"><span style=3D"mso-fareast-language:EN-US">Hi Nate,<o:p></o:p></spa=
n></p><p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p=
>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span style=3D"mso-fareast-la=
nguage:EN-US">Sorry, using GNU Radio is not an option, the aim is to connect=
 to the E310 via a network and stream direct. As this isn=E2=80=99t possible=
 with 3.15 LTS I=E2=80=99ll let the user know, thanks.<o:p></o:p></span></p>=
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbsp=
;</o:p></span></p><p class=3D"MsoNormal">Simon Brown, G4ELI<o:p></o:p></p><p=
 class=3D"MsoNormal">https://www.sdr-radio.com<o:p></o:p></p><p class=3D"Mso=
Normal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span><=
/p><p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Nate Temple &lt;nate.temple@ettus.com&gt; <br><b>Sent:</b> 24 Fe=
bruary 2020 19:26<br><b>To:</b> simon@sdr-radio.com<br><b>Cc:</b> usrp-users=
@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] E310, 3.15 LTS, Windows=
<o:p></o:p></span></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><div><div>=
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-ser=
if">Hi Simon,<br><br>No, the USB cable will only provide serial access. <br>=
<br>You could use GNU Radio to stream samples via ZMQ/TCP/UDP sockets. You c=
ould also use pure C++/UHD API to stream via a UDP interface such as with th=
e example program rx_samples_to_udp.<br><br>Regards,<br>Nate Temple<o:p></o:=
p></span></p></div></div><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><div><d=
iv><p class=3D"MsoNormal">On Mon, Feb 24, 2020 at 11:19 AM &lt;<a href=3D"ma=
ilto:simon@sdr-radio.com">simon@sdr-radio.com</a>&gt; wrote:<o:p></o:p></p><=
/div><blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;paddin=
g:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm"><div><div><p class=3D=
"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Tha=
nks,<o:p></o:p></p><p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto">&nbsp;<o:p></o:p></p><p class=3D"MsoNormal" style=
=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Would the E310 work w=
ith the USB cable?<o:p></o:p></p><p class=3D"MsoNormal" style=3D"mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto">&nbsp;<o:p></o:p></p><p class=3D"Ms=
oNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Simon B=
rown, G4ELI<o:p></o:p></p><p class=3D"MsoNormal" style=3D"mso-margin-top-alt=
:auto;mso-margin-bottom-alt:auto"><a href=3D"https://www.sdr-radio.com" targ=
et=3D"_blank">https://www.sdr-radio.com</a><o:p></o:p></p><p class=3D"MsoNor=
mal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">&nbsp;<o:p=
></o:p></p><p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto"><b><span lang=3D"EN-US">From:</span></b><span lang=3D"EN-=
US"> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_bla=
nk">nate.temple@ettus.com</a>&gt; <br><b>Sent:</b> 24 February 2020 19:11<br=
><b>To:</b> <a href=3D"mailto:simon@sdr-radio.com" target=3D"_blank">simon@s=
dr-radio.com</a><br><b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:</b> Re: [US=
RP-users] E310, 3.15 LTS, Windows</span><o:p></o:p></p><p class=3D"MsoNormal=
" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">&nbsp;<o:p></=
o:p></p><div><div><p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto"><span style=3D"font-family:&quot;Arial&quot;,sans-=
serif">Hi Simon,<br><br>The E310 network mode was removed from UHD with the s=
witch to the MPM based file systems. If you need to use the network mode, yo=
u should use an older version of UHD.<br><br>Regards,<br>Nate Temple</span><=
o:p></o:p></p></div></div><p class=3D"MsoNormal" style=3D"mso-margin-top-alt=
:auto;mso-margin-bottom-alt:auto">&nbsp;<o:p></o:p></p><div><div><p class=3D=
"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">On M=
on, Feb 24, 2020 at 11:05 AM Simon G4ELI via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&gt; wrote:<o:p></o:p></p></div><blockquote style=3D"border:none;border-le=
ft:solid windowtext 1.0pt;padding:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin=
-top:5.0pt;margin-right:0cm;margin-bottom:5.0pt;border-color:currentcolor cu=
rrentcolor currentcolor rgb(204,204,204)"><div><div><p class=3D"MsoNormal" s=
tyle=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Hi All,<o:p></o:=
p></p><p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto">&nbsp;<o:p></o:p></p><p class=3D"MsoNormal" style=3D"mso-margi=
n-top-alt:auto;mso-margin-bottom-alt:auto">A user cannot =E2=80=98see=E2=80=99=
 his E310 using 3.15 LTS compiled from source by me. The E310 is connected b=
y Ethernet GigE.<o:p></o:p></p><p class=3D"MsoNormal" style=3D"mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto">&nbsp;<o:p></o:p></p><p class=3D"MsoN=
ormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I=E2=80=99=
m wondering if there=E2=80=99s something special needed or if there=E2=80=99=
s a magic option I should enable in the source =E2=80=93 the ENABLE_E300 opt=
ion is checked, all looks good to me.<o:p></o:p></p><p class=3D"MsoNormal" s=
tyle=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">&nbsp;<o:p></o:p=
></p><p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto">There is a second person who will soon be testing just in case i=
t=E2=80=99s finger trouble.<o:p></o:p></p><p class=3D"MsoNormal" style=3D"ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto">&nbsp;<o:p></o:p></p><p cl=
ass=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o">Simon Brown, G4ELI<o:p></o:p></p><p class=3D"MsoNormal" style=3D"mso-marg=
in-top-alt:auto;mso-margin-bottom-alt:auto"><a href=3D"https://www.sdr-radio=
.com" target=3D"_blank">https://www.sdr-radio.com</a><o:p></o:p></p><p class=
=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">=
&nbsp;<o:p></o:p></p></div></div><p class=3D"MsoNormal" style=3D"mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto">___________________________________=
____________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D=
"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<=
/a><o:p></o:p></p></blockquote></div></div></div></blockquote></div></div><s=
pan>_______________________________________________</span><br><span>USRP-use=
rs mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span>h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><br>=
</div></blockquote></div></body></html>=

--Apple-Mail-47741B51-018D-4654-977D-7FA1FB33EB97--


--===============1830362446001835808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1830362446001835808==--

