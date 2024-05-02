Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F228B932F
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 03:46:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62470385605
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 21:46:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714614405; bh=ayOf0C8QWQUwuQsDlWP9ZJiptjrIK/rlZ7VCHR5tlnA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TbV9E9XVG9w61I+MeOAsZobCyLN5x8sYrtIuclnhDvrEiwEmNRindybI/qtnH7+0q
	 nh9rrKpw0NxztePnwOPeb5/TaGGdNPsPWFxToe5XS+011ooV4asGdNfY7/mgQcNP8K
	 iCbTeR+C1l+GvP7twPn6nMb1eZAsPCZZ+ASEAz7esWgpK0+43KnjFoKLokzjWSyoUV
	 9JCr0pkL3nNiKQtqTbENoIqPWB+XQKZhQNRtAulS3HZH220DRVRf6Y+M3NZ0W89LbW
	 HFaTk7nClNvNHHz+mhIlfPAevOBnZ3QfMRq5Ieh1oktEyrFKhWfdC0FyJ7mK4t38Oa
	 lHAIF1ORBk3HQ==
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D437385152
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 21:46:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Hs3+yvPk";
	dkim-atps=neutral
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2b34be0a43fso116740a91.1
        for <usrp-users@lists.ettus.com>; Wed, 01 May 2024 18:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714614372; x=1715219172; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=At75aP7XHhy64scZlBm2t3zjxPK9NH4lrn1jb8qEKYM=;
        b=Hs3+yvPk3zMX5I/gb/FqxFaTX+S8A0cmcAkrYUg0Ryiso+MDnzK7sTOIf0nSYX251W
         fUdItHQ1/KiG/r3u7oOixxITpKUtDcunkgEkmZ/y/G51/PQskTS1UTiioGCBoFtlyU5r
         jyzPTrtwN6gnf/PHxupSKKpeP+9FzIXHbbtonzuDf2zhO1E1XMENDlTbUXTS0GUuuzpS
         f/oNta611ry284XiLzF6tlpBILXUWaKwGKIk8K21nQ2a55kq6Lx3/f/eBIIYoN1RxmcX
         v4TnSTJP2sV/wAAr0kr1pAMVen+C7PAfctIo9I8jzmhc9ekFmpOg41aj/AHYCN1gTfoe
         qYpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714614372; x=1715219172;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=At75aP7XHhy64scZlBm2t3zjxPK9NH4lrn1jb8qEKYM=;
        b=BTd2jApgdkwDdQAISxBtVBd4RUjk8ExFQqureT9KguDMXxeAbpvbxYUvBk8s/a+Pdi
         XBXzKDCxw7r3K+1+TzmBmKTy71aa+LCZxRCvshjZN0gMBPTCg6uSdsx/XMLd1rm3jgF4
         l/yY3Z8LilZ0Mb8N6Snt8xYrC3yXhi4BRDcUfsgrQMNkEqona1rKKFLuqCL5MlRrs+I5
         6qFmYFJw1uAn19WP0spYERANgTnehbidTHmfPNg2Ti72SThsGZAiRF7WuZpiIpwjHKxJ
         txAMeZbPgrP2WL4MSLoirnDHzVF8ZwGgknZlPJnlAYLROBb0WQqD1pr84plDnvI0FD4I
         55+g==
X-Gm-Message-State: AOJu0Yx09z9RMZJanRaBT2nAzxtN8RIwp+VSYPZrN1ivw2GwcMs7hgtb
	z1DRjeZXzPEg8rKW+50LTgGpfG99gZt56PyVvvQFifXilpBGIKVqcYU9OLtfawd32T2nkisZART
	cKoAVI0+/q7868ZIE7vgjsWE3Lvfgv4U8
X-Google-Smtp-Source: AGHT+IFzwMp7NyUHs5FGOoQnDIxEoxN8hh2RKLTkkEDv+puTZ23LTBBeK6S0VO9ASUJWL9oFmZnw922JEASomkiwePE=
X-Received: by 2002:a17:90b:50c7:b0:2a5:3249:d230 with SMTP id
 sb7-20020a17090b50c700b002a53249d230mr4361892pjb.3.1714614371866; Wed, 01 May
 2024 18:46:11 -0700 (PDT)
MIME-Version: 1.0
From: Ethan C <ethanclarke365@gmail.com>
Date: Wed, 1 May 2024 18:46:00 -0700
Message-ID: <CAM0spwrUqtQj3_CXi7n2NQJZhLXKDOhcpxnir7HEU2jToe0dvQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 4NYA3DOXOZLOYLQDLT5D4CIFRCI5ASFG
X-Message-ID-Hash: 4NYA3DOXOZLOYLQDLT5D4CIFRCI5ASFG
X-MailFrom: ethanclarke365@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 GPIO ATR not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4NYA3DOXOZLOYLQDLT5D4CIFRCI5ASFG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0125035476141217442=="

