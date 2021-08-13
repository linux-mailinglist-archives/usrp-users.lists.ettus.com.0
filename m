Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8FE3EBE26
	for <lists+usrp-users@lfdr.de>; Sat, 14 Aug 2021 00:03:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 160D0383C5F
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 18:03:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="RGRT5E/w";
	dkim-atps=neutral
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 21B77383C4A
	for <usrp-users@lists.ettus.com>; Fri, 13 Aug 2021 18:02:23 -0400 (EDT)
Received: by mail-oi1-f177.google.com with SMTP id bd1so10544968oib.3
        for <usrp-users@lists.ettus.com>; Fri, 13 Aug 2021 15:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=RcX5pjkcRLeIfOmIcaOGxR76K9uZlzXmQAdrh97Yuwk=;
        b=RGRT5E/wuPmuP0/Xyk1g+i4sfJroC4IsXhzACoktERa1syln6+yGxx1ts1k9OGmMX3
         0UhKfmr8bLrMdhVdo0d7ecOQzEnrA4OwHwgNTLcPDXmGSeEcSYFNNwK85TD9oSZpQ8Em
         S8cVYbHMm7djLe6qTW2QXCXNcT5fSmAQX8GFaSAhcudAo4ejLULo186tqX1U/UyjETlA
         XRTTIzfpO2fAyLL8ag0tjljs0dE3F45fZvi/oeos6CfGRurtz4/KsN6Tt+IW3JjRJpd1
         CwJenMoJtucMYnzVSmrb0JcqZhgWz9L/nad9SqIwq5Y/2JayRcODc1rhUVzE6oYRNj9C
         STYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=RcX5pjkcRLeIfOmIcaOGxR76K9uZlzXmQAdrh97Yuwk=;
        b=d4uZBP+ngmFQG7OkRg5AMkLnuqZ/M7tC6BLq1q5ze43dL9TtrADmMiAZBSAkA7LvBc
         P7BGRwv6h9i4NK59dpTE8P0GphWvqutHrJBrpI5AXNLu05m21V6EyGqnNo9LX1UpLAoM
         /kz01FkhZueDzHH/LWqJurKGXcWQkiOS8Aolp+6iT4rBd3tZI6s+PjRpL4yYkYivjgF7
         HhnynhU2qP7eDTVub3IaaD1IuFZyj61/FA1R/2vBLqjfmPopvRvF1Db9P/LpYzk5yV4B
         E+ZdCxAxRfF/4HWOAb485rAVQBJwwMNOoG0e1PWAeUf7Hi4Pot4bNtYqya2EpD204ZwS
         w16A==
X-Gm-Message-State: AOAM530Nxg4y0fCRgMMhM6IvIobyrI9HcG2sPG4cseEMgyKdrnzA7svr
	WIi/cgyaWknrzGnQCDZmbJ9g31EwvrFyYcQB+aBbony+Ie4=
X-Google-Smtp-Source: ABdhPJyGjvlgJPgUWL0O4yT0K5XK2uhacYhhsrcKW9l8Fi9OD4VWWDteCSCAxBgT6hdYeI+04qnkpTo2urYeqlaMxy8=
X-Received: by 2002:a05:6808:2219:: with SMTP id bd25mr3773874oib.33.1628892142083;
 Fri, 13 Aug 2021 15:02:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTShcBXC_W63jOJDLjhP18KcCVP=+yOFTPjkdwT1hx2qDw@mail.gmail.com>
In-Reply-To: <CAB__hTShcBXC_W63jOJDLjhP18KcCVP=+yOFTPjkdwT1hx2qDw@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 13 Aug 2021 18:02:11 -0400
Message-ID: <CAB__hTTzxWe_O_8hMD+vCvK8kmeN1UhEBECHhQis67SSRa3FXQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: WJURHPF7ARFYJE2KRYMZJY2ZI4XR7K2L
X-Message-ID-Hash: WJURHPF7ARFYJE2KRYMZJY2ZI4XR7K2L
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1: Timeout calling RPC 'supports feature'
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WJURHPF7ARFYJE2KRYMZJY2ZI4XR7K2L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6542431418965175210=="

