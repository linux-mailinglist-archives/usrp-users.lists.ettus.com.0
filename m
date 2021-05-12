Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FC337B531
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 06:58:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B7113847DE
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 00:58:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jjtD4+E9";
	dkim-atps=neutral
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 02751383E1F
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 00:57:29 -0400 (EDT)
Received: by mail-lj1-f178.google.com with SMTP id p12so27994958ljg.1
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 21:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QRLJytlGdrnZPrY81ZMQtpXRfL/etQFyAbHDXcGnMnY=;
        b=jjtD4+E9NG5RLjzbcpU5PuQOyn4mNdFbrgKI+J+ncAiOPmbp4dS6kW+t40Yk+CA+Xh
         XFkAv4D8t1Ou5TTSRuyoO053Cuq6uBUj2lJpbOpvY+H9Y5WZvlzTmTCGmObdV4YnKo3s
         PoHSa9PvH/7WHLDqNgHs3TgkYLplXMyS1xmkfg6nTiHnvpWKAjANxEnJ9Is/4VYXvAV5
         3kEI4LKjc9RPt9Bn3yyrh8Nesg/afdR/eKTshui+6zw0ETSKWl4pwzRVaKkpDgXve0lE
         Zf3D7EfXiT66YZ9lQRNVYjQiJ7+gmHLvGb/JNHt+43TmhRSwpeu81dvVNSDW5X6uTGZX
         p4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QRLJytlGdrnZPrY81ZMQtpXRfL/etQFyAbHDXcGnMnY=;
        b=Kz1+IiaGLaHJaR9R012Nu2bc1l/jjnG6f4Hwth/FgEXyeJx/QhAvSTvb5sNAHhxCFd
         ir5d94RtWOiS4JT8P7v+ywGC7r88IYNtpDxuunSZWPmZGTqZz2ELwznmdCuimyJniyBu
         aFMFlnKhgVLm6Qw90BEVL8Vb4Q86CmP+VqjyoeI9h/JyYRP7Vw0YYCsWkC8IM128idYs
         Uo8mQhWfHMYAt7RdhRbf+/C+lZbzHBLMMioJkiazcvTzzm4Wm06w1cEVDFfNSSJavsos
         pFVpatVknK9FSJCqeVhyNY68I0Xdu8HKzacdBM7FPtrI6Ss6d6gXpMnZUyzXVPh0tJ3+
         0FDQ==
X-Gm-Message-State: AOAM531ysjo4Ol/yS9y771uz0N2Ka0TS1QuUr2uk5+H8qrd/+wmxJCQV
	uvclqTQ3PnrV/3TOh/8BYeYtPGxlZo2OS6AIQ0I=
X-Google-Smtp-Source: ABdhPJxeM83ovYxhDOGKNOtYmnGHpt3pl5ovD35jhKPhbcaS9dN2Aji5Ly7lj6JG/Rb4jL/CjxpLuiomL3DGkJZ2E68=
X-Received: by 2002:a05:651c:1251:: with SMTP id h17mr28008413ljh.215.1620795448570;
 Tue, 11 May 2021 21:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
 <995104CA-E913-4C2A-9F4B-AFB9ECE6600E@gmail.com>
In-Reply-To: <995104CA-E913-4C2A-9F4B-AFB9ECE6600E@gmail.com>
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Tue, 11 May 2021 23:57:16 -0500
Message-ID: <CAN+Y6vDecGSbMJz7JLkgbQ9pnX9Y=wL2Z6Zw5AZGqBY02istXg@mail.gmail.com>
To: Clint Scarborough <clinton.scarborough@gmail.com>
Message-ID-Hash: 5NN5AZFY4R7PNSBRBHKUWA5ZLVTQWVW5
X-Message-ID-Hash: 5NN5AZFY4R7PNSBRBHKUWA5ZLVTQWVW5
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling rate and bandwidth - Usrp N210 & source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5NN5AZFY4R7PNSBRBHKUWA5ZLVTQWVW5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6723335383809513672=="

--===============6723335383809513672==
Content-Type: multipart/alternative; boundary="000000000000f736f605c21ad8db"

--000000000000f736f605c21ad8db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Clint and Marcus for your help.

I clarified my concepts.

Regards
Isaac T.


El mar, 11 may 2021 a las 20:26, Clint Scarborough (<
clinton.scarborough@gmail.com>) escribi=C3=B3:

