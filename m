Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3775144CA0
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2019 21:53:51 +0200 (CEST)
Received: from [::1] (port=52656 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbVnA-0006Gn-0p; Thu, 13 Jun 2019 15:53:48 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:36142)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hbVn6-00069C-AL
 for usrp-users@lists.ettus.com; Thu, 13 Jun 2019 15:53:44 -0400
Received: by mail-oi1-f180.google.com with SMTP id w7so275790oic.3
 for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2019 12:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jCqnoU0iDo4NKG1VREEjHSynr0ic9veC2h/iTXBNyF4=;
 b=HF8k+SRQalJ8k1wSuvFoi+xFWxMy6gIAgJlgXhsTvuWYLHm0yrbcHuJVO8QihRWUPB
 MB43Vg24/flp5sCMI2zrOaaCqTwizzmf/fr9oSiB/pXIuBLU2kG+o6z0q0qsfx0j+kjh
 bd5uihPAPUqOiRRJIGRbzCqTos24nUchY9B0bhbVPl27BnWtx3e7ddbh9Ara4HXSHF1x
 p7pg+L/IBo+/K/2dnC8FTVDHFzBBYqa8atGw2FOhiVXeESH9J1CGUGpiNlnsSip8kR3N
 bBIeRGBQPRuRTGWF0n/5dSX/zJlwaTLjdOhqoyea/k4tpZhdB2m/VhR3J5Z9kk3vSPVU
 Nxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jCqnoU0iDo4NKG1VREEjHSynr0ic9veC2h/iTXBNyF4=;
 b=Fck8YI2nqVLD81d+Yxi5pKQcuOptbVXkGsfYzqgyMeRnzcAiphhBm94rbb6YQ7golx
 AsVrCCLqJl1KWqMy1yxPP2b9zw5NMeQSNdlbPWxLNOxnR518ASGHyyBmopdnrFZ+NvtT
 AwToUWrVKlX248xiZg0QsdV2ObNXkpnLPPyJmmKkE9W/7irTuK0VObluW1jIZd04E2ML
 HKtRJPOh7rcepTpsPo+pnKmLK5O/xXvglukwTURUANURBnzXVv/01AzLw0MTN/UUAAmV
 U1y0V7GJp+SBrxKFP+OaR/bELy05imDznueiIFdHJvoMkIN6bNb++6dIvjZ/19QUv1Ed
 cthQ==
X-Gm-Message-State: APjAAAWlfqKNybFJ0aY8EQXhVwngCWNaw/FaWbrzBXv9ZdvX0jK8wHJT
 EdZyTTIxcEwA4btqhxvRtBuGcmjahPTFB/Ol9s4=
X-Google-Smtp-Source: APXvYqx4MQZxWe97SUHFS/a02gybW52Wko28zBuujDK5trFgxjhLZ7DkkgpY8NkG86BK6jv2dIZc7VAL4pvFS6h0rns=
X-Received: by 2002:aca:4895:: with SMTP id v143mr4254444oia.23.1560455583731; 
 Thu, 13 Jun 2019 12:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAOExtcS3ZNPKD+HFTT8utGZmTTKPpd1sUVhLrrQJO1Pxq_C80g@mail.gmail.com>
 <5D02A5F4.5010604@gmail.com>
In-Reply-To: <5D02A5F4.5010604@gmail.com>
Date: Thu, 13 Jun 2019 21:52:53 +0200
Message-ID: <CAOExtcTEGLv6zNja5YuxH+9ekethcnOWh5eNxy_9qE4Vuv=FhA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Reg: USRP N200 reset problem
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7165768211314272054=="
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

--===============7165768211314272054==
Content-Type: multipart/alternative; boundary="000000000000c19410058b39e0e7"

--000000000000c19410058b39e0e7
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

I just did the following (nothing else). What shall I do after this ? I do
not have the JTAG with me.