--===============6542431418965175210==
Content-Type: multipart/alternative; boundary="00000000000081dd6405c97801bf"

--00000000000081dd6405c97801bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Update: The error below seems to be related to an incompatibility between
4.0 and 4.1.  The only way I could get 4.1 to work was to re-write the file
system (using bmaptool).  I had previously tried to upgrade UHD (on host),
MPM (on N321), and FPGA (using uhd_image_loader from host), but that didn't
work.  Since I didn't have a cross-compile toolchain setup, I didn't
attempt to rebuild UHD for the N321.  So, I really don't know if the issue
is related to not upgrading UHD on the N321 or if there is some file system
incompatibility such that a re-write of the file system is needed.  This
same error also occurred for my N310.

Has anyone else upgraded from 4.0 to 4.1 successfully without re-writing
the file system?
Rob

On Mon, Aug 9, 2021 at 3:34 PM Rob Kossler <rkossler@nd.edu> wrote:

> After upgrading to UHD 4.1 (build from source using latest on branch), I
> am getting the following error consistently when trying to connect to my
> system of 8 N321 devices.  I do not get this error when using my previous
> version: UHD_4.0.0.0-122-g75f2ba94. I'm wondering if this is a bug.
> Rob
>
> [FATAL] [_main] Creating USRP object: rpc::timeout: Timeout of 2000ms
> while calling RPC function 'supports_feature'
>
> The following shows the full list of startup messages
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.1.0.2-0-g96032d06
> [INFO] [_main] UHD version: 4010002
>
> [INFO] [_main] Searching for device with
> args=3D'force_reinit=3D1,addr0=3D192.168.70.2,addr1=3D192.168.71.2,addr2=
=3D192.168.72.2,addr3=3D192.168.73.2,addr4=3D192.168.74.2,addr5=3D192.168.7=
5.2,addr6=3D192.168.76.2,addr7=3D192.168.77.2'
> [INFO] [_main] Found 1 device(s)
>
> mgmt_addr0=3D192.168.70.2,type0=3Dn3xx,product0=3Dn320,serial0=3D320EAED,=
fpga0=3DWX,claimed0=3DFalse,mgmt_addr1=3D192.168.71.2,type1=3Dn3xx,product1=
=3Dn320,serial1=3D320EAEC,claimed1=3DFalse,mgmt_addr2=3D192.168.72.2,type2=
=3Dn3xx,product2=3Dn320,serial2=3D320EAEE,claimed2=3DFalse,mgmt_addr3=3D192=
.168.73.2,type3=3Dn3xx,product3=3Dn320,serial3=3D320EAE9,claimed3=3DFalse,m=
gmt_addr4=3D192.168.74.2,type4=3Dn3xx,product4=3Dn320,serial4=3D320EAE7,cla=
imed4=3DFalse,mgmt_addr5=3D192.168.75.2,type5=3Dn3xx,product5=3Dn320,serial=
5=3D320EAE8,claimed5=3DFalse,mgmt_addr6=3D192.168.76.2,type6=3Dn3xx,product=
6=3Dn320,serial6=3D320EAEF,claimed6=3DFalse,mgmt_addr7=3D192.168.77.2,type7=
=3Dn3xx,product7=3Dn320,serial7=3D320EAEB,claimed7=3DFalse
>
> [INFO] [_main] Using Device Address:
>     force_reinit: 1
>     addr0: 192.168.70.2
>     addr1: 192.168.71.2
>     addr2: 192.168.72.2
>     addr3: 192.168.73.2
>     addr4: 192.168.74.2
>     addr5: 192.168.75.2
>     addr6: 192.168.76.2
>     addr7: 192.168.77.2
>     mgmt_addr0: 192.168.70.2
>     type0: n3xx
>     product0: n320
>     serial0: 320EAED
>     fpga0: WX
>     claimed0: False
>     mgmt_addr1: 192.168.71.2
>     type1: n3xx
>     product1: n320
>     serial1: 320EAEC
>     claimed1: False
>     mgmt_addr2: 192.168.72.2
>     type2: n3xx
>     product2: n320
>     serial2: 320EAEE
>     claimed2: False
>     mgmt_addr3: 192.168.73.2
>     type3: n3xx
>     product3: n320
>     serial3: 320EAE9
>     claimed3: False
>     mgmt_addr4: 192.168.74.2
>     type4: n3xx
>     product4: n320
>     serial4: 320EAE7
>     claimed4: False
>     mgmt_addr5: 192.168.75.2
>     type5: n3xx
>     product5: n320
>     serial5: 320EAE8
>     claimed5: False
>     mgmt_addr6: 192.168.76.2
>     type6: n3xx
>     product6: n320
>     serial6: 320EAEF
>     claimed6: False
>     mgmt_addr7: 192.168.77.2
>     type7: n3xx
>     product7: n320
>     serial7: 320EAEB
>     claimed7: False
>     clock_source: external
>     time_source: external
>     tracking_cals: OFF
>     rfnoc_cfg: n321-16x16.rfnoc
>
> [INFO] [_main] Creating rfnoc_usrp device...
> [INFO] [MPMD] Initializing 8 device(s) in parallel with args:
> mgmt_addr0=3D192.168.70.2,type0=3Dn3xx,product0=3Dn320,serial0=3D320EAED,=
fpga0=3DWX,claimed0=3DFalse,mgmt_addr1=3D192.168.71.2,type1=3Dn3xx,product1=
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
> [FATAL] [_main] Creating USRP object: rpc::timeout: Timeout of 2000ms
> while calling RPC function 'supports_feature'
>
>
>

