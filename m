Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F0E1E5898
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 09:28:02 +0200 (CEST)
Received: from [::1] (port=41960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jeCxL-0001mJ-3n; Thu, 28 May 2020 03:27:59 -0400
Received: from mail-ej1-f48.google.com ([209.85.218.48]:42197)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aitamakinde@abuad.edu.ng>)
 id 1jeCxG-0001j4-PS
 for usrp-users@lists.ettus.com; Thu, 28 May 2020 03:27:54 -0400
Received: by mail-ej1-f48.google.com with SMTP id k11so5719896ejr.9
 for <usrp-users@lists.ettus.com>; Thu, 28 May 2020 00:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=abuad-edu-ng.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TWlJtju3r6cBTYmtFmWSj/QF9/V6Rk5bkar2ZVVTcQk=;
 b=2JYUrims+0e3N4oSoNM/t9KEDR3J+z744PwJSgEVl3QBbSEmnyaajm/DM+6pS9n7/f
 fhJSwbnftQBW8jFlHF7jjg7ktTFHEsigb9jinZhkO+cGaOcQblty9A0H8z4dvRSEn+zp
 jv2Xd46FyUW4U9NSolxoYC7Qgfh1Z5ZK+0WDO8sM7VKmEwCKikOVUSX/eVXW5Qoi7HB4
 3JEwDvmLlmL+ps75q29yJFLVfcdPKRVzIfLQwS+YY/esrY/jB23ZBi6Y17U2biqq00Js
 pYPz36xbIWVXXOstEx5li0f5RQDExpgcIQXX/Lwq3XpN1yW3sAG490FaFfYCaAmrMI7q
 JpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TWlJtju3r6cBTYmtFmWSj/QF9/V6Rk5bkar2ZVVTcQk=;
 b=nS+8WttW5qU9m0sX+cU6q6bYS1rddI1cu/OkSUQcscsR99UTrscnYkNOBIXGgGT6Qd
 18Bx7HjL93q/Lf2ElfPGgXRoxVEd7z7ixbEwJ621+9vzqe8mN9/X++uaccGygFS66wgU
 mqhLurwnHK+64/v60OXMHPGdWmUnVwIqKy66NeiOBSCjo3qMA9S43duE65+PvnF2Kx0Y
 eTY3ZdDu0zkS8nnuhkZxcqJstoa2bOLYAg1OyJ6iyy9CrdYkdim6i9LG+owtfGiRzCbn
 zm+p4jvDMzC5CATcGr5qjLCo+KJU2q4E0TLIkCvbfuYfq4h4Ixq52cwnGV+q/O7zSBdE
 NlKg==
X-Gm-Message-State: AOAM531B5Nkjl9TrNfb2T3aLJdx6Q6q3qW8lFzkijvDU4iQlvSPn/YwJ
 QyV07Rr5FNKSz0TI+ZN/OUlhpM1kWzE6vm6I6xhyIQ==
X-Google-Smtp-Source: ABdhPJyPfTpifux9FQH3M3CZunpNtkRSauXlKNNtpx+ZShuyo68g+Yo/QwlGc2LBwG+dcRWF+pzRbzJjN9eK3LlnJNw=
X-Received: by 2002:a17:906:934e:: with SMTP id
 p14mr1764126ejw.498.1590650833714; 
 Thu, 28 May 2020 00:27:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAD-eGGr6EaYEUKFLHW5zgg8yd5ctdDJ6Lf44LeP1sZ2X6W4Uaw@mail.gmail.com>
 <SL2P216MB033143F8DFB378EE40860B99938E0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
In-Reply-To: <SL2P216MB033143F8DFB378EE40860B99938E0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
Date: Thu, 28 May 2020 08:25:38 +0100
Message-ID: <CAD-eGGp8GHohB34u9+-p6ffoB4jCRgMYGEUEVUUEyX0VJi1bcg@mail.gmail.com>
To: Kyeong Su Shin <ksshin@postech.ac.kr>
Subject: Re: [USRP-users] Modulation technique for sliding correlator
 channel sounder
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
From: AKINYELE ITAMAKINDE via USRP-users <usrp-users@lists.ettus.com>
Reply-To: AKINYELE ITAMAKINDE <aitamakinde@abuad.edu.ng>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4884396069935866186=="
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

--===============4884396069935866186==
Content-Type: multipart/alternative; boundary="000000000000e7d0f405a6b041d7"

--000000000000e7d0f405a6b041d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Kyeong, Thanks a lot. Pls, can you inform me those things I need  to be
careful with when designing the sequence transmitter? I designed one, but I
am not sure of it, though I received signals from the receiver.
Thanks.
Akinyele

On Thu, May 28, 2020, 1:56 AM Kyeong Su Shin <ksshin@postech.ac.kr> wrote:

> Hello Akinyele:
>
> You do not need to use any specific modulation techniques to implement a
> channel sounder. This is because the receiver already knows the
> transmitted I-Q sequence, and correlation is taken directly on the incomi=
ng
> I-Q sequences to measure the channel.
>
> Of course, you should still carefully design the transmitted sequences, a=
s
> some sequences have poor correlation properties. Maybe you can use
> something like BPSK-modulated PN sequences.
>
> Regards,
> Kyeong Su Shin
> ------------------------------
> *=EB=B3=B4=EB=82=B8 =EC=82=AC=EB=9E=8C:* AKINYELE ITAMAKINDE via USRP-use=
rs <usrp-users@lists.ettus.com>
> =EB=8C=80=EC=8B=A0 USRP-users <usrp-users-bounces@lists.ettus.com>
> *=EB=B3=B4=EB=82=B8 =EB=82=A0=EC=A7=9C:* 2020=EB=85=84 5=EC=9B=94 28=EC=
=9D=BC =EB=AA=A9=EC=9A=94=EC=9D=BC =EC=98=A4=EC=A0=84 8:26
> *=EB=B0=9B=EB=8A=94 =EC=82=AC=EB=9E=8C:* usrp-users@lists.ettus.com <usrp=
-users@lists.ettus.com>
> *=EC=A0=9C=EB=AA=A9:* [USRP-users] Modulation technique for sliding corre=
lator channel
> sounder
>
> I am working on propagation channel measurement using a sliding correlato=
r
> channel sounder flowgraph for Tx and Rx. The sliding correlator channel
> sounder flowgraphs I've gotten so far from internet search have no
> modulation technique. Does that show it does not require modulation
> technique? If yes, why?
> Thanks.
> Akinyele
>

--000000000000e7d0f405a6b041d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Kyeong, Thanks a lot. Pls, can you inform me those things=
 I need=C2=A0 to be careful with when designing the sequence transmitter? I=
 designed one, but I am not sure of it, though I received signals from the =
receiver.<div dir=3D"auto">Thanks.</div><div dir=3D"auto">Akinyele</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, May 28, 2020, 1:56 AM Kyeong Su Shin &lt;<a href=3D"mailto:ksshin@post=
ech.ac.kr" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">ksshi=
n@postech.ac.kr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello Akinyele:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You do not need to use any specific modulation techniques to implement a ch=
annel sounder. This is b<span style=3D"font-family:Calibri,Arial,Helvetica,=
sans-serif;background-color:rgb(255,255,255);display:inline!important">ecau=
se the receiver already
 knows the transmitted I-Q sequence, and correlation is taken directly on t=
he incoming I-Q sequences to measure the channel.</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Of course, you should still carefully design the transmitted sequences, as =
some sequences have poor correlation properties. Maybe you can use somethin=
g like BPSK-modulated PN sequences.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Kyeong Su Shin</div>
<div id=3D"m_5253585219363319147m_-5011945117499681569m_1416911203883159450=
m_-1886042637514220386appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_5253585219363319147m_-5011945117499681569m_1416911203883159450=
m_-1886042637514220386divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, san=
s-serif" style=3D"font-size:11pt" color=3D"#000000"><b>=EB=B3=B4=EB=82=B8 =
=EC=82=AC=EB=9E=8C:</b> AKINYELE ITAMAKINDE via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer n=
oreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =EB=8C=80=
=EC=8B=A0 USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">u=
srp-users-bounces@lists.ettus.com</a>&gt;<br>
<b>=EB=B3=B4=EB=82=B8 =EB=82=A0=EC=A7=9C:</b> 2020=EB=85=84 5=EC=9B=94 28=
=EC=9D=BC =EB=AA=A9=EC=9A=94=EC=9D=BC =EC=98=A4=EC=A0=84 8:26<br>
<b>=EB=B0=9B=EB=8A=94 =EC=82=AC=EB=9E=8C:</b> <a href=3D"mailto:usrp-users@=
lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=
=3D"_blank">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>=EC=A0=9C=EB=AA=A9:</b> [USRP-users] Modulation technique for sliding co=
rrelator channel sounder</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>I am working on propagation channel measurement using a sliding correl=
ator channel sounder flowgraph for Tx and Rx. The sliding correlator channe=
l sounder flowgraphs I&#39;ve gotten so far from internet search have no mo=
dulation technique. Does that show it
 does not require modulation technique? If yes, why?<br>
</div>
<div>Thanks.</div>
<font color=3D"#888888">
<div>Akinyele</div>
</font></div>
</div>
</div>

</blockquote></div>

--000000000000e7d0f405a6b041d7--


--===============4884396069935866186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4884396069935866186==--

