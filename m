Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDA235D12A
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 21:37:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C23A384B81
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 15:37:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iDtzYiZ9";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 9936D384B4C
	for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 15:36:45 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id c123so10664182qke.1
        for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 12:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=/waaWlrlDOyaCB5Rws0U0pYHT4M/5k4nWPJ8/6lf9U8=;
        b=iDtzYiZ9skUpQ4B+VPT2DJ34krckP/5wfu6b7TM23FpW7TUu/iKmOGS0M2o8MPlJpw
         BCaT1jPwtWyw4oFU66EseZvtmYC25h9VPWRfChShyZToj7nNYiUiHL+iezFFVQ+TzP4w
         qDL3nAjFJVAKLtqhib39BzHllh47V5GWUGo0fyWmGa5bSi1OqM48AoJAtN3aMzTe1Nyx
         rrP7KvhP0aSeBQTbZ/S0M9Cvh02+ZBNpYf5b/m4AxesKXyp3YxMmjaB0tZrIYGPz5v6W
         I3BqS8dhNUO9tljeVFzVODqAdYHdruQ+jO/ARL4W807uavE1Wvelsn7e77ObpGGLBNvd
         s0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=/waaWlrlDOyaCB5Rws0U0pYHT4M/5k4nWPJ8/6lf9U8=;
        b=StYTC8A/BghEYiruGv2duoFDbaCna8Di+aK30yq8H+DyPP/mP2dK4N0VessTDcw396
         eWg+8N0UM7O19CZE/Fc3LorPTQzadrNn1NXSStYq7Wg0NWiYak9K5xvfOWgK2DvmJ+gc
         dn9QoExfrU7q8RfItyNFrS9I1b8kMJuwZJnoD2QbLoJ0+QJC8QwJc3TKbiArPVsRZMEs
         XUEu+HYixKBtJjkUVtb6ISMqfkzGTC2Sy00yV+5o0A0Gg1w2S2W+bzSMZrps8r28foGV
         WE6m4lwGoxQRwSAEnDPS/ES2K27klpv0ESa1K5HSqBkjp+TnueWGxkaRwQ2Nmv4WVUNs
         imNw==
X-Gm-Message-State: AOAM5315FT9k1wn0RG3T6qXCY2IzNPJDd7XDb1MM/N993DsGt7g7293d
	Vgj7pYFz8NtmHzY5nklKHdE=
X-Google-Smtp-Source: ABdhPJzt/WYqcmutRW52/yql7RdByKNUjCr+bRoSpbv18Bd5aIBDhIqGhL/d6FifSmyUsmNlxYzZtg==
X-Received: by 2002:a05:620a:24d1:: with SMTP id m17mr3346667qkn.46.1618256204991;
        Mon, 12 Apr 2021 12:36:44 -0700 (PDT)
Received: from [10.103.240.83] ([207.164.46.58])
        by smtp.gmail.com with ESMTPSA id r9sm4638045qtf.62.2021.04.12.12.36.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 12:36:44 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Apr 2021 15:36:43 -0400
Message-Id: <6989E600-E8E1-4EEA-AE6C-B375F935DA30@gmail.com>
References: <AJYWdSUWfCoacfRUMfLJRzMBv3uJ1cgCXBB5ORI5Pwk@lists.ettus.com>
In-Reply-To: <AJYWdSUWfCoacfRUMfLJRzMBv3uJ1cgCXBB5ORI5Pwk@lists.ettus.com>
To: paradis@kwesst.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: DXGOENNWKFUEAOUZARIO752MWEOEOHLB
X-Message-ID-Hash: DXGOENNWKFUEAOUZARIO752MWEOEOHLB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DXGOENNWKFUEAOUZARIO752MWEOEOHLB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6813426863036278939=="


--===============6813426863036278939==
Content-Type: multipart/alternative; boundary=Apple-Mail-D21AA236-0344-43EE-AEA0-60B000F51FC8
Content-Transfer-Encoding: 7bit


--Apple-Mail-D21AA236-0344-43EE-AEA0-60B000F51FC8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There is no kernel-level
Driver for this device. It=E2=80=99s handled by Libusb=20

Sent from my iPhone

> On Apr 12, 2021, at 3:34 PM, paradis@kwesst.com wrote:
>=20
> =EF=BB=BF
> I=E2=80=99ve been poking around trying to find out any more information on=
 my issue and I noticed this after running the =E2=80=98usb-devices=E2=80=99=
 command:
>=20
> T: Bus=3D01 Lev=3D01 Prnt=3D01 Port=3D01 Cnt=3D02 Dev#=3D 10 Spd=3D480 MxC=
h=3D 0
>=20
> D: Ver=3D 2.00 Cls=3D00(>ifc ) Sub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D 1
>=20
> P: Vendor=3D2500 ProdID=3D0022 Rev=3D01.00
>=20
> S: Manufacturer=3DCypress
>=20
> S: Product=3DWestBridge
>=20
> S: SerialNumber=3D0000000004BE
>=20
> C: #Ifs=3D 1 Cfg#=3D 1 Atr=3D80 MxPwr=3D200mA
>=20
> I: If#=3D0x0 Alt=3D 0 #EPs=3D 0 Cls=3Dff(vend.) Sub=3D00 Prot=3D00 Driver=3D=
(none)
>=20
>=20
>=20
> The VID/PID are 2500:0022 so this is the B205 I have plugged in, but on th=
e very last line it says =E2=80=9CDriver=3D(none).
>=20
> Could there be something wrong with the UHD installation? Should I try a d=
ifferent version than v4.0.0.0?
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-D21AA236-0344-43EE-AEA0-60B000F51FC8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There is no kernel-level<div>Driver for thi=
s device. It=E2=80=99s handled by Libusb&nbsp;<br><br><div dir=3D"ltr">Sent f=
rom my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 12,=
 2021, at 3:34 PM, paradis@kwesst.com wrote:<br><br></blockquote></div><bloc=
kquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>I=E2=80=99ve been poking a=
round trying to find out any more information on my issue and I noticed this=
 after running the =E2=80=98usb-devices=E2=80=99 command:</p><p>T:  Bus=3D01=
 Lev=3D01 Prnt=3D01 Port=3D01 Cnt=3D02 Dev#=3D 10 Spd=3D480 MxCh=3D 0</p><p>=
D:  Ver=3D 2.00 Cls=3D00(&gt;ifc ) Sub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D  1<=
/p><p>P:  Vendor=3D2500 ProdID=3D0022 Rev=3D01.00</p><p>S:  Manufacturer=3DC=
ypress</p><p>S:  Product=3DWestBridge </p><p>S:  SerialNumber=3D0000000004BE=
</p><p>C:  #Ifs=3D 1 Cfg#=3D 1 Atr=3D80 MxPwr=3D200mA</p><p>I:  If#=3D0x0 Al=
t=3D 0 #EPs=3D 0 Cls=3Dff(vend.) Sub=3D00 Prot=3D00 Driver=3D(none)</p><p><b=
r></p><p>The VID/PID are 2500:0022 so this is the B205 I have plugged in, bu=
t on the very last line it says =E2=80=9CDriver=3D(none).</p><p>Could there b=
e something wrong with the UHD installation? Should I try a different versio=
n than v4.0.0.0?</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-D21AA236-0344-43EE-AEA0-60B000F51FC8--

--===============6813426863036278939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6813426863036278939==--