--===============0125035476141217442==
Content-Type: multipart/alternative; boundary="0000000000008fe0a306176ec491"

--0000000000008fe0a306176ec491
Content-Type: text/plain; charset="UTF-8"

I'm trying to use the GPIO ATR functionality on an E310 using a 'Python
Snippet' block in Gnuradio. I have code that works this way for a B210 and
am adapting it to work for the E310. However, I have not had any success.
The get_gpio_attr READBACK attribute (reads back input GPIOs but can also
read which output pins are high) print statements indicate GPIO data pin 6
should be high but there is nothing there when checked with a voltmeter.
I'm happy to provide any additional information.
Thanks,
Ethan

E310 GPIO ATR code

####################################

#   CHANGING GPIO STATE FOR E310   #

####################################

import uhd

ATR_GPIO_MASK = 0b111111

# 1=atr 0=manual

ATR_CTRL = 0b111111

# 1=output 0=input

ATR_DDR = 0b111111

# 1=high on 0=nothing

ATR_0X = 0b100000

ATR_RX = 0b010000

ATR_TX = 0b001000

ATR_XX = 0b000100

# find usrp device

USRP_E310 = uhd.usrp.MultiUSRP('serial=F644E0')

# find usrp gpio port name

BANK_NAME = USRP_E310.get_gpio_banks(0)[0]

print('\n\n')

print( USRP_E310.get_gpio_attr(BANK_NAME, 'CTRL') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'DDR') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'OUT') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'ATR_0X') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'ATR_RX') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'ATR_TX') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'ATR_XX') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'READBACK') )

print('\n\n')

# configure gpio for atr operation

USRP_E310.set_gpio_attr(BANK_NAME, 'CTRL', ATR_CTRL, ATR_GPIO_MASK)

USRP_E310.set_gpio_attr(BANK_NAME, 'DDR', ATR_DDR, ATR_GPIO_MASK)

USRP_E310.set_gpio_attr(BANK_NAME, 'ATR_0X', ATR_0X, ATR_GPIO_MASK)

USRP_E310.set_gpio_attr(BANK_NAME, 'ATR_RX', ATR_RX, ATR_GPIO_MASK)

USRP_E310.set_gpio_attr(BANK_NAME, 'ATR_TX', ATR_TX, ATR_GPIO_MASK)

USRP_E310.set_gpio_attr(BANK_NAME, 'ATR_XX', ATR_XX, ATR_GPIO_MASK)

print('\n\n')

print( USRP_E310.get_gpio_attr(BANK_NAME, 'CTRL') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'DDR') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'OUT') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'ATR_0X') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'ATR_RX') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'ATR_TX') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'ATR_XX') )

print( USRP_E310.get_gpio_attr(BANK_NAME, 'READBACK') )

print('\n\n')


Print statement outputs

0

4294967295

0

0

0

0

0

0

63 < CTRL

4294967295 < DDR

0 < OUT

32 < 0X (idle) set for pin 6

16 < RX set for pin 5

8 < TX set for pin 4

4 < XX (full duplex) set for pin 3

32 < READBACK detects high on pin 6

--0000000000008fe0a306176ec491
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to use the GPIO ATR functionality on a=
n E310 using a &#39;Python Snippet&#39; block in Gnuradio. I have code that=
 works this way for a B210 and am adapting it to work for the E310. However=
, I have not had any success. The get_gpio_attr READBACK attribute (reads b=
ack input GPIOs but can also read which output pins are high) print stateme=
nts indicate GPIO data pin 6 should be high but there is nothing there when=
 checked with a voltmeter.</div><div>I&#39;m happy to provide any additiona=
