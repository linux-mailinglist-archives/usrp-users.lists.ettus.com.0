Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 475F911DE14
	for <lists+usrp-users@lfdr.de>; Fri, 13 Dec 2019 06:59:47 +0100 (CET)
Received: from [::1] (port=50224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ifdzL-00009C-3P; Fri, 13 Dec 2019 00:59:43 -0500
Received: from mail-il1-f179.google.com ([209.85.166.179]:33156)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <padorin.kurpinsky@gmail.com>)
 id 1ifdzH-0008Uf-Jk
 for usrp-users@lists.ettus.com; Fri, 13 Dec 2019 00:59:39 -0500
Received: by mail-il1-f179.google.com with SMTP id r81so1143042ilk.0
 for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2019 21:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/+vDuFZH2Lfk9r6fSGuqZevtxCjUY4svL+XLov65ldU=;
 b=kg8NB7UVEvNTt+7Vy125Wsbqgg+xw6lEB3avsria9rQ1d0qtrzNfyOVaG2CnMsbzZ4
 Zgt6IA9kJVNxZHPgZc9sa27OTWpwG4KeDlDaslnJI9M0puE6cK27bqAuhAuG9BQMneWF
 WTJV8hp+hfDFME+UiBu3/2GJDdMTWhOjYnPUL/vI/GsdbuO8YgbHivIM7uyjdhHdEBDC
 61P1IvjeE+tEMv4gFoX1ML6D6d2Nak/Ezr19BYqlBokEeHNcpXEVCXBSq9bI5NNvEJyh
 OdLbjTKhiRLY+m7CKRtqNB4Z8LUswsiAfbMXi3JYru30os2RPwSg5KGjZ436w/PW7D07
 AkSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/+vDuFZH2Lfk9r6fSGuqZevtxCjUY4svL+XLov65ldU=;
 b=GFmXLdK81XcN/oE21SxTdGTZ/JRTMq8ZzYM/I3mbx6xb1yXn2pL5x4H1x0i8v+m2uN
 1B1ez+9orivJV0W1WPP9nXLelrm72e5Dkcl44KwvMMnqgcNeg6uBCUA/KOgn0h3OHa6z
 kVvIOmYVP26AakB5AbxFJvhyB/N0bRaigMsXwjT4DziodmUQ7bC55zIGK+F5E9+93JXG
 N1mTm27zevdh0Bplw7TTHhyh7vdIH6sUug0p8kyE8+nHkyD99X5Tpc+DzwvajwcWintR
 k1j76rMFHjvAP2eMritw5b38EURCIShWnfBPQdbqsl2IR25CMhegGT4gmNtaxxne46A2
 /Kzg==
X-Gm-Message-State: APjAAAWDXP6hXoo9TETNghWBk+DexViPKg7VdyUCdAz/uIqX677z8XJJ
 yOhmhgrwJaAyuVKkVjgqXhfr7t5cLAet/E/xd3E=
X-Google-Smtp-Source: APXvYqxc0Ga3Hdlf+NWmCZe9QU6HB5/+8LFTJKU2YyJgFciuo+KL3e/1ZPAtQAvskTRlwCkIzGOkVSCXz82bGgyEA7s=
X-Received: by 2002:a92:3f0f:: with SMTP id m15mr12142927ila.164.1576216738677; 
 Thu, 12 Dec 2019 21:58:58 -0800 (PST)
MIME-Version: 1.0
References: <CAB3EzyLimQqAM+L9vH3YNvWpRPUVDDpjDRBemh-NF0j+MuB1sg@mail.gmail.com>
 <CAL263iyaCA4YWyBkPCHxMgG2u07UGhP=m1Rd3EtUtQ7fNJDi+A@mail.gmail.com>
In-Reply-To: <CAL263iyaCA4YWyBkPCHxMgG2u07UGhP=m1Rd3EtUtQ7fNJDi+A@mail.gmail.com>
Date: Fri, 13 Dec 2019 14:58:47 +0900
Message-ID: <CAB3EzyJbEZMbV+q3d1nquZFh74UTWRnhQCTh52gOk2dF22tY9g@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] Does USRP B210 support 2x2 30.72Mhz sampling rate?
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
From: Padorin Kurpinsky via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Padorin Kurpinsky <padorin.kurpinsky@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5469893518437666154=="
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

--===============5469893518437666154==
Content-Type: multipart/alternative; boundary="000000000000cc478b05998f8eb2"

--000000000000cc478b05998f8eb2
Content-Type: text/plain; charset="UTF-8"

Hello Nate,

Thanks for your response. I already set the CPU governor to performance. In
2x2 @30.72e6 @sc16, it works fine. But, can it work on sc16 too?