--00000000000081dd6405c97801bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Update: The error below seems to be relat=
ed to an incompatibility=C2=A0between 4.0 and 4.1.=C2=A0 The only way I cou=
ld get 4.1 to work was to re-write the file system (using bmaptool).=C2=A0 =
I had previously tried to upgrade UHD (on host), MPM (on N321), and FPGA (u=
sing uhd_image_loader from host), but that didn&#39;t work.=C2=A0 Since I d=
idn&#39;t have a cross-compile toolchain setup, I didn&#39;t attempt to reb=
uild UHD for the N321.=C2=A0 So, I really don&#39;t know if the issue is re=
lated to not upgrading UHD on the N321 or if there is some file system inco=
mpatibility such that a re-write of the file system is needed.=C2=A0 This s=
ame error also occurred for my N310.</div><div dir=3D"ltr"><br></div><div>H=
as anyone else upgraded from 4.0 to 4.1 successfully without re-writing the=
 file system?</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Aug 9, 2021 at 3:34 PM Rob Kossler &lt;<=
a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Afte=
r upgrading to UHD 4.1 (build from source using latest on branch), I am get=
ting the following error consistently when trying to connect to my system o=
f 8 N321 devices.=C2=A0 I do not get this error when using my previous vers=
ion: UHD_4.0.0.0-122-g75f2ba94. I&#39;m wondering if this is a bug.</div><d=
iv>Rob</div><div><br></div><div><span style=3D"font-family:monospace;backgr=
ound-color:rgb(255,255,0)">[FATAL] [_main] Creating USRP object: rpc::timeo=
ut: Timeout of 2000ms while calling RPC function &#39;supports_feature&#39;=
</span><br></div><div><span style=3D"font-family:monospace;background-color=
:rgb(255,255,0)"><br></span></div><div><font face=3D"monospace" style=3D"ba=
ckground-color:rgb(255,255,255)">The following shows the full list of start=
up messages</font></div><div><br></div><div><font face=3D"monospace">[INFO]=
 [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.2-0-g96032d06<=
br>[INFO] [_main] UHD version: 4010002<br><br>[INFO] [_main] Searching for =
device with args=3D&#39;force_reinit=3D1,addr0=3D192.168.70.2,addr1=3D192.1=
68.71.2,addr2=3D192.168.72.2,addr3=3D192.168.73.2,addr4=3D192.168.74.2,addr=
5=3D192.168.75.2,addr6=3D192.168.76.2,addr7=3D192.168.77.2&#39;<br>[INFO] [=
_main] Found 1 device(s)<br>=C2=A0 mgmt_addr0=3D192.168.70.2,type0=3Dn3xx,p=
roduct0=3Dn320,serial0=3D320EAED,fpga0=3DWX,claimed0=3DFalse,mgmt_addr1=3D1=
92.168.71.2,type1=3Dn3xx,product1=3Dn320,serial1=3D320EAEC,claimed1=3DFalse=
,mgmt_addr2=3D192.168.72.2,type2=3Dn3xx,product2=3Dn320,serial2=3D320EAEE,c=
laimed2=3DFalse,mgmt_addr3=3D192.168.73.2,type3=3Dn3xx,product3=3Dn320,seri=
al3=3D320EAE9,claimed3=3DFalse,mgmt_addr4=3D192.168.74.2,type4=3Dn3xx,produ=
ct4=3Dn320,serial4=3D320EAE7,claimed4=3DFalse,mgmt_addr5=3D192.168.75.2,typ=
e5=3Dn3xx,product5=3Dn320,serial5=3D320EAE8,claimed5=3DFalse,mgmt_addr6=3D1=
92.168.76.2,type6=3Dn3xx,product6=3Dn320,serial6=3D320EAEF,claimed6=3DFalse=
,mgmt_addr7=3D192.168.77.2,type7=3Dn3xx,product7=3Dn320,serial7=3D320EAEB,c=
laimed7=3DFalse<br><br>[INFO] [_main] Using Device Address:<br>=C2=A0 =C2=
=A0 force_reinit: 1<br>=C2=A0 =C2=A0 addr0: 192.168.70.2<br>=C2=A0 =C2=A0 a=
ddr1: 192.168.71.2<br>=C2=A0 =C2=A0 addr2: 192.168.72.2<br>=C2=A0 =C2=A0 ad=
dr3: 192.168.73.2<br>=C2=A0 =C2=A0 addr4: 192.168.74.2<br>=C2=A0 =C2=A0 add=
r5: 192.168.75.2<br>=C2=A0 =C2=A0 addr6: 192.168.76.2<br>=C2=A0 =C2=A0 addr=
7: 192.168.77.2<br>=C2=A0 =C2=A0 mgmt_addr0: 192.168.70.2<br>=C2=A0 =C2=A0 =
type0: n3xx<br>=C2=A0 =C2=A0 product0: n320<br>=C2=A0 =C2=A0 serial0: 320EA=
ED<br>=C2=A0 =C2=A0 fpga0: WX<br>=C2=A0 =C2=A0 claimed0: False<br>=C2=A0 =
=C2=A0 mgmt_addr1: 192.168.71.2<br>=C2=A0 =C2=A0 type1: n3xx<br>=C2=A0 =C2=
=A0 product1: n320<br>=C2=A0 =C2=A0 serial1: 320EAEC<br>=C2=A0 =C2=A0 claim=
ed1: False<br>=C2=A0 =C2=A0 mgmt_addr2: 192.168.72.2<br>=C2=A0 =C2=A0 type2=
: n3xx<br>=C2=A0 =C2=A0 product2: n320<br>=C2=A0 =C2=A0 serial2: 320EAEE<br=
>=C2=A0 =C2=A0 claimed2: False<br>=C2=A0 =C2=A0 mgmt_addr3: 192.168.73.2<br=
>=C2=A0 =C2=A0 type3: n3xx<br>=C2=A0 =C2=A0 product3: n320<br>=C2=A0 =C2=A0=
 serial3: 320EAE9<br>=C2=A0 =C2=A0 claimed3: False<br>=C2=A0 =C2=A0 mgmt_ad=