l information.</div><div>Thanks,</div><div>Ethan<br></div><div><br></div><d=
iv><font size=3D"4" style=3D"background-color:rgb(238,238,238)">E310 GPIO A=
TR code</font><br></div><div>
<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" =
id=3D"gmail-docs-internal-guid-901347c3-7fff-838f-d2f5-63fb5fbbb693"><font =
style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-=
family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap">####################################</span></font></p><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font sty=
le=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-fam=
ily:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap"># =C2=A0 </span><span style=3D"font-family:Arial,sans-serif;color:=
rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre-wrap"><span class=3D"gma=
il-Apple-tab-span" style=3D"white-space:pre">	</span></span><span style=3D"=
font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:no=
rmal;font-variant:normal;text-decoration:none;vertical-align:baseline;white=
-space:pre-wrap">CHANGING GPIO STATE FOR E310 =C2=A0 </span><span style=3D"=
font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:no=
rmal;font-variant:normal;text-decoration:none;vertical-align:baseline;white=
-space:pre-wrap"><span class=3D"gmail-Apple-tab-span" style=3D"white-space:=
pre">	</span></span><span style=3D"font-family:Arial,sans-serif;color:rgb(0=
,0,0);font-weight:400;font-style:normal;font-variant:normal;text-decoration=
:none;vertical-align:baseline;white-space:pre-wrap">#</span></font></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><fon=
t style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"fon=
t-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap">####################################</span></font></p><font s=
tyle=3D"background-color:rgb(238,238,238)" size=3D"2"><br></font><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font styl=
e=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">import uhd</span></font></p><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238=
,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb=
(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap">ATR_GPIO_MASK =3D 0b1=
11111</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238,238,238)" si=
ze=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-=
weight:400;font-style:normal;font-variant:normal;text-decoration:none;verti=
cal-align:baseline;white-space:pre-wrap"># 1=3Datr 0=3Dmanual</span></font>=
</p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><span styl=
e=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-sty=
le:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;=
white-space:pre-wrap">ATR_CTRL =3D 0b111111</span></font></p><p dir=3D"ltr"=
 style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D=
