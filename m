Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 619F4256BD8
	for <lists+usrp-users@lfdr.de>; Sun, 30 Aug 2020 07:35:25 +0200 (CEST)
Received: from [::1] (port=39934 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCFzt-0000Pf-Cm; Sun, 30 Aug 2020 01:35:21 -0400
Received: from mail-ua1-f50.google.com ([209.85.222.50]:34651)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kCFzo-0000Ib-PH
 for usrp-users@lists.ettus.com; Sun, 30 Aug 2020 01:35:16 -0400
Received: by mail-ua1-f50.google.com with SMTP id s29so1039441uae.1
 for <usrp-users@lists.ettus.com>; Sat, 29 Aug 2020 22:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=beItrJo5eRilloR2d9rbSf23VvguW56l09/dmWmlqP8=;
 b=Fy8dV177aept6aCmITCzGeS1ZaDSjXJahCCdDKEyI8fumOBtmOn9P2M3x788M1dOn3
 GiRflOOQfwSyCsR68IlY2q5ZaVRxVct77NFlLZ4B+xCHTY7YKJXxT+B0daL0q1ucAJim
 pEpq6MFNBGmfe+ROlLKE1XkJvnY3jq61KumaYUtFJQDKBRqKdqK91eH2n3VPar1bIqDm
 E2xtHgF/FkTlckqy8yU9/xQ1YglWwer2+5xzoOpBURyVTbwQW0s0QMXMy9fcTrpcR3N/
 5q2W6PiyG8aUu/4JCUKPOoQafH7RMj6n2k0w+pQ0rYtAdeeOBBrRK1iffbqkj9qNBi4T
 mHOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=beItrJo5eRilloR2d9rbSf23VvguW56l09/dmWmlqP8=;
 b=HeSDJrdurcJIxJoRjEtIhv6DktNbElIrXrkxFEabFaY3EekT4tKAoDETJBz6QXJwWe
 mD/73eD+VYwK3GAf0JNrhFXuodyGV0TK0RYE/7ARlYdgL7ui7TnrgA+UhY+37noGMDE1
 r9I2l5TOoTO67dpjva7Ic7RZyLz42Q7XMHlAhT53tK8jxaBMFKgWjfP0VyHv8ezyIRow
 fYASyVd7ZUT59rglh1KgZijgs0d+16AmME/8hLxiUivPebAzzW/UY1oihmpwc5S4uLSx
 UsZqRrlz5TSb6swJyyooL6DGd1tLryw2evdcy0TgQDhovTJ2WtpIVVhyQkAJaSxm/WZ8
 gKQg==
X-Gm-Message-State: AOAM533N2l9fEAuYsBJGWQf5jJB2/BXeCZo7bZOk932fgO/LcgLCUYxX
 u2xKfsJY2TIsPxwupn3EZMuun+RX0iGMp2PfVS7wpwX2
X-Google-Smtp-Source: ABdhPJw8Ae3bRIWNkmuO2NPS47iVucCkdweXVZdUhJmiz677a+9pBT2Nh+oGpGROD+RRhezrHnl4krn6KaVxXbL7I+I=
X-Received: by 2002:ab0:1860:: with SMTP id j32mr2899962uag.70.1598765676231; 
 Sat, 29 Aug 2020 22:34:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk54pzLLicvk6Hw5Az=1hbfWfSfEd7YczZ40sC+E1OO=wJA@mail.gmail.com>
In-Reply-To: <CAE_Rk54pzLLicvk6Hw5Az=1hbfWfSfEd7YczZ40sC+E1OO=wJA@mail.gmail.com>
Date: Sun, 30 Aug 2020 01:34:00 -0400
Message-ID: <CAL7q81sJ+rZAA-apbRTmmy8JkBmNpr=TkvDf9smoQx8QxehQrQ@mail.gmail.com>
To: Daniel Ozer <danielozer22@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] =?utf-8?q?rfnoc_data_type=E2=80=8F?=
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============0631915790167391897=="
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

--===============0631915790167391897==
Content-Type: multipart/alternative; boundary="00000000000036168705ae11a4a7"

--00000000000036168705ae11a4a7
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

1. what is the change if  i pass data through rfnoc block as a byte type or
> as a sc16? Is there a change inside the fpga ?