dr4: 192.168.74.2<br>=C2=A0 =C2=A0 type4: n3xx<br>=C2=A0 =C2=A0 product4: n=
320<br>=C2=A0 =C2=A0 serial4: 320EAE7<br>=C2=A0 =C2=A0 claimed4: False<br>=
=C2=A0 =C2=A0 mgmt_addr5: 192.168.75.2<br>=C2=A0 =C2=A0 type5: n3xx<br>=C2=
=A0 =C2=A0 product5: n320<br>=C2=A0 =C2=A0 serial5: 320EAE8<br>=C2=A0 =C2=
=A0 claimed5: False<br>=C2=A0 =C2=A0 mgmt_addr6: 192.168.76.2<br>=C2=A0 =C2=
=A0 type6: n3xx<br>=C2=A0 =C2=A0 product6: n320<br>=C2=A0 =C2=A0 serial6: 3=
20EAEF<br>=C2=A0 =C2=A0 claimed6: False<br>=C2=A0 =C2=A0 mgmt_addr7: 192.16=
8.77.2<br>=C2=A0 =C2=A0 type7: n3xx<br>=C2=A0 =C2=A0 product7: n320<br>=C2=
=A0 =C2=A0 serial7: 320EAEB<br>=C2=A0 =C2=A0 claimed7: False<br>=C2=A0 =C2=
=A0 clock_source: external<br>=C2=A0 =C2=A0 time_source: external<br>=C2=A0=
 =C2=A0 tracking_cals: OFF<br>=C2=A0 =C2=A0 rfnoc_cfg: n321-16x16.rfnoc<br>=