"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:A=
rial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-var=
iant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wr=
ap"># 1=3Doutput 0=3Dinput</span></font></p><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-color=
:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;c=
olor:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap">ATR_DDR =3D 0=
b111111</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238,238,238)" =
size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);fon=
t-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ver=
tical-align:baseline;white-space:pre-wrap"># 1=3Dhigh on</span><span style=
=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap"><span class=3D"gmail-Apple-tab-span" style=3D"white-sp=
ace:pre">	</span></span><span style=3D"font-family:Arial,sans-serif;color:r=
gb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-decora=
tion:none;vertical-align:baseline;white-space:pre-wrap">0=3Dnothing</span><=
/font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><spa=
n style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;fo=
nt-style:normal;font-variant:normal;text-decoration:none;vertical-align:bas=
eline;white-space:pre-wrap">ATR_0X =3D 0b100000</span></font></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font styl=
e=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">ATR_RX =3D 0b010000</span></font></p><p dir=3D"ltr" style=3D"line-h=
eight:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-colo=
r:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;=
color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text=
-decoration:none;vertical-align:baseline;white-space:pre-wrap">ATR_TX =3D 0=
b001000</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238,238,238)" =
size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);fon=
t-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ver=
tical-align:baseline;white-space:pre-wrap">ATR_XX =3D 0b000100</span></font=
></p><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><br></fon=
t><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=
=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap"># find usrp device</span></font></p><p dir=3D"ltr" sty=
le=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"bac=
kground-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial=
,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant=
:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=
USRP_E310 =3D uhd.usrp.MultiUSRP(&#39;serial=3DF644E0&#39;)</span></font></=
p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=
=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap"># find usrp gpio port name</span></font></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font styl=
e=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">BANK_NAME =3D USRP_E310.get_gpio_banks(0)[0]</span></font></p><font=
 style=3D"background-color:rgb(238,238,238)" size=3D"2"><br></font><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font =
style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-=
family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap">print(&#39;\n\n&#39;)</span></font></p><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"backgroun=
d-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-=
serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">print(=
 USRP_E310.get_gpio_attr(BANK_NAME, &#39;CTRL&#39;) )</span></font></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><fon=
t style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"fon=
t-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap">print( USRP_E310.get_gpio_attr(BANK_NAME, &#39;DDR&#39;) )</s=
pan></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;marg=
in-bottom:0pt"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"=
><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap">print( USRP_E310.get_gpio_attr(BANK_NAME, =
&#39;OUT&#39;) )</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238,2=
38,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb(0=
,0,0);font-weight:400;font-style:normal;font-variant:normal;text-decoration=
:none;vertical-align:baseline;white-space:pre-wrap">print( USRP_E310.get_gp=
io_attr(BANK_NAME, &#39;ATR_0X&#39;) )</span></font></p><p dir=3D"ltr" styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"back=
ground-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,=
sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:=
normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">p=
rint( USRP_E310.get_gpio_attr(BANK_NAME, &#39;ATR_RX&#39;) )</span></font><=
/p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0p=
t"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=
=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">print( USRP_E310.get_gpio_attr(BANK_NAME, &#39;ATR_TX&=
#39;) )</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238,238,238)" =
size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);fon=
t-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ver=
tical-align:baseline;white-space:pre-wrap">print( USRP_E310.get_gpio_attr(B=
ANK_NAME, &#39;ATR_XX&#39;) )</span></font></p><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-co=
lor:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-seri=
f;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap">print( USR=
P_E310.get_gpio_attr(BANK_NAME, &#39;READBACK&#39;) )</span></font></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><fon=
t style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"fon=
t-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap">print(&#39;\n\n&#39;)</span></font></p><font style=3D"backgro=
und-color:rgb(238,238,238)" size=3D"2"><br></font><p dir=3D"ltr" style=3D"l=
ine-height:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"background=
-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-s=
erif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"># confi=
gure gpio for atr operation</span></font></p><p dir=3D"ltr" style=3D"line-h=
eight:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-colo=
r:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;=
color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text=
-decoration:none;vertical-align:baseline;white-space:pre-wrap">USRP_E310.se=
t_gpio_attr(BANK_NAME, &#39;CTRL&#39;, ATR_CTRL, ATR_GPIO_MASK)</span></fon=
t></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><span st=
yle=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-s=
tyle:normal;font-variant:normal;text-decoration:none;vertical-align:baselin=
e;white-space:pre-wrap">USRP_E310.set_gpio_attr(BANK_NAME, &#39;DDR&#39;, A=
TR_DDR, ATR_GPIO_MASK)</span></font></p><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb=
(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;color=
:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap">USRP_E310.set_gpi=
o_attr(BANK_NAME, &#39;ATR_0X&#39;, ATR_0X, ATR_GPIO_MASK)</span></font></p=
><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"=
><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=
=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">USRP_E310.set_gpio_attr(BANK_NAME, &#39;ATR_RX&#39;, A=
TR_RX, ATR_GPIO_MASK)</span></font></p><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(=
238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:=
rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre-wrap">USRP_E310.set_gpio=
_attr(BANK_NAME, &#39;ATR_TX&#39;, ATR_TX, ATR_GPIO_MASK)</span></font></p>=
<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt">=
<font style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D=
"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:n=
ormal;font-variant:normal;text-decoration:none;vertical-align:baseline;whit=
e-space:pre-wrap">USRP_E310.set_gpio_attr(BANK_NAME, &#39;ATR_XX&#39;, ATR_=
XX, ATR_GPIO_MASK)</span></font></p><font style=3D"background-color:rgb(238=
,238,238)" size=3D"2"><br></font><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238,23=
8,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb(0,=
0,0);font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap">print(&#39;\n\n&#39;)</s=
pan></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;marg=
in-bottom:0pt"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"=
><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap">print( USRP_E310.get_gpio_attr(BANK_NAME, =
&#39;CTRL&#39;) )</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38=
;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238,=
238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb(=
0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-decoratio=
n:none;vertical-align:baseline;white-space:pre-wrap">print( USRP_E310.get_g=
pio_attr(BANK_NAME, &#39;DDR&#39;) )</span></font></p><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"backg=
round-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,s=
ans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:n=
ormal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">pr=
int( USRP_E310.get_gpio_attr(BANK_NAME, &#39;OUT&#39;) )</span></font></p><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><=
font style=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"=
font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:no=
rmal;font-variant:normal;text-decoration:none;vertical-align:baseline;white=
-space:pre-wrap">print( USRP_E310.get_gpio_attr(BANK_NAME, &#39;ATR_0X&#39;=
) )</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt"><font style=3D"background-color:rgb(238,238,238)" size=
=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-we=
ight:400;font-style:normal;font-variant:normal;text-decoration:none;vertica=
l-align:baseline;white-space:pre-wrap">print( USRP_E310.get_gpio_attr(BANK_=
NAME, &#39;ATR_RX&#39;) )</span></font></p><p dir=3D"ltr" style=3D"line-hei=
ght:1.38;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-color:=
rgb(238,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;co=
lor:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap">print( USRP_E3=
10.get_gpio_attr(BANK_NAME, &#39;ATR_TX&#39;) )</span></font></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font styl=
e=3D"background-color:rgb(238,238,238)" size=3D"2"><span style=3D"font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">print( USRP_E310.get_gpio_attr(BANK_NAME, &#39;ATR_XX&#39;) )</span=
></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt"><font style=3D"background-color:rgb(238,238,238)" size=3D"2"><s=
pan style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:none;vertical-align:b=
aseline;white-space:pre-wrap">print( USRP_E310.get_gpio_attr(BANK_NAME, &#3=
9;READBACK&#39;) )</span></font></p><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt"><font style=3D"background-color:rgb(238=
,238,238)" size=3D"2"><span style=3D"font-family:Arial,sans-serif;color:rgb=
(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap">print(&#39;\n\n&#39;)=
</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><font size=3D"1" style=3D"background-color:rgb(204,204,20=
4)"><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weigh=
t:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline;white-space:pre-wrap"><br></span></font></p><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt">
</p><div><font size=3D"4" style=3D"background-color:rgb(238,238,238)">Print=
 statement outputs</font><br></div><div>
<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" =
id=3D"gmail-docs-internal-guid-f1d294b9-7fff-1f42-dea4-cd9d03834b6f"><font =
size=3D"2" style=3D"background-color:rgb(238,238,238)"><span style=3D"font-=
family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap">0</span></font></p><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt"><font size=3D"2" style=3D"background-color:r=
gb(238,238,238)"><span style=3D"font-family:Arial,sans-serif;color:rgb(0,0,=
0);font-weight:400;font-style:normal;font-variant:normal;text-decoration:no=
ne;vertical-align:baseline;white-space:pre-wrap">4294967295</span></font></=
p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"><font size=3D"2" style=3D"background-color:rgb(238,238,238)"><span style=
=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">0</span></font></p><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt"><font size=3D"2" style=3D"backgroun=
d-color:rgb(238,238,238)"><span style=3D"font-family:Arial,sans-serif;color=
:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap">0</span></font></=
p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"><font size=3D"2" style=3D"background-color:rgb(238,238,238)"><span style=
=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">0</span></font></p><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt"><font size=3D"2" style=3D"backgroun=
d-color:rgb(238,238,238)"><span style=3D"font-family:Arial,sans-serif;color=
:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap">0</span></font></=
p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"><font size=3D"2" style=3D"background-color:rgb(238,238,238)"><span style=
=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">0</span></font></p><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt"><font size=3D"2" style=3D"backgroun=
d-color:rgb(238,238,238)"><span style=3D"font-family:Arial,sans-serif;color=
:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap">0</span></font></=
p><font size=3D"2" style=3D"background-color:rgb(238,238,238)"><br></font><=
p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font size=3D=
"2" style=3D"background-color:rgb(238,238,238)"><span style=3D"font-family:=
Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap">63                   &lt; CTRL</span></font></p><p style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt"><font size=3D"2" style=3D"backgrou=
nd-color:rgb(238,238,238)"><span style=3D"font-family:Arial,sans-serif;colo=
r:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;text-dec=
oration:none;vertical-align:baseline;white-space:pre-wrap">4294967295   &lt=
; DDR</span></font></p><p style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt"><font size=3D"2" style=3D"background-color:rgb(238,238,238)"><sp=
an style=3D"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;f=
ont-style:normal;font-variant:normal;text-decoration:none;vertical-align:ba=
seline;white-space:pre-wrap">0                     &lt; OUT</span></font></=
p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font size=
=3D"2" style=3D"background-color:rgb(238,238,238)"><span style=3D"font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">32                   &lt; 0X (idle) set for pin 6</span></font></p>=
<p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font size=
=3D"2" style=3D"background-color:rgb(238,238,238)"><span style=3D"font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">16                   &lt; RX set for pin 5</span></font></p><p styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font size=3D"2" st=
yle=3D"background-color:rgb(238,238,238)"><span style=3D"font-family:Arial,=
sans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:=
normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">8=
                     &lt; TX set for pin 4</span></font></p><p style=3D"lin=
e-height:1.38;margin-top:0pt;margin-bottom:0pt"><font size=3D"2" style=3D"b=
ackground-color:rgb(238,238,238)"><span style=3D"font-family:Arial,sans-ser=
if;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap">4        =
             &lt; XX (full duplex) set for pin 3</span></font></p><p style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font size=3D"2" sty=
le=3D"background-color:rgb(238,238,238)"><span style=3D"font-family:Arial,s=
ans-serif;color:rgb(0,0,0);font-weight:400;font-style:normal;font-variant:n=
ormal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">32=
                   &lt; READBACK detects high on pin 6</span></font></p>

</div>

<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt">=
<font size=3D"1" style=3D"background-color:rgb(204,204,204)"><span style=3D=
"font-family:Arial,sans-serif;color:rgb(0,0,0);font-weight:400;font-style:n=
ormal;font-variant:normal;text-decoration:none;vertical-align:baseline;whit=
e-space:pre-wrap"><br></span></font></p>

</div></div>

--0000000000008fe0a306176ec491--

--===============0125035476141217442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0125035476141217442==--
