Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 577DF1F05E7
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jun 2020 11:21:56 +0200 (CEST)
Received: from [::1] (port=38884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhV1V-0001om-7e; Sat, 06 Jun 2020 05:21:53 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:41510)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jhV1R-0001lP-Ct
 for usrp-users@lists.ettus.com; Sat, 06 Jun 2020 05:21:49 -0400
Received: by mail-qk1-f170.google.com with SMTP id n11so12340643qkn.8
 for <usrp-users@lists.ettus.com>; Sat, 06 Jun 2020 02:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lOCrOhObo/O/azRaJ0i31TuYdXumi8r3iKsq2Hi7D0A=;
 b=b/A7lnTz9CTL33GI+inam4fPm+qpOE6iEoyFsqo4ME74Z2nBqqKKx3C09RUrS6e/6H
 mr5wr4nKBr+8R0CjxMKHyx/9ZHB+TKsAhBOEPwTmHRPmcnPYywyadBS/16kKCEysKWZH
 xfdzNaehtXVtTPwzqp8+WprT7jMzhBwrgmZKZEEkxJjpv0JaJ5g6ap/qE5XBIZZn6ME5
 8pN2h7hKGju+yOybWynoPmVp+olPB8gj3mVwMHE9Zrttc4UtxEw3nUlYcZMHAZwtWHZD
 TGV6Q8RSkr7XYeDtoTu/ePk8Hbnr7Q9hY1VueEGBzehuTsuZRbyO6RwHMYV2lukcrLE1
 wjUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lOCrOhObo/O/azRaJ0i31TuYdXumi8r3iKsq2Hi7D0A=;
 b=KDqYN+nnnJHpuGvcd0Izn1yExHGFepNwg5bitvZg0Hc+ucqpWI8KyFXtzX/xBDyhA5
 ss4VFochuQMQJnLQ0bQDZufvNViA0R3+92mwIPc3FzymdjDnaigoNDVgTFCFO0fT2IUZ
 s74PaSrxJKVsTdZJ/LfCi1oEPGs+VYqIQVrkX5en2llzp8EGtm/vE0kCrnB3GX+0drss
 mVGEjsTmbPUqfkp1+4z6VOLdwEO5raSHbtcM1C7T5g9Ee2l6cLHkpRKGnWXc6/yNSRVr
 vH9edD6Q9y6aDyFd3QpiBKtP6lCnKiyDKyTVspMU9CFwNCy5mtYyqwz5pHULp/Eo9bAc
 ZySw==
X-Gm-Message-State: AOAM531e7nB5QTwZTv4Y4L2suZUSeuDEDxkxUOAQVqFIkam00aiAqC41
 ktKQzlO7wjucjXrrdhilwVZEFs0DGM9UjrimyuqRkwPkmd4=
X-Google-Smtp-Source: ABdhPJwcOf2WhsOTiNlDoKv1gyQvvBBCyU9TX2Wy+UXaiW1Yhx46vNiCwL7jc5m+kMvQfiT0qtwlVXN+a1BWjQO6NgM=
X-Received: by 2002:ae9:c10d:: with SMTP id z13mr12807065qki.3.1591435268640; 
 Sat, 06 Jun 2020 02:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_n8FX-ktO2tzHObN9eaBq7pdQ67AW=46WWMgpHmwnkTvQ@mail.gmail.com>
 <A6D18848-7D69-461E-AB5A-02F5B5166ABE@gmail.com>
 <CACjmV_k9v7aBTR+8=e9qNJzh904hSWr061kF2r4YBQ2BNpxj4Q@mail.gmail.com>
In-Reply-To: <CACjmV_k9v7aBTR+8=e9qNJzh904hSWr061kF2r4YBQ2BNpxj4Q@mail.gmail.com>
Date: Sat, 6 Jun 2020 17:20:57 +0800
Message-ID: <CACjmV_mc8zbOvYG_P85ivXypgDE9uMWURD5+Ee_UdV6qHVuuFQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] B210 LO signal leakage above 5GHz
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
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============4420455823630793325=="
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

--===============4420455823630793325==
Content-Type: multipart/alternative; boundary="000000000000ded41905a766e577"

--000000000000ded41905a766e577
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Does anyone know the definition of DC offset=EF=BC=8C which is plotted in
https://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf, page 282? What is
the unit of DC offset? dB, dBc or dBm? What are the test conditions for
this performance test report? What is the sampling rate? How to test it?
We are still trying to solve this LO leakage issue.

