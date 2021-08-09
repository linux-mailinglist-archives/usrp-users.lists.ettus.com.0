Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A33B3E4D21
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 21:35:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3E95384406
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 15:35:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="I1AxhZtU";
	dkim-atps=neutral
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 873CC3843DD
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 15:34:14 -0400 (EDT)
Received: by mail-ot1-f42.google.com with SMTP id g5-20020a9d6b050000b02904f21e977c3eso19282394otp.5
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 12:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=TExEYL9u2wwUWTRjBx9G4XPJh9ItS4kbyPo+dCPhSvU=;
        b=I1AxhZtU/Si9fnQdClBZIW38s1QdVBGuI2qVVXM4+7gH6i5q4jm5X5fSXE08Ky/+WK
         xschhwLIfUTVxl3MiFInyCQ3GWC2PYWvvc1/09TYEDI0vjuA1DcPjPIG688rNfyDv3vO
         r69MAK/98kZGCEnIsEM/I5b+paccCoIqshkapQz6CLU7IJdGcwC6SlLPbGcRxjfNVwaC
         Ws/MDvHscpgiXK4tC0CUO/Fy/97tJ8dHm0n6RtqjhcaGSFZjzuIucAlpB2pSOp+CU9wK
         B/1cG8dvi5gtf/iOJeSnIGNmbJorRpUsFgMLN/LtZsNQMuDmgTyI5+3AVd52bEzSa0Q8
         oURw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TExEYL9u2wwUWTRjBx9G4XPJh9ItS4kbyPo+dCPhSvU=;
        b=RUTYPkrTxH8SR3DH3+rcDFggKHmSyt6kfsn+l5Jb1YfrmL52+2zDxRqnI1o5eJkJIW
         WpJlkbvFp99YwQUKL8ft9LKisuN1H1DhA+AK4i8gUznmOagfz8+KfTWFIKC9OjI8fQ68
         RDYcao4qR+b0QPGFlyBsDFMHO2F6ujGAOizHwUoLtgECtOaL0UzLh3N/DTkCHzdE509m
         0RXzQUdOMoUypCH1kUdU/fzjW5b23FmWdZyR3gqtJ1UR3nWdS7M6PdpPl1dycztxvr1m
         dUqVij6VqF8q0Twu7nm3Qeg3C/ex2epKeYg0+elM3KQgCnRJwHouBhXJ7Q9Wuthepr1y
         HX6g==
X-Gm-Message-State: AOAM531nkA6BWl/3f0KkAMCl0pWt8JzFsm5PlOKFk63x29+0V2Hcuvwb
	2Z1c9k25xllrWRHXVmSa7EULgPVi674FjFMvQ8/8ibggFqG0nQ==
X-Google-Smtp-Source: ABdhPJyDd2st9HgW+6tDxMOYn6owsyaDngYyX4UyPckcoZq0a16xfStBrto2DvftuN+nDCgyVM9PeuhaRFJjYwRpul4=
X-Received: by 2002:a9d:6945:: with SMTP id p5mr13305855oto.301.1628537653549;
 Mon, 09 Aug 2021 12:34:13 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 9 Aug 2021 15:34:03 -0400
Message-ID: <CAB__hTShcBXC_W63jOJDLjhP18KcCVP=+yOFTPjkdwT1hx2qDw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: HJ4CHWPVRTB2XHU7ILV7DS4DOEF7Z7BE
X-Message-ID-Hash: HJ4CHWPVRTB2XHU7ILV7DS4DOEF7Z7BE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1: Timeout calling RPC 'supports feature'
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HJ4CHWPVRTB2XHU7ILV7DS4DOEF7Z7BE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4143845560451608180=="

--===============4143845560451608180==
Content-Type: multipart/alternative; boundary="00000000000058204205c925786f"

--00000000000058204205c925786f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After upgrading to UHD 4.1 (build from source using latest on branch), I am
getting the following error consistently when trying to connect to my
system of 8 N321 devices.  I do not get this error when using my previous
version: UHD_4.0.0.0-122-g75f2ba94. I'm wondering if this is a bug.
Rob

[FATAL] [_main] Creating USRP object: rpc::timeout: Timeout of 2000ms while
calling RPC function 'supports_feature'

The following shows the full list of startup messages

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.1.0.2-0-g96032d06
[INFO] [_main] UHD version: 4010002

[INFO] [_main] Searching for device with
args=3D'force_reinit=3D1,addr0=3D192.168.70.2,addr1=3D192.168.71.2,addr2=3D=
192.168.72.2,addr3=3D192.168.73.2,addr4=3D192.168.74.2,addr5=3D192.168.75.2=
,addr6=3D192.168.76.2,addr7=3D192.168.77.2'
[INFO] [_main] Found 1 device(s)

