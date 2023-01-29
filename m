Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E19826800D4
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 19:37:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF97B383E46
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 13:37:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675017421; bh=238LMinOODqmpX9oLmIuqgD8sAX7pd8fmoxmfpMffX4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tg4Y2u3f5ZAF4nkY1/Jk28hvU/KfdOcfqmcIaqrGPzSbAq/195wqNDDAx+Az1pcJ9
	 3ShQjobeXUdlkARzI0s1PzSYsOmnsBdpXyYnD6joXeLurn4oxYiITVuJNwTcZt9OqN
	 8gaxUxqwAQOmy5lkXS3ShUctlmfHyI0tDBMdw4nNnhauf+het10jUsGLgTikgRr8Im
	 WsDFJIHlDnieBuY/6RnsDjM+HC/HjNIbWuaj7dD5Ijomc1U11WYIAwTzWeIWBpc/hk
	 P0bv3UUhg0nRsEl8U52DtJyLSCI5V4EZ+V4wRSiO+4OUFUNYouwrJ/PHNgiGkhnU8S
	 5xG48WEOzhECA==
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E996E383D87
	for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 13:36:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L+xoSZkQ";
	dkim-atps=neutral
Received: by mail-io1-f46.google.com with SMTP id w24so455516iow.13
        for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 10:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GsC/5EfkA8e1sNDVl4JqHrdjGNIbCK8o9pHyej6gERI=;
        b=L+xoSZkQ3QLonU6+iV/69qngTBbp7xW1Ub4IBhPTYqc/sxnLlpaWAAju9T95+4pERd
         nJ+256xz7BIkzMaec+ok/11Qi75tl4CpPF29IxVEosiG9rmOjBh2djc89Q5P1VvlIFGw
         2dB4tJhnkcHPvHpwZ0vWGtI/OaJ6u1ARxEmioJi6q1MvUYYGufXLmwnL4ZKmW/IRziKS
         T9covNcY90dFbFawSWySVDQbwpeLEnwlhYW0JMaEzAj5JLyCf02YoKrkqx/2D6wnNvQW
         S09c+bRtjokUaIt4X/miEsndrsNKZHaxO+4zsLMqLbe76bZa0O1OLD5MvA5fbUZbz7oT
         3UuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GsC/5EfkA8e1sNDVl4JqHrdjGNIbCK8o9pHyej6gERI=;
        b=CSj0tradah1GXHSbyFSObXKQ6eNj+yMaStCNpxJVW+pNilLBVHgaeBbAVsa3Y63v1p
         dNZkNzJJtt93acz/ia6onWVbOa4QSjpEKigScs4xlOgrgENF1oiNW1pJF/tQFcm4GQ69
         r6RyYeIWZQMeh/gG1WAB6M/XOm2YjF+MoRZR42skmuEDmw0atE8+qeizQIB+LzmNLdTN
         OP6sAyyI4aW8z3JEg4egr8Psjn0VYRlwrV6+oLfmpzAXrr5lRDJPYr4RPYls8U8BI/u3
         VGVES2IGitn+hq9adILjOLttxjsQRqutbAcBOG03JfXHxriXtlJzn1llA7rvo+FnKtOo
         w3Dw==
X-Gm-Message-State: AO0yUKX1p+6Jvmbp9PPJGjkSDBh2O4/6zaT4dZLrK1q/I4NuxknTkKym
	S+1dldIqJTum1RGmKqASz8XPhj5k7MJ3Gy0NJNA=
X-Google-Smtp-Source: AK7set/wDqlMoGwZsdJGs9pvYhsXOVMd/grEeoemAvy28I4tu48oOqHkQzJYebEoxFS4SHeU7Ln9LccsE+ZvFYibQM8=
X-Received: by 2002:a05:6638:3808:b0:3b0:5216:258a with SMTP id
 i8-20020a056638380800b003b05216258amr201389jav.23.1675017402259; Sun, 29 Jan
 2023 10:36:42 -0800 (PST)
MIME-Version: 1.0
References: <2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0@lists.ettus.com> <CAAxXO2EHwekMGS47nXfAcH+C=TtMYh2qhhJKZn4XULHKSBOK=w@mail.gmail.com>
In-Reply-To: <CAAxXO2EHwekMGS47nXfAcH+C=TtMYh2qhhJKZn4XULHKSBOK=w@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sun, 29 Jan 2023 20:36:30 +0200
Message-ID: <CAAxXO2GA5fM1XnkftXLNgyxvY2mcueOT=3Tsu5G45oohFqK4ug@mail.gmail.com>
To: seckinoncu80@gmail.com
Message-ID-Hash: GZ4TG4KE7IVZ7E3DWDT54IMLXO5IY4VS
X-Message-ID-Hash: GZ4TG4KE7IVZ7E3DWDT54IMLXO5IY4VS
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD C++ API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GZ4TG4KE7IVZ7E3DWDT54IMLXO5IY4VS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2288904674723175876=="

--===============2288904674723175876==
Content-Type: multipart/alternative; boundary="000000000000411d8605f36b6114"

--000000000000411d8605f36b6114
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, pressed the send accidentally...

