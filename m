Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 338B41BC79C
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2020 20:13:59 +0200 (CEST)
Received: from [::1] (port=60472 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTUjz-0003qL-Mv; Tue, 28 Apr 2020 14:13:55 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:39013)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jTUjw-0003lZ-QQ
 for usrp-users@lists.ettus.com; Tue, 28 Apr 2020 14:13:52 -0400
Received: by mail-qk1-f175.google.com with SMTP id o135so10345036qke.6
 for <usrp-users@lists.ettus.com>; Tue, 28 Apr 2020 11:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8eEa1QJdacd3UeyEkDNAJ+iZuuH7YkCihdf8YV+AHkI=;
 b=mteHEbX5vAADli3q9FwQqNBCeEpCXUUSoiBfml1qYdhwoptyTuEs8ZrdnMIwrbgZUx
 ABTPOhQhfTwKflIxG7U8H5OECCeZzPaPrlTVihfhDg2J4OCqjlN8K4jhm/v91/CQ7lKj
 ChfiNQHmVXStEAXIupxc/CsM3av4HqcirUNunPAgvPyCb+AV0uDXtcVZZElv8uWvUUG/
 6/1sLPR45BFAg8bRbmw2PLRdg/4+LnLzaw92jfZVJ2mupiwuos+CafNarqx3ON8DhOTz
 Ij1sS0MfBzmiMUQ4sglmK3Oxj4Qk1c01C1iHeKX+JIAqMlgY/FNyrpzswV/GkHbqY46I
 K1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8eEa1QJdacd3UeyEkDNAJ+iZuuH7YkCihdf8YV+AHkI=;
 b=KPOdnfQ9UfdmlyWLxd9W9lyMT4EMD0oka0mrpfS3dHDpo8IwpZNfu1DLSnDFCF9iUy
 sjiazo8+dUs0HSG1d40KfkFjfxNc5ot5G/f9XtBSsRhyokcb+pA1V9hbbGI0FpQsATNR
 OQWGAPwija/5RJH1bgw1K+Vu8wkxajPVM6XSbJ/CoWyKX4Pl4Im1x2NAi+ABJin5maRV
 Meouk9IMxwoOoGX9iCbZrFWlvE0jdHC+PgqwPMiVpCwRWYElIS53+qWTAPgJg/e/afSE
 F2lObMvnLsLqiuiW0Ejc403RAWORUldskP0PzubkXQi8x3jCqt08ZogNlDg5+D0zOOAJ
 ceCQ==
X-Gm-Message-State: AGi0PuYlTQF4cKcTM76r/l3ckLkNVqlnO0L5P0pxF15BVo3bU7WEx7ts
 jgaZYL/ZuxNF9cDRnfKc5WY3pTE3LilXxi0U1Vo=
X-Google-Smtp-Source: APiQypK6fPExmMesF0MBY9me+MlzH0qObbYt34bqeGs62tBrLjU+EdW2WDPQFj3R0XBIiazHYOPg/cB0Z1jn48T9RSA=
X-Received: by 2002:a05:620a:15e8:: with SMTP id
 p8mr28851564qkm.331.1588097592291; 
 Tue, 28 Apr 2020 11:13:12 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_mkuEX=JjGakNemNB0CSxZjWwrSCQvLWjQetXRHLGUs8A@mail.gmail.com>
 <SL2P216MB03313AE03A88DF8640648FA293AC0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
In-Reply-To: <SL2P216MB03313AE03A88DF8640648FA293AC0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
Date: Wed, 29 Apr 2020 02:13:01 +0800
Message-ID: <CACjmV_nhqZWKuYiHVHwc+TnBLUcJBOUvuWYv=ZadJRCEmFAo6w@mail.gmail.com>
To: Kyeong Su Shin <ksshin@postech.ac.kr>
Subject: Re: [USRP-users] 10.23Msps Sample Rate
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
From: guowang qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: guowang qiu <qiu.guowang007@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============1409359326178840636=="
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

--===============1409359326178840636==
Content-Type: multipart/alternative; boundary="000000000000db771e05a45dc856"

--000000000000db771e05a45dc856
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kyeong Su Shin,

Thank you for your reply.
We need to send out signal at a very precise time. Interval between packet
transmitting needs to be an integral multiple of 1 / 10.23M, so the master
clock rate is should be N*10.23MHz.

Best regards,
Damon



On Tue, 28 Apr 2020 at 12:45, Kyeong Su Shin <ksshin@postech.ac.kr> wrote:

> Hello Guowang:
>
> First, if you are woking on GNSS (it's just my guess, but that's where
> 10.23 MHz usually comes from), you usually DON'T need to use 10.23 MS/s
> (see GNSS-SDR and gps-sdr-sim source codes). So, you may want to think
> about that before proceeding further.
>
> If you absolutely want to use 10.23 MS/s, then you can try resampling you=
r
> data (either on your PC, on the FPGA, or both). It may require a pretty
> serious resampler, though (could be difficult to this in real-time).
>
> You can try altering the actual hardware clock of the board, but do not
> expect it to be a trivial task.
>
> Regards,
> Kyeong Su Shin
> ------------------------------
> *=EB=B3=B4=EB=82=B8 =EC=82=AC=EB=9E=8C:* guowang qiu via USRP-users <usrp=
-users@lists.ettus.com> =EB=8C=80=EC=8B=A0
> USRP-users <usrp-users-bounces@lists.ettus.com>
> *=EB=B3=B4=EB=82=B8 =EB=82=A0=EC=A7=9C:* 2020=EB=85=84 4=EC=9B=94 28=EC=
=9D=BC =ED=99=94=EC=9A=94=EC=9D=BC =EC=98=A4=EC=A0=84 3:52
> *=EB=B0=9B=EB=8A=94 =EC=82=AC=EB=9E=8C:* usrp-users@lists.ettus.com <usrp=
-users@lists.ettus.com>
> *=EC=B0=B8=EC=A1=B0:* Damon Qiu <qiu.guowang007@gmail.com>
> *=EC=A0=9C=EB=AA=A9:* [USRP-users] 10.23Msps Sample Rate
>
> Hi all,
>
> We are trying to get 10.23Msps or 20.46Msps sample rate with X310. Latest
> UHD driver enables USRP x310 support 184.32MHz to 200MHz master clock rat=
e.
> But it just support some discrete values=EF=BC=8Cunfortunately, it just d=
idn't
> support 10.23M*18 or 10.23M*19.
> We have tried to input an external reference clock of 10.23MHz, and we
> want to cheat x310 that the external clock is 10MHz. We set the master
> clock rate of the system as 200MHz. If the PLL can lock to the external
> clock source, the actual master clock rate is 10.23 =C3=97 20MHz. However=
, when
> the program is running, the UHD driver throws an exception, indicating:
> terminate called after throwing an instance of 'uhd::runtime_error'
>   what(): RuntimeError: Reference Clock PLL failed to lock to external
> source.
>
> Is there any way to obtain 10.23Msps sample rate with X310?
>
> Best regards,
> Damon
>

--000000000000db771e05a45dc856
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=C2=A0Kyeong Su Shin,</div><div><br></div><div>Than=
k you for your reply.</div><div>We need to send out signal at a very precis=
e time. Interval between packet transmitting needs to be an integral multip=
le of 1 / 10.23M, so the master clock rate is should be N*10.23MHz.</div><d=
iv><br></div><div>Best regards,</div><div>Damon</div><br><br><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 28 Apr 2020 =
at 12:45, Kyeong Su Shin &lt;<a href=3D"mailto:ksshin@postech.ac.kr">ksshin=
@postech.ac.kr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello Guowang:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
First, if you are woking on GNSS (it&#39;s just my guess, but that&#39;s wh=
ere 10.23 MHz usually comes from), you usually DON&#39;T need to use 10.23 =
MS/s (see GNSS-SDR and gps-sdr-sim source codes). So, you may want to think=
 about that before proceeding further.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
If you absolutely want to use 10.23 MS/s, then you can try resampling your =
data (either on your PC, on the FPGA, or both). It may require a pretty ser=
ious resampler, though (could be difficult to this in real-time).
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You can try altering the actual hardware clock of the board, but do not exp=
ect it to be a trivial task.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Kyeong Su Shin<br>
</div>
<div id=3D"gmail-m_2574267859068596766appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_2574267859068596766divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>=EB=
=B3=B4=EB=82=B8 =EC=82=AC=EB=9E=8C:</b> guowang qiu via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; =EB=8C=80=EC=8B=A0 USRP-users &lt;<a href=3D"mailto:usr=
p-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists=
.ettus.com</a>&gt;<br>
<b>=EB=B3=B4=EB=82=B8 =EB=82=A0=EC=A7=9C:</b> 2020=EB=85=84 4=EC=9B=94 28=
=EC=9D=BC =ED=99=94=EC=9A=94=EC=9D=BC =EC=98=A4=EC=A0=84 3:52<br>
<b>=EB=B0=9B=EB=8A=94 =EC=82=AC=EB=9E=8C:</b> <a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a> &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt;<br>
<b>=EC=B0=B8=EC=A1=B0:</b> Damon Qiu &lt;<a href=3D"mailto:qiu.guowang007@g=
mail.com" target=3D"_blank">qiu.guowang007@gmail.com</a>&gt;<br>
<b>=EC=A0=9C=EB=AA=A9:</b> [USRP-users] 10.23Msps Sample Rate</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi all,
<div><br>
</div>
<div>We are trying to get 10.23Msps or 20.46Msps sample rate with X310. Lat=
est UHD driver enables USRP x310 support 184.32MHz to 200MHz master clock r=
ate. But it just support some=C2=A0discrete values=EF=BC=8Cunfortunately, i=
t just didn&#39;t support 10.23M*18 or 10.23M*19.</div>
<div>We have tried to input an external reference clock of 10.23MHz, and we=
 want to cheat x310 that the external clock is 10MHz. We set the master clo=
ck rate of the system as 200MHz. If the PLL can lock to the external clock =
source, the actual master clock
 rate is 10.23 =C3=97 20MHz. However, when the program is running, the UHD =
driver throws an exception, indicating:<br>
terminate called after throwing an instance of &#39;uhd::runtime_error&#39;=
</div>
<div>=C2=A0 what(): RuntimeError: Reference Clock PLL failed to lock to ext=
ernal source.</div>
<div><br>
</div>
<div>Is there any way to obtain 10.23Msps sample rate with X310?<br>
<br>
</div>
<div>Best regards,</div>
<div>Damon</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000db771e05a45dc856--


--===============1409359326178840636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1409359326178840636==--