mgmt_addr0=3D192.168.70.2,type0=3Dn3xx,product0=3Dn320,serial0=3D320EAED,fp=
ga0=3DWX,claimed0=3DFalse,mgmt_addr1=3D192.168.71.2,type1=3Dn3xx,product1=
=3Dn320,serial1=3D320EAEC,claimed1=3DFalse,mgmt_addr2=3D192.168.72.2,type2=
=3Dn3xx,product2=3Dn320,serial2=3D320EAEE,claimed2=3DFalse,mgmt_addr3=3D192=
.168.73.2,type3=3Dn3xx,product3=3Dn320,serial3=3D320EAE9,claimed3=3DFalse,m=
gmt_addr4=3D192.168.74.2,type4=3Dn3xx,product4=3Dn320,serial4=3D320EAE7,cla=
imed4=3DFalse,mgmt_addr5=3D192.168.75.2,type5=3Dn3xx,product5=3Dn320,serial=
5=3D320EAE8,claimed5=3DFalse,mgmt_addr6=3D192.168.76.2,type6=3Dn3xx,product=
6=3Dn320,serial6=3D320EAEF,claimed6=3DFalse,mgmt_addr7=3D192.168.77.2,type7=
=3Dn3xx,product7=3Dn320,serial7=3D320EAEB,claimed7=3DFalse

[INFO] [_main] Using Device Address:
    force_reinit: 1
    addr0: 192.168.70.2
    addr1: 192.168.71.2
    addr2: 192.168.72.2
    addr3: 192.168.73.2
    addr4: 192.168.74.2
    addr5: 192.168.75.2
    addr6: 192.168.76.2
    addr7: 192.168.77.2
    mgmt_addr0: 192.168.70.2
    type0: n3xx
    product0: n320
    serial0: 320EAED
    fpga0: WX
    claimed0: False
    mgmt_addr1: 192.168.71.2
    type1: n3xx
    product1: n320
    serial1: 320EAEC
    claimed1: False
    mgmt_addr2: 192.168.72.2
    type2: n3xx
    product2: n320
    serial2: 320EAEE
    claimed2: False
    mgmt_addr3: 192.168.73.2
    type3: n3xx
    product3: n320
    serial3: 320EAE9
    claimed3: False
    mgmt_addr4: 192.168.74.2
    type4: n3xx
    product4: n320
    serial4: 320EAE7
    claimed4: False
    mgmt_addr5: 192.168.75.2
    type5: n3xx
    product5: n320
    serial5: 320EAE8
    claimed5: False
    mgmt_addr6: 192.168.76.2
    type6: n3xx
    product6: n320
    serial6: 320EAEF
    claimed6: False
    mgmt_addr7: 192.168.77.2
    type7: n3xx
    product7: n320
    serial7: 320EAEB
    claimed7: False
    clock_source: external
    time_source: external
    tracking_cals: OFF
    rfnoc_cfg: n321-16x16.rfnoc

[INFO] [_main] Creating rfnoc_usrp device...
[INFO] [MPMD] Initializing 8 device(s) in parallel with args:
mgmt_addr0=3D192.168.70.2,type0=3Dn3xx,product0=3Dn320,serial0=3D320EAED,fp=
ga0=3DWX,claimed0=3DFalse,mgmt_addr1=3D192.168.71.2,type1=3Dn3xx,product1=
=3Dn320,serial1=3D320EAEC,claimed1=3DFalse,mgmt_addr2=3D192.168.72.2,type2=
=3Dn3xx,product2=3Dn320,serial2=3D320EAEE,claimed2=3DFalse,mgmt_addr3=3D192=
.168.73.2,type3=3Dn3xx,product3=3Dn320,serial3=3D320EAE9,claimed3=3DFalse,m=
gmt_addr4=3D192.168.74.2,type4=3Dn3xx,product4=3Dn320,serial4=3D320EAE7,cla=
imed4=3DFalse,mgmt_addr5=3D192.168.75.2,type5=3Dn3xx,product5=3Dn320,serial=
5=3D320EAE8,claimed5=3DFalse,mgmt_addr6=3D192.168.76.2,type6=3Dn3xx,product=
6=3Dn320,serial6=3D320EAEF,claimed6=3DFalse,mgmt_addr7=3D192.168.77.2,type7=
=3Dn3xx,product7=3Dn320,serial7=3D320EAEB,claimed7=3DFalse,force_reinit=3D1=
,addr0=3D192.168.70.2,addr1=3D192.168.71.2,addr2=3D192.168.72.2,addr3=3D192=
.168.73.2,addr4=3D192.168.74.2,addr5=3D192.168.75.2,addr6=3D192.168.76.2,ad=
dr7=3D192.168.77.2,clock_source=3Dexternal,time_source=3Dexternal,tracking_=
cals=3DOFF,rfnoc_cfg=3Dn321-16x16.rfnoc
[FATAL] [_main] Creating USRP object: rpc::timeout: Timeout of 2000ms while
calling RPC function 'supports_feature'