2) The input to the fft is your time domain signal, or your usrp output.
The fft output is the frequency domain of the same signal.
There is no frequency shift. Depending on the fft software you use, all fft
output is given in a vector. You just copy it to a new vector,
or use it as it is.
3) fft is always a batch operation. Its size depends on your needs, ie in
how many parts do you need to spilt your input signal. Size should be odd,
to account for the 0 bin which contains the DC component, so fft size =3D
(parts + 1). To make a batch operation run in near real time. you need
to place it in a separate thread from your reader, and use mutex to
synchronize it.

HTH
Nikos

On Sun, Jan 29, 2023 at 8:23 PM Nikos Balkanas <nbalkanas@gmail.com> wrote:

> Hi,
>
> These are programming questions for your application, unrelated to uhd.
> Your language is also a bit strange. Let me explain:
>
> 1) You take the output signal from your usrp and if it is larger than a
> threshold value you store their index to a vector.
> I imagine that the threshold is some kind of amplitute. To compare it to
> your samples, you need to find the corresponding amplitude: log10(hypot(Q=
,
> I))
> Where Q is the real component of your sample, and I the imaginary. You ca=
n
> store that value to a new vector. Or simpler you can compare Q^2 +
> I^2,since log10 and sqrt do not add anything useful.To read from usrp use=
:
> uhd_rx_streamer_recv
>
> On Wed, Jan 25, 2023 at 9:49 AM <seckinoncu80@gmail.com> wrote:
>
>> Hello USRP Users,
>>
>> I am new to UHD C++ API. I have some questions about the application tha=
t
>> I planned to develop. I have N320 and I got the signal from one channel =
and
>> keep it in a vector as =E2=80=9Cbuff=E2=80=9D. As you may know form exam=
ples.
>>
>> 1) How to take the envelope of the signal, then assign a threshold value
>> and keep the index of the sample which is greater than threshold value i=
n a
>> vector?
>>
>> 2) After getting pulse=E2=80=99s TOA(time of arrival) and TOD(Time of De=
parture),
>> how to take the fft and keep the frequency shift in a vector?
>>
>> 3) Buff get 2000 samples in one cycle in my configuration. How to arrang=
e
>> the fft size and buff size to have a real time operations? Can processin=
g
>> delay be fixed for each cycle?
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000411d8605f36b6114
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Sor=
ry, pressed the send accidentally...</div><div class=3D"gmail_default" styl=
e=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-=
size:small">2) The input to the fft is your time domain signal, or your usr=
p output. The fft output is the frequency domain of the same signal.</div><=
div class=3D"gmail_default" style=3D"font-size:small">There is no frequency=
 shift. Depending on the fft software you use, all fft output is given in a=
 vector. You just copy it to a new vector,</div><div class=3D"gmail_default=
" style=3D"font-size:small">or use it as it is.</div><div class=3D"gmail_de=
fault" style=3D"font-size:small">3) fft is always a batch operation. Its si=
ze depends on your needs, ie in how many parts do you need to spilt your in=
put signal. Size should be odd,</div><div class=3D"gmail_default" style=3D"=
font-size:small">to account for the 0 bin which contains the DC component, =
so fft size =3D (parts=C2=A0+ 1). To make a batch operation run in near rea=
l time. you need</div><div class=3D"gmail_default" style=3D"font-size:small=
">to place it in a separate thread from your reader, and use mutex to synch=
ronize it.=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small=
"><br></div><div class=3D"gmail_default" style=3D"font-size:small">HTH</div=
><div class=3D"gmail_default" style=3D"font-size:small">Nikos=C2=A0</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sun, Jan 29, 2023 at 8:23 PM Nikos Balkanas &lt;<a href=3D"mailto:nbalkana=
s@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-size:small">Hi,</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">These are programming questions for your application, unrelated =
to uhd. Your language is also a bit strange. Let me explain:</div><div clas=
s=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail=
_default" style=3D"font-size:small">1) You take the output signal from your=
 usrp and if it is larger than a threshold value you store their index to a=
 vector.</div><div class=3D"gmail_default" style=3D"font-size:small">I imag=
ine that the threshold is some kind of amplitute. To compare it to your sam=
ples, you need to find the corresponding amplitude: log10(hypot(Q, I))</div=
><div class=3D"gmail_default" style=3D"font-size:small">Where Q is the real=
 component of your sample, and I the imaginary. You can store that value to=
 a new vector. Or simpler you can compare Q^2 + I^2,since log10 and sqrt do=
 not add anything useful.To read from usrp use:</div><div class=3D"gmail_de=
fault" style=3D"font-size:small">uhd_rx_streamer_recv<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan =
25, 2023 at 9:49 AM &lt;<a href=3D"mailto:seckinoncu80@gmail.com" target=3D=
"_blank">seckinoncu80@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p>Hello USRP Users,</p><p>I am new to UHD=
 C++ API. I have some questions about the application that I planned to dev=
elop. I have N320 and I got the signal from one channel and keep it in a ve=
ctor as =E2=80=9Cbuff=E2=80=9D.  As you may know form examples.</p><p>1) Ho=
w to take the envelope of the signal, then assign a threshold value and kee=
p the index of the sample which is greater than threshold value in a vector=
?</p><p>2) After getting pulse=E2=80=99s TOA(time of arrival) and TOD(Time =
of Departure), how to take the fft and keep the frequency shift in a vector=
?</p><p>3) Buff get 2000 samples in one cycle in my configuration. How to a=
rrange the fft size and buff size to have a real time operations? Can proce=
ssing delay be fixed for each cycle?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000411d8605f36b6114--

--===============2288904674723175876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2288904674723175876==--