*The safe-mode button is a pushbutton switch (S2) located inside the
enclosure. To boot into the safe image, hold-down the safe-mode button
while power-cycling the device. Continue to hold-down the button until the
front-panel LEDs blink and remain solid.*

*When in safe-mode, the USRP-N device will always have the IP address
192.168.10.2.*




On Thu, Jun 13, 2019 at 9:38 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/13/2019 03:33 PM, Sumit Kumar via USRP-users wrote:
> >
> > Hi,
> >
> > I got Ettus N200 from my colleague. I din't know the ip address so I
> > did a reset. After the reset, the ip of N200 became 192.168.10.2 and I
> > was able to ping and do all regular stuff with it. But whenever I do a
> > power cycle of the N200, it is undetectable at 192.168.10.2. Then
> > again I have to reset it.
> >
> > I am not sure what has gone wrong.
> >
> > Regards
> > Sumit
> >
> Could you describe the steps you took to reset it?
>
> IT sounds like you put it in "safe mode", but didn't actually download a
> working image into it or force an IP address reset to a desired IP address.
>
> https://kb.ettus.com/N200/N210_Device_Recovery
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
-- 
Sumit kumar
Doctoral Student, UPMC
Eurecom, BIOT
France

--000000000000c19410058b39e0e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,=C2=A0<div><br></div><div>I just did the followi=
ng (nothing else).=C2=A0<span style=3D"color:rgb(0,0,0);font-family:&quot;L=
ucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:14p=
x">What shall I do after this ? I do not have the JTAG with me.=C2=A0</span=
></div><div><br></div><div><p style=3D"margin:0.5em 0px;line-height:inherit=
;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida =
Grande&quot;,sans-serif;font-size:14px"><u>The safe-mode button is a pushbu=
tton switch (S2) located inside the enclosure. To boot into the safe image,=
 hold-down the safe-mode button while power-cycling the device. Continue to=
 hold-down the button until the front-panel LEDs blink and remain solid.</u=
></p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font=
-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-seri=
f;font-size:14px"><u>When in safe-mode, the USRP-N device will always have =
the IP address 192.168.10.2.</u></p><p style=3D"margin:0.5em 0px;line-heigh=
t:inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quo=
t;Lucida Grande&quot;,sans-serif;font-size:14px"><u><br></u></p><p style=3D=
"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lu=
cida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:14px=
"><br></p></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jun 13, 2019 at 9:38 PM Marcus D. Leech via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">On 06/13/2019 03:33 PM, Sumit Kumar via USRP-users wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I got Ettus N200 from my colleague. I din&#39;t know the ip address so=
 I <br>
&gt; did a reset. After the reset, the ip of N200 became 192.168.10.2 and I=
 <br>
&gt; was able to ping and do all regular stuff with it. But whenever I do a=
 <br>
&gt; power cycle of the N200, it is undetectable at 192.168.10.2. Then <br>
&gt; again I have to reset it.<br>
&gt;<br>
&gt; I am not sure what has gone wrong.<br>
&gt;<br>
&gt; Regards<br>
&gt; Sumit<br>
&gt;<br>
Could you describe the steps you took to reset it?<br>
<br>
IT sounds like you put it in &quot;safe mode&quot;, but didn&#39;t actually=
 download a <br>
working image into it or force an IP address reset to a desired IP address.=
<br>
<br>
<a href=3D"https://kb.ettus.com/N200/N210_Device_Recovery" rel=3D"noreferre=
r" target=3D"_blank">https://kb.ettus.com/N200/N210_Device_Recovery</a><br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><span style=3D"color:rgb(1=
36,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136=
,136);font-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8=
px">Sumit kumar<br>Doctoral Student, UPMC</div><div style=3D"color:rgb(136,=
136,136);font-size:12.8px">Eurecom, BIOT</div><div style=3D"color:rgb(136,1=
36,136);font-size:12.8px">France</div><br></div></div></div>

--000000000000c19410058b39e0e7--


--===============7165768211314272054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7165768211314272054==--

