Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC37140F9
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 18:07:05 +0200 (CEST)
Received: from [::1] (port=48466 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNJfM-0004hT-3B; Sun, 05 May 2019 12:07:04 -0400
Received: from mail-it1-f173.google.com ([209.85.166.173]:51929)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hNJeo-0004Yl-7X
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 12:07:00 -0400
Received: by mail-it1-f173.google.com with SMTP id s3so4473550itk.1
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 09:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=KPO9kzi/9JMo1lDSswfED9aw4HIJRVhC7DUh0pBZUxU=;
 b=KYP53Fu1M6QoYuxGndlbgYDUWSFeybF8uFr+yYD/C2ZldUjXIGOLnmz28BNWkNBmy8
 6zRxqoLq8fCmBtQT2cGLsBWqTW7hJ10XTPBP83+FxEgyP4hE0d44K1jSz/YN+xcgnrAN
 yAZ0jRyU7ufr4IwT5Azc/rp4bmaddKyq4EKglncWz7SseGjNx3GF3NlMEkOUdk2Vt5jm
 /Fwk+jY7nQuyOJLW85K1DkKesiZ8MQ3GdvmGFqBWnuyyropjySWaIShcMX6Ihwd083DD
 b8guiseRp0XJMLhEHmpN+ukIgC6uEsmag3sMFWnzBsJqW8Hj9Elo0vog2A7ljjtMsb3Y
 CHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=KPO9kzi/9JMo1lDSswfED9aw4HIJRVhC7DUh0pBZUxU=;
 b=WWA1OThH618Eo4pxF4ZwvKrHyJj1KYh4d4LFySUXZ7tWGV3rcWR6cIP08NMcqZm9lX
 FJVxj5kR3fjlCBd7MORgadntunpanY0cwQb5w/j7AOP2QQNSS4DGM/tf8OgtaOz+fd8H
 jY5nviVTER5B+omskqthHo16J8h74mf4djptI12nkrfnvkO4FRFf7BRWmx0ayjElW2qH
 Af5s+Xn+2PSPX/zDudTUBGQDOiPssN9+zb9G/ltgdmT6Xmj8al+GgTWZ96b69y8vvgEN
 NLPzautMDF6lDbIG3oNfxFeFhqUjLSgyfHAB/uvhKBgzJovgF5+DYaDePdqaI0U8UAke
 POuA==
X-Gm-Message-State: APjAAAXSECnYRDFJqOLlOTp2p/XvdqAGFEZ5RRyiaJ/QbEJT7Wr3dBHG
 /ZCp+43/5OdhkGymlV6kKmZzKozx
X-Google-Smtp-Source: APXvYqzZcSSOvdfwARgCkCuKsfm7kEMq+6QpsAYF4LFsk5eNiUdEbz4bKraiuDox7PwJOLVg5Nf6BA==
X-Received: by 2002:a02:8243:: with SMTP id q3mr14923910jag.37.1557072349447; 
 Sun, 05 May 2019 09:05:49 -0700 (PDT)
Received: from [192.168.0.127] (d72-38-46-97.commercial1.cgocable.net.
 [72.38.46.97])
 by smtp.gmail.com with ESMTPSA id 8sm3743482itd.24.2019.05.05.09.05.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 09:05:48 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16E227)
In-Reply-To: <CADE5U-eKkLJhyWBhkoqq96iTMcFo2Z_NE7eUi4y8FyWocPaP4A@mail.gmail.com>
Date: Sun, 5 May 2019 12:05:48 -0400
Message-Id: <BA29EA88-EE05-41A1-BDC1-4206E31AA443@gmail.com>
References: <CADE5U-e_T08OHwSMWA1bf=ZowbfBnG8OAtY+Sk+A8ZgeEsX_Lg@mail.gmail.com>
 <CADE5U-f05s5shd-JBRLrYKZYcjitk4rJ2VUhH-LgJ4GWgFbc7Q@mail.gmail.com>
 <CADE5U-dEzm-uRTfx1oK4KPYJOcP-uZzfSjs=V9hdLWwnU9Mb8w@mail.gmail.com>
 <CADE5U-eMh9P6oeWaYddeaVpBgWw+hGwrsKZsW1dr+TF7q9AYzg@mail.gmail.com>
 <CADE5U-f5C+KmqQ5AmDDk0PW163e4Zoe26G2mDLv0HZUEkiTUuw@mail.gmail.com>
 <CADE5U-d6qmUvvKz7e5NUdscuFntTXY5CTQnOp=Su5VZ3wnmatA@mail.gmail.com>
 <CADE5U-cHS-Q-2j3U9jfjNaanFG2YDvBWPyGQxTW81HESSbWyxg@mail.gmail.com>
 <5CCF00B6.7010407@gmail.com>
 <CADE5U-eKkLJhyWBhkoqq96iTMcFo2Z_NE7eUi4y8FyWocPaP4A@mail.gmail.com>