On Fri, 29 May 2020 at 02:14, guowang qiu <qiu.guowang007@gmail.com> wrote:

> Hi Marcus,
>
> Thank you for your reply.
> We have tried to set the magnitude of the modulating baseband signal from
> 0.1 to 0.6, it only affects the single tone signal strength and has no
> effect on the LO leakage.
>
> Best regards,
> Damon
>
> On Fri, 29 May 2020 at 02:03, Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Have you tried adjusting the magnitude of the modulating baseband signal=
?
>> Does that make a difference.
>>
>> My guess is that the leakage path isn=E2=80=99t through the VGA but rath=
er
>> through something else in the package. In which case, no amount of softw=
are
>> mods will reduce it.
>>
>> Sent from my iPhone
>>
>> > On May 28, 2020, at 1:50 PM, guowang qiu via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > =EF=BB=BF
>> > Hi all,
>> >
>> > We use USRP b210 as a signal generator, and adjust the tx gain to make
>> the tx power from - 90dbm to 0dbm. USRP b210 works fine in 2.4GHz freque=
ncy
>> band, but it has a very strong LO signal leakage at frequencies higher t=
han
>> 5GHz.
>> > In my test, the frequency of  baseband (cos signal source) is set to
>> 1MHz, so LO signal leakage and single tone signal can be easily
>> distinguished. When the tx gain is set from 0 to 30 db, the strength of =
the
>> LO signal hardly changes, and it is higher than the strength of the sing=
le
>> tone signal. With the increase of tx gain, the strength of single tone
>> signal will increase obviously. It seems that the local oscillator signa=
l
>> generated by the PLL in ad9361 bypasses the internal adjustable gain pow=
er
>> amplifier and leaks directly to the antenna port.
>> > Is it possible to reduce the local leakage by modifying the UHD source
>> code?
>> >
>> > Best regards,
>> > Damon
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000ded41905a766e577
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,<br></div><div><br></div><div>Does anyone know=
 the definition of DC offset=EF=BC=8C which is plotted in=C2=A0<a href=3D"h=
ttps://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf">https://kb.ettus.c=
om/images/c/cb/B200_RF_Performance.pdf</a>, page 282? What is the unit of D=
C offset? dB, dBc or dBm? What are the test conditions for this performance=
 test report? What is the sampling rate? How to test it?<br></div><div>We a=
re still trying to solve this LO leakage issue.</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 29 May 2020 =
at 02:14, guowang qiu &lt;<a href=3D"mailto:qiu.guowang007@gmail.com">qiu.g=
uowang007@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Marcus,</div><=
div><br></div><div>Thank you for your reply.<br></div><div>We have tried to=
 set the magnitude of the modulating baseband signal from 0.1 to 0.6, it on=
ly affects the single tone signal strength and has no effect on the LO leak=
age.</div><div><br></div><div>Best regards,</div><div>Damon<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, 29 May 2020 at 02:03, Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Have you tried adjustin=
g the magnitude of the modulating baseband signal? Does that make a differe=
nce. <br>
<br>
My guess is that the leakage path isn=E2=80=99t through the VGA but rather =
through something else in the package. In which case, no amount of software=
 mods will reduce it. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On May 28, 2020, at 1:50 PM, guowang qiu via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi all,<br>
&gt; <br>
&gt; We use USRP b210 as a signal generator, and adjust the tx gain to make=
 the tx power from - 90dbm to 0dbm. USRP b210 works fine in 2.4GHz frequenc=
y band, but it has a very strong LO signal leakage at frequencies higher th=
an 5GHz. <br>
&gt; In my test, the frequency of=C2=A0 baseband (cos signal source) is set=
 to 1MHz, so LO signal leakage and single tone signal can be easily disting=
uished. When the tx gain is set from 0 to 30 db, the strength of the LO sig=
nal hardly changes, and it is higher than the strength of the single tone s=
ignal. With the increase of tx gain, the strength of single tone signal wil=
l increase obviously. It seems that the local oscillator signal generated b=
y the PLL in ad9361 bypasses the internal adjustable gain power amplifier a=
nd leaks directly to the antenna port.<br>
&gt; Is it possible to reduce the local leakage by modifying the UHD source=
 code?<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Damon<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000ded41905a766e577--


--===============4420455823630793325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4420455823630793325==--