I can succeed at 2x2 @23e6 @sc16 (sudo ./benchmark_rate --rx_rate 23e6
--tx_rate 23e6 --channels 0,1). And failed at 2x2 @24e6 @sc16 and over
@24e6.

This application note [1] says that the USRP B210 operates on Half-Duplex
and the host sample rate is 61.44 @ sc16. However, since it works on
Half-duplex, its total interface bandwidth would be *shared between the
transmit and receive functions* of a USRP.

So, what I understand is that since each TX and RX consume 30.72e6 Samples,
2x2 will consume 122.88 (30.72e6 * 4) samples. That's why it is failed. Am
I correct? it is confusing...

Thanks.

[1] https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates

On Fri, Dec 13, 2019 at 1:32 PM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Padorin,
>
> Yes the B210 supports 2x2 @ 30.72e6, but is dependent upon your host
> system and USB controllers.
>
> You can try using sc12 OTW format which may help:
>
> ./benchmark_rate --rx_otw sc12 --tx_otw sc12 ......
>
> Also ensure you've set your CPU governor to performance, and enabled
> thread prioirty scheduling as detailed here
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>
> Regards,
> Nate Temple
>
> On Thu, Dec 12, 2019 at 7:45 PM Padorin Kurpinsky via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi all,
>>
>> The USRP B210 spec [1] says it supports  30.72 MHz of instantaneous
>> bandwidth. However, If I run benchmark_rate, i.e., sudo ./benchmark_rate
>> --rx_rate 30.72e6 --tx_rate 30.72e6 --channels 0,1. Then, it shows a lot of
>> U and O. Is this because my host PC is not powerful enough? I'm using
>> i7-8750H. Thank you.
>>
>> [1]
>> https://www.ettus.com/wp-content/uploads/2019/01/b200-b210_spec_sheet.pdf
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000cc478b05998f8eb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Nate,<div><br></div><div>Thanks for your response. I=
 already set the CPU governor to performance. In 2x2 @30.72e6 @sc16, it wor=
ks fine. But, can it work on sc16 too?</div><div><br></div><div>I can succe=
ed at 2x2 @23e6 @sc16 (sudo ./benchmark_rate --rx_rate 23e6 --tx_rate 23e6 =
--channels 0,1). And failed at 2x2 @24e6 @sc16 and over @24e6.</div><div><b=
r></div><div>This application note [1] says that the USRP B210 operates on =
Half-Duplex and the host sample rate is 61.44 @ sc16. However, since it wor=
ks on Half-duplex, its=C2=A0total interface bandwidth would be *shared betw=
een the transmit and receive functions* of a USRP.</div><div><br></div><div=
>So, what I understand is that since each TX and RX consume 30.72e6 Samples=
, 2x2 will consume 122.88 (30.72e6 * 4) samples. That&#39;s why it is faile=
d. Am I correct? it is confusing...</div><div><br></div><div>Thanks.</div><=
div><br></div><div>[1]=C2=A0<a href=3D"https://kb.ettus.com/About_USRP_Band=
widths_and_Sampling_Rates">https://kb.ettus.com/About_USRP_Bandwidths_and_S=
ampling_Rates</a></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 1:32 PM Nate Temple &lt;<a h=
ref=3D"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f">Hi Padorin,<br><br>Yes the B210 supports 2x2 @ 30.72e6, but is dependent=
 upon your host system and USB controllers. <br><br>You can try using sc12 =
OTW format which may help:<br><br>./benchmark_rate --rx_otw sc12 --tx_otw s=
c12 ......<br><br>Also ensure you&#39;ve set your CPU governor to performan=
ce, and enabled thread prioirty scheduling as detailed here <a href=3D"http=
s://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" target=3D"_b=
lank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>=
<br><br>Regards,<br>Nate Temple<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 12, 2019 at 7:45 PM Pa=
dorin Kurpinsky via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<=
div><br></div><div>The USRP B210 spec [1] says it supports=C2=A0 30.72 MHz =
of instantaneous bandwidth. However, If I run benchmark_rate, i.e., sudo ./=
benchmark_rate --rx_rate 30.72e6 --tx_rate 30.72e6 --channels 0,1. Then, it=
 shows a lot of U and O. Is this because my host PC is not powerful enough?=
 I&#39;m using i7-8750H. Thank you.</div><div><br></div><div>[1]=C2=A0<a hr=
ef=3D"https://www.ettus.com/wp-content/uploads/2019/01/b200-b210_spec_sheet=
.pdf" target=3D"_blank">https://www.ettus.com/wp-content/uploads/2019/01/b2=
00-b210_spec_sheet.pdf</a></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000cc478b05998f8eb2--


--===============5469893518437666154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5469893518437666154==--