--00000000000058204205c925786f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>After upgrading to UHD 4.1 (build from source using l=
atest on branch), I am getting the following error consistently when trying=
 to connect to my system of 8 N321 devices.=C2=A0 I do not get this error w=
hen using my previous version: UHD_4.0.0.0-122-g75f2ba94. I&#39;m wondering=
 if this is a bug.</div><div>Rob</div><div><br></div><div><span style=3D"fo=
nt-family:monospace;background-color:rgb(255,255,0)">[FATAL] [_main] Creati=
ng USRP object: rpc::timeout: Timeout of 2000ms while calling RPC function =
&#39;supports_feature&#39;</span><br></div><div><span style=3D"font-family:=
monospace;background-color:rgb(255,255,0)"><br></span></div><div><font face=
=3D"monospace" style=3D"background-color:rgb(255,255,255)">The following sh=
ows the full list of startup messages</font></div><div><br></div><div><font=
 face=3D"monospace">[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100=
; UHD_4.1.0.2-0-g96032d06<br>[INFO] [_main] UHD version: 4010002<br><br>[IN=
FO] [_main] Searching for device with args=3D&#39;force_reinit=3D1,addr0=3D=
192.168.70.2,addr1=3D192.168.71.2,addr2=3D192.168.72.2,addr3=3D192.168.73.2=
,addr4=3D192.168.74.2,addr5=3D192.168.75.2,addr6=3D192.168.76.2,addr7=3D192=
.168.77.2&#39;<br>[INFO] [_main] Found 1 device(s)<br>=C2=A0 mgmt_addr0=3D1=
92.168.70.2,type0=3Dn3xx,product0=3Dn320,serial0=3D320EAED,fpga0=3DWX,claim=
ed0=3DFalse,mgmt_addr1=3D192.168.71.2,type1=3Dn3xx,product1=3Dn320,serial1=
=3D320EAEC,claimed1=3DFalse,mgmt_addr2=3D192.168.72.2,type2=3Dn3xx,product2=
=3Dn320,serial2=3D320EAEE,claimed2=3DFalse,mgmt_addr3=3D192.168.73.2,type3=
=3Dn3xx,product3=3Dn320,serial3=3D320EAE9,claimed3=3DFalse,mgmt_addr4=3D192=
.168.74.2,type4=3Dn3xx,product4=3Dn320,serial4=3D320EAE7,claimed4=3DFalse,m=
gmt_addr5=3D192.168.75.2,type5=3Dn3xx,product5=3Dn320,serial5=3D320EAE8,cla=
imed5=3DFalse,mgmt_addr6=3D192.168.76.2,type6=3Dn3xx,product6=3Dn320,serial=
6=3D320EAEF,claimed6=3DFalse,mgmt_addr7=3D192.168.77.2,type7=3Dn3xx,product=
7=3Dn320,serial7=3D320EAEB,claimed7=3DFalse<br><br>[INFO] [_main] Using Dev=
ice Address:<br>=C2=A0 =C2=A0 force_reinit: 1<br>=C2=A0 =C2=A0 addr0: 192.1=
68.70.2<br>=C2=A0 =C2=A0 addr1: 192.168.71.2<br>=C2=A0 =C2=A0 addr2: 192.16=
8.72.2<br>=C2=A0 =C2=A0 addr3: 192.168.73.2<br>=C2=A0 =C2=A0 addr4: 192.168=
.74.2<br>=C2=A0 =C2=A0 addr5: 192.168.75.2<br>=C2=A0 =C2=A0 addr6: 192.168.=
76.2<br>=C2=A0 =C2=A0 addr7: 192.168.77.2<br>=C2=A0 =C2=A0 mgmt_addr0: 192.=
168.70.2<br>=C2=A0 =C2=A0 type0: n3xx<br>=C2=A0 =C2=A0 product0: n320<br>=
=C2=A0 =C2=A0 serial0: 320EAED<br>=C2=A0 =C2=A0 fpga0: WX<br>=C2=A0 =C2=A0 =
claimed0: False<br>=C2=A0 =C2=A0 mgmt_addr1: 192.168.71.2<br>=C2=A0 =C2=A0 =
type1: n3xx<br>=C2=A0 =C2=A0 product1: n320<br>=C2=A0 =C2=A0 serial1: 320EA=
EC<br>=C2=A0 =C2=A0 claimed1: False<br>=C2=A0 =C2=A0 mgmt_addr2: 192.168.72=
.2<br>=C2=A0 =C2=A0 type2: n3xx<br>=C2=A0 =C2=A0 product2: n320<br>=C2=A0 =
=C2=A0 serial2: 320EAEE<br>=C2=A0 =C2=A0 claimed2: False<br>=C2=A0 =C2=A0 m=
gmt_addr3: 192.168.73.2<br>=C2=A0 =C2=A0 type3: n3xx<br>=C2=A0 =C2=A0 produ=
ct3: n320<br>=C2=A0 =C2=A0 serial3: 320EAE9<br>=C2=A0 =C2=A0 claimed3: Fals=
e<br>=C2=A0 =C2=A0 mgmt_addr4: 192.168.74.2<br>=C2=A0 =C2=A0 type4: n3xx<br=
>=C2=A0 =C2=A0 product4: n320<br>=C2=A0 =C2=A0 serial4: 320EAE7<br>=C2=A0 =
=C2=A0 claimed4: False<br>=C2=A0 =C2=A0 mgmt_addr5: 192.168.75.2<br>=C2=A0 =
=C2=A0 type5: n3xx<br>=C2=A0 =C2=A0 product5: n320<br>=C2=A0 =C2=A0 serial5=
: 320EAE8<br>=C2=A0 =C2=A0 claimed5: False<br>=C2=A0 =C2=A0 mgmt_addr6: 192=
.168.76.2<br>=C2=A0 =C2=A0 type6: n3xx<br>=C2=A0 =C2=A0 product6: n320<br>=
=C2=A0 =C2=A0 serial6: 320EAEF<br>=C2=A0 =C2=A0 claimed6: False<br>=C2=A0 =
=C2=A0 mgmt_addr7: 192.168.77.2<br>=C2=A0 =C2=A0 type7: n3xx<br>=C2=A0 =C2=
=A0 product7: n320<br>=C2=A0 =C2=A0 serial7: 320EAEB<br>=C2=A0 =C2=A0 claim=
ed7: False<br>=C2=A0 =C2=A0 clock_source: external<br>=C2=A0 =C2=A0 time_so=
urce: external<br>=C2=A0 =C2=A0 tracking_cals: OFF<br>=C2=A0 =C2=A0 rfnoc_c=
fg: n321-16x16.rfnoc<br><br>[INFO] [_main] Creating rfnoc_usrp device...<br=
>[INFO] [MPMD] Initializing 8 device(s) in parallel with args: mgmt_addr0=
=3D192.168.70.2,type0=3Dn3xx,product0=3Dn320,serial0=3D320EAED,fpga0=3DWX,c=
laimed0=3DFalse,mgmt_addr1=3D192.168.71.2,type1=3Dn3xx,product1=3Dn320,seri=
al1=3D320EAEC,claimed1=3DFalse,mgmt_addr2=3D192.168.72.2,type2=3Dn3xx,produ=
ct2=3Dn320,serial2=3D320EAEE,claimed2=3DFalse,mgmt_addr3=3D192.168.73.2,typ=
e3=3Dn3xx,product3=3Dn320,serial3=3D320EAE9,claimed3=3DFalse,mgmt_addr4=3D1=
92.168.74.2,type4=3Dn3xx,product4=3Dn320,serial4=3D320EAE7,claimed4=3DFalse=
,mgmt_addr5=3D192.168.75.2,type5=3Dn3xx,product5=3Dn320,serial5=3D320EAE8,c=
laimed5=3DFalse,mgmt_addr6=3D192.168.76.2,type6=3Dn3xx,product6=3Dn320,seri=
al6=3D320EAEF,claimed6=3DFalse,mgmt_addr7=3D192.168.77.2,type7=3Dn3xx,produ=
ct7=3Dn320,serial7=3D320EAEB,claimed7=3DFalse,force_reinit=3D1,addr0=3D192.=
168.70.2,addr1=3D192.168.71.2,addr2=3D192.168.72.2,addr3=3D192.168.73.2,add=
r4=3D192.168.74.2,addr5=3D192.168.75.2,addr6=3D192.168.76.2,addr7=3D192.168=
.77.2,clock_source=3Dexternal,time_source=3Dexternal,tracking_cals=3DOFF,rf=
noc_cfg=3Dn321-16x16.rfnoc<br><span style=3D"background-color:rgb(255,255,0=
)">[FATAL] [_main] Creating USRP object: rpc::timeout: Timeout of 2000ms wh=
ile calling RPC function &#39;supports_feature&#39;</span><br></font></div>=
<div><br></div><div><br></div></div>

--00000000000058204205c925786f--

--===============4143845560451608180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4143845560451608180==--