> Hi Isaac!
>
> Your questions are really general signal processing questions, or at leas=
t
> GNURadio questions, not unique to a USRP. I was confused on the same
> subject when I first started using SDRs, though.
>
> Nyquist really just means that, if you have a real signal with no power
> outside a given bandwidth (let's say 20MHz), then you need 40 million
> independent samples per second to represent it. You can get that by
> real-valued sampling using a regular clock at 40Msps, or you can
> simultaneously sample in-phase and quadrature components at 20Msps yieldi=
ng
> complex valued samples. The latter approach is what you'll generally find
> with SDRs.
>
> However, if you want to accurately represent your 20MHz signal digitally,
> you need a bandpass filter in front of the analog to digital converters
> with a 20MHz pass band. Any real filter will have some rolloff at the ban=
d
> edges, which means that your signal may have power beyond the 20MHz that
> you care about, and you need a little higher sampling rate to avoid
> aliasing of that extra power.
>
> Secondly, the sampling has a limited number of bits to represent the
> analog signal, and you need a slightly higher sampling rate to guarantee =
an
> accurate representation of your signal.
>
> So, with complex sampling, you generally need to sample at roughly the
> same rate as the bandwidth you care about plus maybe 25%.
>
> -- Clint
>
> On May 11, 2021 6:15:26 PM EDT, isaac mario tupac davila <
> isacctd92@gmail.com> wrote:
>>
>> Hello community
>>
>> I'm Isaac. I'm dealing with some questions about the interpretation of
>> sampling rate and bandwidth in a USRP source block.
>>
>> What I understand is if I work with an USRP N210, my ADC works with a
>> 100MS/s. If I use a Gigabit Ethernet and a data type of 16bits, I could
>> receive in my host up to 25MS/s with a bandwidth of 20MHz.
>> https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates
>>
>> My questions are:
>>
>> 1. If I can receive up to 25MS/s on my host, why my bandwidth is 20MHz? =
I
>> think It is up to 12.5MHz according to Nyquist.
>>
>> 2. Why is the sample rate value in the usrp source block equal to the
>> bandwidth I observe? I think this bandwidth should be the half according=
 to
>> Nyquist too. https://wiki.gnuradio.org/index.php/USRP_Source
>>
>> I appreciate any help to clarify this concepts
>>
>> Regards
>> Isaac T.
>>
>>

--000000000000f736f605c21ad8db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Clint and Marcus for your help. <br></div><div=
><br></div><div>I clarified my concepts.</div><div><br></div><div>Regards</=
div><div>Isaac T.<br></div><div><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">El mar, 11 may 2021 a las 20:26, =
Clint Scarborough (&lt;<a href=3D"mailto:clinton.scarborough@gmail.com">cli=
nton.scarborough@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div>Hi Isaac!<br><br>Your questions are=
 really general signal processing questions, or at least GNURadio questions=
, not unique to a USRP.  I was confused on the same subject when I first st=
arted using SDRs, though.<br><br>Nyquist really just means that, if you hav=
e a real signal with no power outside a given bandwidth (let&#39;s say 20MH=
z), then you need 40 million independent samples per second to represent it=
.  You can get that by real-valued sampling using a regular clock at 40Msps=
, or you can simultaneously sample in-phase and quadrature components at 20=
Msps yielding complex valued samples.  The latter approach is what you&#39;=
ll generally find with SDRs.<br><br>However, if you want to accurately repr=
esent your 20MHz signal digitally, you need a bandpass filter in front of t=
he analog to digital converters with a 20MHz pass band.  Any real filter wi=
ll have some rolloff at the band edges, which means that your signal may ha=
ve power beyond the 20MHz that you care about, and you need a little higher=
 sampling rate to avoid aliasing of that extra power.<br><br>Secondly, the =
sampling has a limited number of bits to represent the analog signal, and y=
ou need a slightly higher sampling rate to guarantee an accurate representa=
tion of your signal.<br><br>So, with complex sampling, you generally need t=
o sample at roughly the same rate as the bandwidth you care about plus mayb=
e 25%.<br><br>-- Clint<br><br><div class=3D"gmail_quote">On May 11, 2021 6:=
15:26 PM EDT, isaac mario tupac davila &lt;<a href=3D"mailto:isacctd92@gmai=
l.com" target=3D"_blank">isacctd92@gmail.com</a>&gt; wrote:<blockquote clas=
s=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
<div dir=3D"ltr"><div>Hello community<br></div><div><br></div><div>I&#39;m =
Isaac. I&#39;m dealing with some questions about the interpretation of samp=
ling rate and bandwidth in a USRP source block.</div><div><br></div><div>Wh=
at I understand is if I work with an USRP N210, my ADC works with a 100MS/s=
. If I use a Gigabit Ethernet and a data type of 16bits, I could receive in=
 my host up to 25MS/s with a bandwidth of 20MHz. <a href=3D"https://kb.ettu=
s.com/About_USRP_Bandwidths_and_Sampling_Rates" target=3D"_blank">https://k=
b.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates</a></div><div><br></di=
v><div>My questions are: <br></div><div><br></div><div>1. If I can receive =
up to 25MS/s on my host, why my bandwidth is 20MHz? I think It is up to 12.=
5MHz according to Nyquist.</div><div><br></div><div>2. Why is the  sample r=
ate value in the usrp source block equal to the bandwidth I observe? I thin=
k this bandwidth should be the half according to Nyquist too. <a href=3D"ht=
tps://wiki.gnuradio.org/index.php/USRP_Source" target=3D"_blank">https://wi=
ki.gnuradio.org/index.php/USRP_Source</a></div><div><br></div><div>I apprec=
iate any help to clarify this concepts=C2=A0<br></div><div><br></div><div>R=
egards</div><div>Isaac T.<br></div><div><br></div></div>
</blockquote></div></div></blockquote></div>

--000000000000f736f605c21ad8db--

--===============6723335383809513672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6723335383809513672==--