<br>[INFO] [_main] Creating rfnoc_usrp device...<br>[INFO] [MPMD] Initializ=
ing 8 device(s) in parallel with args: mgmt_addr0=3D192.168.70.2,type0=3Dn3=
xx,product0=3Dn320,serial0=3D320EAED,fpga0=3DWX,claimed0=3DFalse,mgmt_addr1=
=3D192.168.71.2,type1=3Dn3xx,product1=3Dn320,serial1=3D320EAEC,claimed1=3DF=
alse,mgmt_addr2=3D192.168.72.2,type2=3Dn3xx,product2=3Dn320,serial2=3D320EA=
EE,claimed2=3DFalse,mgmt_addr3=3D192.168.73.2,type3=3Dn3xx,product3=3Dn320,=
serial3=3D320EAE9,claimed3=3DFalse,mgmt_addr4=3D192.168.74.2,type4=3Dn3xx,p=
roduct4=3Dn320,serial4=3D320EAE7,claimed4=3DFalse,mgmt_addr5=3D192.168.75.2=
,type5=3Dn3xx,product5=3Dn320,serial5=3D320EAE8,claimed5=3DFalse,mgmt_addr6=
=3D192.168.76.2,type6=3Dn3xx,product6=3Dn320,serial6=3D320EAEF,claimed6=3DF=
alse,mgmt_addr7=3D192.168.77.2,type7=3Dn3xx,product7=3Dn320,serial7=3D320EA=
EB,claimed7=3DFalse,force_reinit=3D1,addr0=3D192.168.70.2,addr1=3D192.168.7=
1.2,addr2=3D192.168.72.2,addr3=3D192.168.73.2,addr4=3D192.168.74.2,addr5=3D=
192.168.75.2,addr6=3D192.168.76.2,addr7=3D192.168.77.2,clock_source=3Dexter=
nal,time_source=3Dexternal,tracking_cals=3DOFF,rfnoc_cfg=3Dn321-16x16.rfnoc=
<br><span style=3D"background-color:rgb(255,255,0)">[FATAL] [_main] Creatin=
g USRP object: rpc::timeout: Timeout of 2000ms while calling RPC function &=
#39;supports_feature&#39;</span><br></font></div><div><br></div><div><br></=
div></div>
</blockquote></div></div>

--00000000000081dd6405c97801bf--

--===============6542431418965175210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6542431418965175210==--
