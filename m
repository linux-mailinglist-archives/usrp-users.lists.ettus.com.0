Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BB92A81E4
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 16:09:21 +0100 (CET)
Received: from [::1] (port=44176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kagt5-00087F-Ie; Thu, 05 Nov 2020 10:09:19 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:32779)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kagt1-0007zr-IP
 for USRP-users@lists.ettus.com; Thu, 05 Nov 2020 10:09:15 -0500
Received: by mail-ot1-f42.google.com with SMTP id i18so1721447ots.0
 for <USRP-users@lists.ettus.com>; Thu, 05 Nov 2020 07:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y8Y4CiWDXNAqqz8NjVLK4UxY1N2BfTwa4Cg3XiKZXpk=;
 b=Zf8k3eimt1qO2AitVw4JE5C/VIVIUgZV6eTcHDRMUoOYrYiU6BCYp8TBd/TzKQXJQO
 mjlSUJ+lAIF88up3/xOepyqXwFTVH5HteuxtE1eIwhJW/1yqaoelUtavtQWm0pp8x+fu
 94UlX2hKmvBtmE+0652y0spxYyW/xiRNAtDL9o32BuINwQ67LGk7oGGuuuV1uJiA2LmN
 xxXxzdDNaBWzgbFaEVkKMRZE7D9nOTKRqBV1/x7KfO+9dFdMG1Arubxcs3LvrJLy5gj4
 FrQdxF1kzEB9Qzm7u5UR4+/SoTQuTGMYpg7OX4dhb82xKZ1xvMoErVe4wOPYrv0FhyYs
 4sTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y8Y4CiWDXNAqqz8NjVLK4UxY1N2BfTwa4Cg3XiKZXpk=;
 b=HiGv2BbMYYtUEbes61T5Sl1/05vWDM7nauUDvyS7BRtHoVsNvx/GgKDtNb73PaXE7p
 uYPuSqg3K9nEiQhNrwn1eK1Vd1vLNm0aB7hYUompgJW2gqvrYop6RziWF/9j17K46M5Z
 K9CJxZmbvyI2qc6dDQz4lbwj840AwWyzjIEP5o8qRIKqNepPJe3ta01y24LIHn+NhIkr
 tONOd0hfoqm30/z069Qd9YmE61/jxJydcS8R3OeUhKKy7mRdRyr0TEayqWaluh3PRgcJ
 fmQZ8JmRHQlf55hIEsBnA7/1B5JyKElMtMbHW7/uNZYXFginjk3oaNoJa3W2imN/fM2w
 BRNg==
X-Gm-Message-State: AOAM531pxQoGz7McCpzpn8hnAF3T2PvhpYlI8bnH230YqO/XMN4BIB8j
 oOCRRZuVNFBJxRf+ciwQWJnn4wPIfU0AHZzoCy1nRw==
X-Google-Smtp-Source: ABdhPJx4R4QgG2M2BSQfQDE62r5eYSSfu2xNB+4+bulPaRRdZicz8U02Gzf6Sv0yiH0N6BQnl4TMaw3SjhYIiobz1ho=
X-Received: by 2002:a9d:27c9:: with SMTP id c67mr1476534otb.301.1604588914677; 
 Thu, 05 Nov 2020 07:08:34 -0800 (PST)
MIME-Version: 1.0
References: <1b7351208b9b471c89c06bbf261751a6@fau.de>
 <CAKJyDkJZBbKjzdz+Be9D0htO_BqiGP-XTMw8UJ86BvRO3iDHdA@mail.gmail.com>
In-Reply-To: <CAKJyDkJZBbKjzdz+Be9D0htO_BqiGP-XTMw8UJ86BvRO3iDHdA@mail.gmail.com>
Date: Thu, 5 Nov 2020 10:08:23 -0500
Message-ID: <CAB__hTTvoX5hzq-vWqhzayr0Nfon-O09mn_LWzSjLDqQX2PhsA@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>
Subject: Re: [USRP-users] Use of IEEE1588 PTP
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6559953194685091768=="
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

--===============6559953194685091768==
Content-Type: multipart/alternative; boundary="0000000000004571c005b35d7873"

--0000000000004571c005b35d7873
Content-Type: text/plain; charset="UTF-8"

Although the X310 does not support White Rabbit, it should be possible to
use the WR-LEN products mentioned in the link below to provide 10MHz and
PPS outputs such that they can be used with one or more X310s to provide
the desired synchronization.  The "cost" is that you need a WR-LEN in close
proximity to each X310.
Rob

On Thu, Oct 29, 2020 at 3:22 PM Robin Coxe via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The X310 does not support White Rabbit or IEEE 1588.
>
> The N310/N320 have only been validated using a White Rabbit Master such as
> this one: https://sevensols.es/index.php/index/timing-products/wr-len/
> A simple PTP Master will almost certainly not work with the WR FPGA
> bitstream.
>
>
> On Thu, Oct 29, 2020 at 1:56 AM Bruckmeyer, Heiko via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>>
>>
>> I have a question regarding the use of the simple synchronization
>> protocol IEEE1588 Precision-Time-Protocol.
>>
>> I want to use Ettus USRP N3xx. I know that they support the White Rabbit
>> protocol for synchronizing. PTP is a part of the White Rabbit. So is it
>> possible to use a simple PTP Master and synchronize the USRP to it or do I
>> need a White Rabbit Master?
>>
>> I know that the use of simple PTP will degrade the synchronization
>> accuracy.
>>
>>
>>
>> Does the USRP X3xx also support White Rabbit or IEEE1588 PTP?
>>
>>
>>
>> Thanks and best regards,
>>
>> H. Bruckmeyer
>>
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004571c005b35d7873
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Although the X310 does not support White =
Rabbit, it should be possible to use the WR-LEN products mentioned in the l=
ink below to provide 10MHz and PPS outputs such that they can be used with =
one or more X310s to provide the desired synchronization.=C2=A0 The &quot;c=
ost&quot; is that you need a WR-LEN in close proximity to each X310.<div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Oct 29, 2020 at 3:22 PM Robin Coxe via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">The X310 does not support White Rabbit or IEEE 1588.<div><br></div=
><div>The N310/N320 have only been validated using a White Rabbit Master su=
ch as this one:=C2=A0<a href=3D"https://sevensols.es/index.php/index/timing=
-products/wr-len/" target=3D"_blank">https://sevensols.es/index.php/index/t=
iming-products/wr-len/</a>=C2=A0=C2=A0</div><div>A simple PTP Master will a=
lmost certainly not work with the WR FPGA bitstream.</div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Oct 29, 2020 at 1:56 AM Bruckmeyer, Heiko via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div lang=3D"DE"><div><p class=3D"MsoNormal">Hello,<u></u><u></u></=
p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-GB">I have a question regarding the use of the simple synchro=
nization protocol IEEE1588 Precision-Time-Protocol. <u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-GB">I want to use Ettus USRP N3xx=
. I know that they support the White Rabbit protocol for synchronizing. PTP=
 is a part of the White Rabbit. So is it possible to use a simple PTP Maste=
r and synchronize the USRP to it or do I need a White Rabbit Master? <u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB">I know that =
the use of simple PTP will degrade the synchronization accuracy. <u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB">Does the USRP X3=
xx also support White Rabbit or IEEE1588 PTP?<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-GB">Thanks and best regards,<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB">H. Bruckmeyer<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=
=A0<u></u></span></p></div></div>__________________________________________=
_____<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000004571c005b35d7873--


--===============6559953194685091768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6559953194685091768==--

