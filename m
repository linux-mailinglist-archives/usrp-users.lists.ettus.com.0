Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6270832D89C
	for <lists+usrp-users@lfdr.de>; Thu,  4 Mar 2021 18:28:07 +0100 (CET)
Received: from [::1] (port=37794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHrlZ-0005Xe-Pa; Thu, 04 Mar 2021 12:28:01 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:46795)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1lHrlW-0005Uu-Qb
 for usrp-users@lists.ettus.com; Thu, 04 Mar 2021 12:27:58 -0500
Received: by mail-oi1-f176.google.com with SMTP id f3so30900326oiw.13
 for <usrp-users@lists.ettus.com>; Thu, 04 Mar 2021 09:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kNIxQhqDEJMLY6C+27qDyyCJtp3rGzPuEh0ZkS5eaaY=;
 b=uzctV7ViYwLFZuoQkICiJtkefmWR87JHO/N4mq3fIBpFpl9+TMPcwcwrtXei2Sb4sD
 omrgUJXICQkH/Pk1qwxY0HWg7kV2Utcj3V+zWIgZaVH6GKwr8LknE4UkL+Y0wb/btHIs
 oY6NV7IxFe7WsRoutSj0dEq82ELLRiUTuLKphl1jm1lWYoRjTOc1cQ3hVH5I3gtLDq1Z
 2PFJ1YVBnLsjt0WyAcyqaFT8lJX+rE0N/YGKHU5jFvgFDlPmSSYGwVGo97KIhQGQWkR/
 Kz9B++gCrXEcyjJJEUf/5+bLm5Nvg7u3BXowksfd+isohiuekDgnCeeZO8de07IG0BSY
 bV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kNIxQhqDEJMLY6C+27qDyyCJtp3rGzPuEh0ZkS5eaaY=;
 b=CiDw5BbeDgHvY5NLbZ+hd3Sb6ydMWgF3wDHfWxAP/dje3u0tT2XxfisdeKttEWfpbr
 x7Y48urMxdlSdOdnp512Fosj8kVixsroa4Nd4oVvA2/5urJRnxtHE9mXFvM22XI3alKk
 eqHyKX4gy5obQqNiLEaZ0FgE0E8k8oboUeNPzuHUFOWzdGi4LkyW7+1XpqvHn43LKz80
 O9qdwCcbmKBSs9coOwn8MUA51H4QFjt+nvPyERwpIzktjTISl5TxCCwb+mV8izpyMIec
 DxxYgj7Cat7UJqVCaqoEWkoCOvUqPC62w3/vaMGwOtFuVuVUvJ1VUDRIHLEbhnmIyuFb
 ix8Q==
X-Gm-Message-State: AOAM533SYksh8I/NzySnafY93YRUlj87iYyfo+ngttQelo9OpPN0Ga9L
 scnfEkz71hh3Ss3cqsb799UEHZAjD6SLxNpisrC5meHI
X-Google-Smtp-Source: ABdhPJxX3GesrFeMF44bXrVIfnSUqOeiar1I2f6ILD46mlSolad/wTdvIjDV0aduCQXnH5MuLcZ9xkXyKv6FIXGPp+c=
X-Received: by 2002:a05:6808:304:: with SMTP id
 i4mr3714258oie.145.1614878837912; 
 Thu, 04 Mar 2021 09:27:17 -0800 (PST)
MIME-Version: 1.0
References: <eb81935188c04199a55efe231b8e3b74@external.thalesgroup.com>
In-Reply-To: <eb81935188c04199a55efe231b8e3b74@external.thalesgroup.com>
Date: Thu, 4 Mar 2021 11:27:07 -0600
Message-ID: <CAFche=i4ZHUVYyahDUeu0oGWsNNAB0yJXPjNPru_esNXgStEJA@mail.gmail.com>
To: COURANT Frederique - Contractor
 <frederique.courant@external.thalesgroup.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] readback register of personal RFNOC
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============8129688613808174318=="
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

--===============8129688613808174318==
Content-Type: multipart/alternative; boundary="0000000000007d3f7905bcb9476d"

--0000000000007d3f7905bcb9476d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What version of UHD are you trying to use?

I'm not a python expert, but I think in UHD 3.15 and earlier, there isn't
support for the RFNoC API in Python, just MultiUSRP. Hopefully someone will
correct me if I'm wrong. The RFNoC API is exposed for Python in UHD 4.0.
Either version should work with C++.

In UHD 4.0 and Python, if you get a reference to your block's block
controller, then you can use block.peek32(addr) and block.poke32(addr, val)
to read/write registers.

In UHD 3.15 and C++, if you get a pointer to your block's block controller,
then you can use block->sr_read64(addr, port) and block->sr_write(addr,
val, port). I don't know how to do this in Python in UHD 3.15.

Thanks,

Wade

On Thu, Mar 4, 2021 at 7:24 AM COURANT Frederique - Contractor via
USRP-users <usrp-users@lists.ettus.com> wrote:

> Hello users,
>
>
>
> I have created a personal RFNOC blocks. I have reserved some address 4 in
> read/write and one in read only.
>
> I have no problem for write but I don=E2=80=99t find how can I read my re=
gister in
> read only at the address 133.
>
>
>
> Someone could help me or give me an example please ?
>
>
>
> For information, I work on USRP X310 and I develop with python.
>
>
>
> Thanks for your help.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007d3f7905bcb9476d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What version of UHD are you trying to use?</div><div>=
<br></div><div>I&#39;m not a python expert, but I think in UHD 3.15 and ear=
lier, there isn&#39;t support for the RFNoC API in Python, just MultiUSRP. =
Hopefully someone will correct me if I&#39;m wrong. The RFNoC API is expose=
d for Python in UHD 4.0. Either version should work with C++.</div><div><br=
></div><div>In UHD 4.0 and Python, if you get a reference to your block&#39=
;s block controller, then you can use block.peek32(addr) and block.poke32(a=
ddr, val) to read/write registers.<br></div><div><br></div><div>In UHD 3.15=
 and C++, if you get a pointer to your block&#39;s block controller, then y=
ou can use block-&gt;sr_read64(addr, port) and block-&gt;sr_write(addr, val=
, port). I don&#39;t know how to do this in Python in UHD 3.15.<br></div><d=
iv><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Ma=
r 4, 2021 at 7:24 AM COURANT Frederique - Contractor via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"FR">
<div class=3D"gmail-m_328826524030472224WordSection1">
<p class=3D"MsoNormal">Hello users,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have created a personal RFNOC=
 blocks. I have reserved some address 4 in read/write and one in read only.=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have no problem for write but=
 I don=E2=80=99t find how can I read my register in read only at the addres=
s 133.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Someone could help me or give m=
e an example please ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For information, I work on USRP=
 X310 and I develop with python.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.<u></u><u>=
</u></span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007d3f7905bcb9476d--


--===============8129688613808174318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8129688613808174318==--