To: franz kurniawan <digitalturtle2010@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B210 mini I/Q imbalance?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============3418137240312326989=="
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


--===============3418137240312326989==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-48CDA8E3-CA9C-43CB-89E0-FEC4F433A615
Content-Transfer-Encoding: 7bit


--Apple-Mail-48CDA8E3-CA9C-43CB-89E0-FEC4F433A615
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

What output level for the generator? What gain setting on the b205?


Sent from my iPhone

> On May 5, 2019, at 11:58 AM, franz kurniawan <digitalturtle2010@gmail.com>=
 wrote:
>=20
> So, i try to make AM receiver..
> And the resulted demodulated audio was distorted from its original signal.=
.
> So, at this experiment i used signal generator to make AM with sine wave m=
odulated signal..
> I expect to get pure sine wave signal after AM demod process..
> However, the sine wave is distorted as attached picture
>=20
> I compared with another brand SDR and can get my expected signal..
> So i guess there is some problem with the b210mini
>=20
> Thank you
>=20
>=20
>=20
> On May 5, 2019 10:28 PM, "Marcus D. Leech via USRP-users" <usrp-users@list=
s.ettus.com> wrote:
>> On 05/05/2019 10:53 AM, franz kurniawan via USRP-users wrote:
>> Dear USRP users,
>>=20
>> I used b210mini and encounter I/Q imbalance as below picture..
>> As a result, the analog signal demodulation was distorted and result a cr=
appy sound..
>> I
>> Is there any workaround regarding this issue?
>>=20
>> Thank you
>>=20
>>=20
> Not sure what you mean.  The I/Q seem to be about 90deg out of phase wrt o=
ne another, which is exactly what you'd expect.
>=20
> Could you describe what it is you're trying to do?  Something with an audi=
o demodulator?
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>=20
> <IMG-20190505-WA0001.jpg>

--Apple-Mail-48CDA8E3-CA9C-43CB-89E0-FEC4F433A615
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What output level for the generator? What g=
ain setting on the b205?<div><br><br><div id=3D"AppleMailSignature" dir=3D"l=
tr">Sent from my iPhone</div><div dir=3D"ltr"><br>On May 5, 2019, at 11:58 A=
M, franz kurniawan &lt;<a href=3D"mailto:digitalturtle2010@gmail.com">digita=
lturtle2010@gmail.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite">=
<div dir=3D"ltr"><div dir=3D"auto"><div>So, i try to make AM receiver..</div=
><div dir=3D"auto">And the resulted demodulated audio was distorted from its=
 original signal..</div><div dir=3D"auto">So, at this experiment i used sign=
al generator to make AM with sine wave modulated signal..</div><div dir=3D"a=
uto">I expect to get pure sine wave signal after AM demod process..</div><di=
v dir=3D"auto">However, the sine wave is distorted as attached picture</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">I compared with another brand S=
DR and can get my expected signal..</div><div dir=3D"auto">So i guess there i=
s some problem with the b210mini</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thank you</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><div=
 class=3D"gmail_extra" dir=3D"auto"><br><div class=3D"gmail_quote">On May 5,=
 2019 10:28 PM, "Marcus D. Leech via USRP-users" &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br type=3D"=
attribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"elided-text">On 05/05/201=
9 10:53 AM, franz kurniawan via USRP-users wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
Dear USRP users,<br>
<br>
I used b210mini and encounter I/Q imbalance as below picture..<br>
As a result, the analog signal demodulation was distorted and result a crapp=
y sound..<br>
I<br>
Is there any workaround regarding this issue?<br>
<br>
Thank you<br>
<br>
<br>
</blockquote></div>
Not sure what you mean.&nbsp; The I/Q seem to be about 90deg out of phase wr=
t one another, which is exactly what you'd expect.<br>
<br>
Could you describe what it is you're trying to do?&nbsp; Something with an a=
udio demodulator?<br>
<br>
<br>
<br>
______________________________<wbr>_________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman<wbr>/=
listinfo/usrp-users_lists.<wbr>ettus.com</a><br>
</blockquote></div><br></div></div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr">&lt;IMG-201905=
05-WA0001.jpg&gt;</div></blockquote></div></body></html>=

--Apple-Mail-48CDA8E3-CA9C-43CB-89E0-FEC4F433A615--


--===============3418137240312326989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3418137240312326989==--

