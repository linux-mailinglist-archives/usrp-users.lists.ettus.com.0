Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E531C4982
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2020 00:17:18 +0200 (CEST)
Received: from [::1] (port=41628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVjOj-0002pX-8z; Mon, 04 May 2020 18:17:13 -0400
Received: from mail-il1-f176.google.com ([209.85.166.176]:40990)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jVjOe-0002hn-WE
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 18:17:09 -0400
Received: by mail-il1-f176.google.com with SMTP id f82so399276ilh.8
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 15:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Qxdx5vwpwLXOvkg+r6UEwbjTrQKqtIh0tXgsuZtn/c=;
 b=GwGR4F/qBinpDRRtKGO3QgIf0jfjpGxiUL4KxPHceucFw2XXIJ+thObeRViKtTdb4+
 Z3eY6UgiqCpAjzJSYAcOEVCFYjaJqYrN9gKzcu84CLadZClbZ7ofYSsiV+SMmofYFB3+
 AYZwBwuiWhFJTHCuOPtkgsDn4qguUv076NRwMAmAsCpF0zttSckPIkCPzCVfLfeGL8Nz
 tPTHWbiGir8fg7cTUagMoOMfy9BFc7yXafw35IQwXRd1bt/1b03akf04/2XYHJ5E17Ny
 HaCUND4JCIfmo14SZQDk0PlUMq3fB9wSWIaKLypdsx/kfS77xqmCESqdxrd6U5Uu+jlh
 1jlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Qxdx5vwpwLXOvkg+r6UEwbjTrQKqtIh0tXgsuZtn/c=;
 b=Jmr/nqbQ0ikiJjaAJZ4S8s6OYtVCHURQZQZ3R4j0EoZ/LzpoBIj+Sy2cTWGvvllaTP
 5OSAhtwpahJij7HpeCmbbRz1j8GAePrT1uEDytKcUyKpDdiiCZ8OIm+GjOhdnhx0QqVy
 6sZK/y5/ZTeh/pHoRL4jOH0MENkd7bQJI54uonubpSgLkdswG2wIJ8WkrYMnlCFVDc0a
 IWSd8vUBaMgN3KvQloL1HilUxR1yC07oKNZFbLAZFkL3Rf0SPXXz+vAwzopJVEoRRjUb
 lTgYNkLckO2w8lrUbSzkLkD3oMxrHuCmjP1OxSLfUsU5lBBTpaKJ/QPKI+MbrSrAHVF2
 nMFw==
X-Gm-Message-State: AGi0PuYN7YVHUuZ3SHGWaL952JpZrSgbtYzUDgEBhjsXpXYkVpQU8XvF
 wqPja8cSXKitiDqKA8z5x7/azpnvghTS90LgapY=
X-Google-Smtp-Source: APiQypIxAdgwnZlouEfKGr/lJEDRySYtXEgMkOnDr1zRLVSxf6RgLDeTJbXIZYrwWgKI91nOGx39VAP3SDEZ/5kuv8w=
X-Received: by 2002:a92:9c0a:: with SMTP id h10mr579798ili.12.1588630588267;
 Mon, 04 May 2020 15:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxtCj6iQymGZ9zNbGWxBjybOC=6GN7=OzpA2HvkiiYTbzg@mail.gmail.com>
 <CAB__hTQt5Yaw3xYKAiw+eRRH62g_s=tDVMgQtwNcng_jW7EnSw@mail.gmail.com>
In-Reply-To: <CAB__hTQt5Yaw3xYKAiw+eRRH62g_s=tDVMgQtwNcng_jW7EnSw@mail.gmail.com>
Date: Tue, 5 May 2020 01:16:16 +0300
Message-ID: <CAPRRyxs1omXVknwnyqs0wQzHZ=zi+yd98fqPdr2XLoM+MQXD3g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] How to set channel B reception with rfnoc USRP
 E310?
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============6965905215255380204=="
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

--===============6965905215255380204==
Content-Type: multipart/alternative; boundary="000000000000e4a18205a4d9e158"

--000000000000e4a18205a4d9e158
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Unfortunately, this method does not work. Maybe there are some other ideas?


=D0=BF=D0=BD, 4 =D1=82=D1=80=D0=B0=D0=B2. 2020, 23:38 =D0=BA=D0=BE=D1=80=D0=
=B8=D1=81=D1=82=D1=83=D0=B2=D0=B0=D1=87 Rob Kossler <rkossler@nd.edu> =D0=
=BF=D0=B8=D1=88=D0=B5:

> Does the 2nd argument to set_rx_antenna() indicate which radio port?  If
> so, try setting it to 1.
> Rob
>
> On Mon, May 4, 2020 at 2:02 PM Ivan Zahartchuk via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello, I'm trying to switch between all four USRP E310 inputs. For this,
>> I use the command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna ("TX /
>> RX", 0) but I can only switch in channel A. RFNoC Radio does not have th=
e
>> set_rx_subdev_spec command. Tell me how can I switch across all 4 channe=
ls?
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000e4a18205a4d9e158
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><pre dir=3D"ltr" style=3D"max-height:999999px;font-size:2=
4px;line-height:28px;background-color:rgb(248,249,250);border:none;padding:=
10px 0.14em 10px 0px;margin-top:0px;margin-bottom:0px;font-family:inherit;w=
idth:312px;white-space:pre-wrap;color:rgb(60,64,67)"><span style=3D"max-hei=
ght:999999px">Unfortunately, this method does not work. Maybe there are som=
e other ideas?</span></pre></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 4 =D1=82=D1=80=D0=B0=D0=B2. 2020, =
23:38 =D0=BA=D0=BE=D1=80=D0=B8=D1=81=D1=82=D1=83=D0=B2=D0=B0=D1=87 Rob Koss=
ler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; =D0=BF=
=D0=B8=D1=88=D0=B5:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
">Does the 2nd argument to set_rx_antenna() indicate which radio port?=C2=
=A0 If so, try setting it to 1.<div>Rob</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 4, 2020 at 2:02 PM=
 Ivan Zahartchuk via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Hello, I&#39;m trying to switch between all four USRP E310 inpu=
ts. For this, I use the command self.uhd_rfnoc_streamer_radio_0.set_rx_ante=
nna (&quot;TX / RX&quot;, 0) but I can only switch in channel A. RFNoC Radi=
o does not have the set_rx_subdev_spec command. Tell me how can I switch ac=
ross all 4 channels?</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e4a18205a4d9e158--


--===============6965905215255380204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6965905215255380204==--

