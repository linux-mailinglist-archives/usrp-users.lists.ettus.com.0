Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C9B37CFDE
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 19:34:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03852384AAB
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 13:34:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N0naIGBo";
	dkim-atps=neutral
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 335103844C1
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 13:34:01 -0400 (EDT)
Received: by mail-lj1-f171.google.com with SMTP id p20so6641847ljj.8
        for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 10:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KESF4qj54rinTrZwvjxZgPokbBoP9pyk0SkQcKq6utY=;
        b=N0naIGBoRDI9HuslNNyxZEsXTCOI6ZzXJjh3+Hv/m0zZsNDjH6FpAvLJ3h1dEzYbhI
         bgFn4zt+mp+2cTLyaTl4dDu9nwfD6yHPKAhL8pcIzAljtsrnZo6yKdEljqo/LOMAtPbQ
         zJBZ4Xpu0kRvqkAyj5ZN4fcmqT8IcQ+nYcY/Ox/TH3gxuFDuz0T1skPtgV0a3tgob5BK
         +dR7uNcDQfLjgjfTwvV7M/pIoKMeBCjs2KStLJxLEhgsXsVifrTYOlDv/b3KYN9ChT7L
         KsMM8J8NrCSuAgOH/cX0juaWpDP9cTQQu+o5VLMhTl1oW/+IekzMzVRlUOCrDDkuymXn
         tbYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KESF4qj54rinTrZwvjxZgPokbBoP9pyk0SkQcKq6utY=;
        b=O6D4m+WFm4/w+DZZ5iIELt2cMXQCneFcT/gqOsyzma7Irbf7dzd8PROPd3+5g9X8t3
         dyLV3Mu3tVt9jDg+cuFHmoYYH9whSG7xu6jFZTaUGmdtYK5Jkasn1Xc6LZ+9iKrOLQ+l
         4AhY1qSNUv5+/ueiARXZfRPjUDyoBkCWmfzwUYCe5FNP7kvujY7dW3EuHnqZnKfoiL11
         fkbhz3I0fqsnJf/y2uqVXFlDAfy7vXf0MyXlz3ChesYfuYvgKJoJOXH+leKvcYy7g5yI
         MvIMjbfDc7PwJEhvS/K3ArHzob7UCKBgVr8qULOD1UnPgMvey0lI+CNSlfkIvSEKE90u
         vtEw==
X-Gm-Message-State: AOAM532Pznd646XGXMp2JWjIoizuRY33grDk0cq35Hpcsm7CqcMo3G2c
	yepDTdg0Qs210+P20ZP4943j+YXfzt1ksxEirIw=
X-Google-Smtp-Source: ABdhPJypaQGnL3OFjGWiV0KnVcXqzpVTA8MZ3/A8C2KwZaHca/JV8Eu50slS04ewlQ7H35BbdpR0IIXZ6G8XftWpUG8=
X-Received: by 2002:a2e:bf19:: with SMTP id c25mr30122436ljr.201.1620840839736;
 Wed, 12 May 2021 10:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAN+Y6vAiiZ2ptm94r74DbSYV0PxesL7tpTeEJ0XksLJTgEHRNg@mail.gmail.com>
 <SL2P216MB033182A2FF0CA9CA7AA95DAD93529@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
In-Reply-To: <SL2P216MB033182A2FF0CA9CA7AA95DAD93529@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Wed, 12 May 2021 12:33:47 -0500
Message-ID: <CAN+Y6vAGAQqaoquAyZenPNmDE=jTyvQr4m7TwmCHS6boR4LNAA@mail.gmail.com>
To: Kyeong Su Shin <ksshin@postech.ac.kr>
Message-ID-Hash: 57566H4LSFSO5P44LCIFKRFYZUIGD6WL
X-Message-ID-Hash: 57566H4LSFSO5P44LCIFKRFYZUIGD6WL
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling rate and bandwidth - Usrp N210 & source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/57566H4LSFSO5P44LCIFKRFYZUIGD6WL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5996188359504704679=="

--===============5996188359504704679==
Content-Type: multipart/alternative; boundary="0000000000007d70a505c2256ac3"

--0000000000007d70a505c2256ac3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Kyeong Su Shin.

I've just checked the information. Regarding the 20MHz bandwidth check the
previous responses as I think it is also to evit aliasing.

Regards
Isaac T.

El mi=C3=A9, 12 may 2021 a las 7:07, Kyeong Su Shin (<ksshin@postech.ac.kr>=
)
escribi=C3=B3:

> Hello Issac:
>
> USRP uses I-Q sampling (there are some exceptions, though). When I-Q
> sampling is used, the Nyquist bandwidth is* equal* to the sampling rate
> of the stream, not half of it. So, the theoretical bandwidth of your 25MS=
/s
> stream is 25 MHz, not 12.5 MHz. See
> https://wiki.gnuradio.org/index.php/IQ_Complex_Tutorial  and
> https://dsp.stackexchange.com/questions/36927/bandwidth-with-complex-samp=
ling
> for further information.
>
> I don't know how Ettus Research came up with the 20 MHz figure. I guess
> they are talking about the filter characteristics. You may experience som=
e
> aliasing issues at the edges of the spectrum, due to the filter
> characteristics.
>
> Regards,
> Kyeong Su Shin
> ------------------------------
> *=EB=B3=B4=EB=82=B8 =EC=82=AC=EB=9E=8C:* isaac mario tupac davila <isacct=
d92@gmail.com>
> *=EB=B3=B4=EB=82=B8 =EB=82=A0=EC=A7=9C:* 2021=EB=85=84 5=EC=9B=94 12=EC=
=9D=BC =EC=88=98=EC=9A=94=EC=9D=BC =EC=98=A4=EC=A0=84 7:15
> *=EB=B0=9B=EB=8A=94 =EC=82=AC=EB=9E=8C:* usrp-users@lists.ettus.com <usrp=
-users@lists.ettus.com>
> *=EC=A0=9C=EB=AA=A9:* [USRP-users] Sampling rate and bandwidth - Usrp N21=
0 & source block
>
> Hello community
>
> I'm Isaac. I'm dealing with some questions about the interpretation of
> sampling rate and bandwidth in a USRP source block.
>
> What I understand is if I work with an USRP N210, my ADC works with a
> 100MS/s. If I use a Gigabit Ethernet and a data type of 16bits, I could
> receive in my host up to 25MS/s with a bandwidth of 20MHz.
> https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates
>
> My questions are:
>
> 1. If I can receive up to 25MS/s on my host, why my bandwidth is 20MHz? I
> think It is up to 12.5MHz according to Nyquist.
>
> 2. Why is the sample rate value in the usrp source block equal to the
> bandwidth I observe? I think this bandwidth should be the half according =
to
> Nyquist too. https://wiki.gnuradio.org/index.php/USRP_Source
>
> I appreciate any help to clarify this concepts
>
> Regards
> Isaac T.
>
>

--0000000000007d70a505c2256ac3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Kyeong Su Shin.</div><div><br></div><div>I&#39=
;ve just checked the information. Regarding the 20MHz bandwidth check the p=
revious responses as I think it is also to evit aliasing.</div><div><br></d=
iv><div>Regards</div><div>Isaac T.<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 12 may 2021 a las =
7:07, Kyeong Su Shin (&lt;<a href=3D"mailto:ksshin@postech.ac.kr">ksshin@po=
stech.ac.kr</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello Issac:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
USRP uses I-Q sampling (there are some exceptions, though). When I-Q sampli=
ng is used, the Nyquist bandwidth is<b> equal</b> to the sampling rate of t=
he stream, not half of it. So, the theoretical bandwidth of your 25MS/s str=
eam is 25 MHz, not 12.5 MHz. See=C2=A0<a href=3D"https://wiki.gnuradio.org/=
index.php/IQ_Complex_Tutorial" id=3D"gmail-m_4174445455378022050LPlnk" targ=
et=3D"_blank">https://wiki.gnuradio.org/index.php/IQ_Complex_Tutorial</a>=
=C2=A0
 and <a href=3D"https://dsp.stackexchange.com/questions/36927/bandwidth-wit=
h-complex-sampling" id=3D"gmail-m_4174445455378022050LPlnk" target=3D"_blan=
k">
https://dsp.stackexchange.com/questions/36927/bandwidth-with-complex-sampli=
ng</a> for further information.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I don&#39;t know how Ettus Research came up with the 20 MHz figure. I guess=
 they are talking about the filter characteristics. You may experience some=
 aliasing issues at the edges of the spectrum, due to the filter characteri=
stics.
<br>
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
<div id=3D"gmail-m_4174445455378022050appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4174445455378022050divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>=EB=
=B3=B4=EB=82=B8 =EC=82=AC=EB=9E=8C:</b> isaac mario tupac davila &lt;<a hre=
f=3D"mailto:isacctd92@gmail.com" target=3D"_blank">isacctd92@gmail.com</a>&=
gt;<br>
<b>=EB=B3=B4=EB=82=B8 =EB=82=A0=EC=A7=9C:</b> 2021=EB=85=84 5=EC=9B=94 12=
=EC=9D=BC =EC=88=98=EC=9A=94=EC=9D=BC =EC=98=A4=EC=A0=84 7:15<br>
<b>=EB=B0=9B=EB=8A=94 =EC=82=AC=EB=9E=8C:</b> <a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a> &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt;<br>
<b>=EC=A0=9C=EB=AA=A9:</b> [USRP-users] Sampling rate and bandwidth - Usrp =
N210 &amp; source block</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hello community<br>
</div>
<div><br>
</div>
<div>I&#39;m Isaac. I&#39;m dealing with some questions about the interpret=
ation of sampling rate and bandwidth in a USRP source block.</div>
<div><br>
</div>
<div>What I understand is if I work with an USRP N210, my ADC works with a =
100MS/s. If I use a Gigabit Ethernet and a data type of 16bits, I could rec=
eive in my host up to 25MS/s with a bandwidth of 20MHz.
<a href=3D"https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates" t=
arget=3D"_blank">https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Ra=
tes</a></div>
<div><br>
</div>
<div>My questions are: <br>
</div>
<div><br>
</div>
<div>1. If I can receive up to 25MS/s on my host, why my bandwidth is 20MHz=
? I think It is up to 12.5MHz according to Nyquist.</div>
<div><br>
</div>
<div>2. Why is the sample rate value in the usrp source block equal to the =
bandwidth I observe? I think this bandwidth should be the half according to=
 Nyquist too.
<a href=3D"https://wiki.gnuradio.org/index.php/USRP_Source" target=3D"_blan=
k">https://wiki.gnuradio.org/index.php/USRP_Source</a></div>
<div><br>
</div>
<div>I appreciate any help to clarify this concepts=C2=A0<br>
</div>
<div><br>
</div>
<div>Regards</div>
<div>Isaac T.<br>
</div>
<div><br>
</div>
</div>
</div>
</div>

</blockquote></div>

--0000000000007d70a505c2256ac3--

--===============5996188359504704679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5996188359504704679==--