2. At least in my uhd version the rfnoc: duc has only one type which is
> fc32 . can i change it to sc16 or anything else?


Almost all RFNoC blocks operate on SC16 samples, so you generally can only
use SC16. However, you may notice that UHD and GNU Radio examples usually
use FC32 samples. In that case, UHD automatically converts from FC32 to
SC16. You can also use SC16 samples (by setting CPU type to SC16), which in
that case there will not be any conversion. Note that type conversion only
happens when moving samples to / from the host and only if the CPU type /
OTW type differ. There is no enforcement or conversion of data types when
samples transfer between RFNoC blocks on the FPGA. For example, you can
make a RFNoC block that outputs 8-bit samples and hook that up to the DUC.
UHD will not stop you and the output will be meaningless. (As a side note,
this has improved in the UHD 4.0 release, where RFNoC blocks can define
what data type they accept and UHD will not allow a mismatch.)

3. If i pass data as from SW to the fpga as sc16 there should be any
> condition? like the, data has to be from -1 to 1 ?


If you are using CPU type SC16, then you should use a range of -32768 to
32767. I suspect you are asking for FC32's range though which is -1 to 1.

Jonathon

On Sat, Aug 29, 2020 at 9:14 AM Daniel Ozer via USRP-users <
usrp-users@lists.ettus.com> wrote:

> hi everyone ,
> i have several question regarding to the rfnoc data type:
>
> 1. what is the change if  i pass data through rfnoc block as a byte
> type or as a sc16? Is there a change inside the fpga ?
>
> 2. At least in my uhd version the rfnoc: duc has only one type which is
> fc32 . can i change it to sc16 or anything else?
>
> 3. If i pass data as from SW to the fpga as sc16 there should be any
> condition? like the, data has to be from -1 to 1 ?
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000036168705ae11a4a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Daniel,<div><br></div><div><div dir=3D"ltr"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">1. what is the change if=C2=A0 i pas=
s data through rfnoc block as a byte type=C2=A0or as a sc16? Is there a cha=
nge inside the fpga ?</blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">2. At least in my uhd version the rfnoc: duc has only one type w=
hich is fc32 . can i change it to sc16 or anything else?=C2=A0</blockquote>=
<div><br></div><div>Almost all RFNoC blocks operate on SC16 samples, so you=
 generally=C2=A0can only use SC16. However, you=C2=A0may notice that UHD an=
d GNU Radio examples usually use FC32 samples. In that case, UHD automatica=
lly converts from FC32 to SC16.  You can also use SC16 samples (by setting =
CPU type to SC16), which in that=C2=A0case there will not be any conversion=
. Note that type conversion only happens when moving samples to / from the =
host and only if the CPU type / OTW type differ. There is no enforcement or=
 conversion of data types when samples transfer between RFNoC blocks on the=
 FPGA. For example, you can make a RFNoC block that outputs 8-bit samples a=
nd hook that up to the DUC. UHD will not stop you and the output will be me=
aningless. (As a side note, this has improved in the UHD 4.0 release, where=
 RFNoC blocks can define what data type they accept and UHD will not allow =
a mismatch.)</div></div><div dir=3D"ltr"><br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">3. If i pass data as from SW to the fpga as sc16 =
there should be any condition? like the, data has to be from -1 to 1 ?</blo=
ckquote><div><br></div><div>If you are using CPU type SC16, then you should=
 use a range of -32768 to 32767. I suspect you are asking for FC32&#39;s ra=
nge though which is -1 to 1.</div><div><br></div><div>Jonathon</div><div></=
div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Sat, Aug 29, 2020 at 9:14 AM Daniel Ozer via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"rtl"><div dir=3D"ltr">hi everyone ,</div><div dir=3D"ltr">i have sev=
eral question regarding to the rfnoc data type:</div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">1. what is the change if=C2=A0 i pass data through rf=
noc block as a byte type=C2=A0or as a sc16? Is there a change inside the fp=
ga ?<br><br></div><div dir=3D"ltr">2. At least in my uhd version the rfnoc:=
 duc has only one type which is fc32 . can i change it to sc16 or anything =
else?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">3. If i pass data as=
 from SW to the fpga as sc16 there should be any condition? like the, data =
has to be from -1 to 1 ?<div></div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000036168705ae11a4a7--


--===============0631915790167391897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0631915790167391897==--

