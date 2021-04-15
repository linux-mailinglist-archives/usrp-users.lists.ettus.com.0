Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 729793615BE
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 00:55:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A22C3845F3
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 18:55:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="15E0Hkb1";
	dkim-atps=neutral
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	by mm2.emwd.com (Postfix) with ESMTPS id CD0793840EE
	for <USRP-users@lists.ettus.com>; Thu, 15 Apr 2021 18:54:49 -0400 (EDT)
Received: by mail-ua1-f47.google.com with SMTP id a8so4896356uan.10
        for <USRP-users@lists.ettus.com>; Thu, 15 Apr 2021 15:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lI8j+obus99aA6kRdbFZVB5k1VjR1n8zB7rc5Gkrp3g=;
        b=15E0Hkb1QVqgf+tUtuRpIQJO7n9VR1FXf8L1vHXU0Nh/kuGtZmCIqe6md3FGmBVvTe
         Dy21mbxptqD6qbXUQgWW64UDSyan+58nwj2EzxW2pKcHYQY4GMmrf/Y92gVCa+AmtVn+
         yxFFrq3AY8YgZk6LDEt6CJJBgsZRTS2yoL96TkNdo12dKEv5uv2fqUAB2foDfiPCSkn7
         xPLKaO40SIxeVxMNGnibSWXqFaL1aNqNVfDr9dix19E5jdCzahBU0MGkoHW+cqVF0AKB
         4dPQpSABGtWmy0IpwPIb+vlxcwREkBfELqj8EmSq6j3tuu1b0e0wRkWNau2ZVnsCVtuR
         c0Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lI8j+obus99aA6kRdbFZVB5k1VjR1n8zB7rc5Gkrp3g=;
        b=a9Y+IaBdLiS7rv5EW7qYxL7sdir/t4ybCHC0GrtUav7+JfCnAJzMjjiLVaV1CifeJe
         BcC8YfkVS7Y63HpLfqHs/fxJipYQL85CMr/ukfIKnCWnLg0jz5ghRETAM5/JYazq4QoD
         StJcPLzo0DLHy0vPkC6isdcIZ+2eGxG5BYhw9fS/NgykVxrba9kdK1eCbLM+ba3lrQA9
         lgRrvNWWrnsDUBtRDntBKjV/BTGXUVhUGfSvRXac8hlTS5tGzd5Fq39MiB6XfjWsfOe3
         vaJ5yNgo7I3HOzHcJd5eQ4yFizoh3xeL0k55qIhKSCC1G8h723ZgTpccv9py8GSoabjB
         YVoQ==
X-Gm-Message-State: AOAM533ke/v1/cpeqYQ6g1x31P5bsclDsDNFm3eFyfkH8/DenCDVqkXC
	vWFCkehJcYU7GAny4WCM2Enak/Iy1tkeEBLp+LJjmK3G8Xc/zPbE
X-Google-Smtp-Source: ABdhPJyylr3cPXr2f54Mlm/LgyShj+s+DRhPAfMoBNL5jEOcOTlc/qpVgf8Zb25r59bILiZ+ewlq/AD2a+TmK5fRps4=
X-Received: by 2002:a9f:3f09:: with SMTP id h9mr4117887uaj.139.1618527289071;
 Thu, 15 Apr 2021 15:54:49 -0700 (PDT)
MIME-Version: 1.0
References: <CO6PR19MB48012AD1BB3AF6D17C5DC3FCC64D9@CO6PR19MB4801.namprd19.prod.outlook.com>
 <CAL7q81umUPsf6KVEHV9iHuswUqBkusvHB5CW2TN4vbXo_YJDhQ@mail.gmail.com> <CO6PR19MB480131B0B50C7ED11CD0E1EBC64D9@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB480131B0B50C7ED11CD0E1EBC64D9@CO6PR19MB4801.namprd19.prod.outlook.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 15 Apr 2021 18:54:13 -0400
Message-ID: <CAL7q81uTRcT3RSnQKbMxGPMM6n1h1_-b9Artu1g55=WWG6xYRw@mail.gmail.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Message-ID-Hash: H54F2T7ITA4E5S4RVFRUVYGLVIAA47DK
X-Message-ID-Hash: H54F2T7ITA4E5S4RVFRUVYGLVIAA47DK
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using RFNoC RX and TX blocks in one flowgraph that interfaces with an X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H54F2T7ITA4E5S4RVFRUVYGLVIAA47DK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8210897017403662173=="

--===============8210897017403662173==
Content-Type: multipart/alternative; boundary="0000000000001fee7b05c00ac039"

--0000000000001fee7b05c00ac039
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What happens if you set RX Radio "Instance Select" to 0? Also try setting
the DDC's instance select to 1.

On Thu, Apr 15, 2021 at 6:33 PM Jerrid Plymale <jerrid.plymale@canyon-us.co=
m>
wrote:

> Jonathon,
>
>
>
> Yes, this error still occurs if I add a copy block between the RX and TX
> streamer blocks.
>
>
>
> Best Regards,
>
>
>
> Jerrid
>
>
>
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Thursday, April 15, 2021 3:20 PM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Using RFNoC RX and TX blocks in one flowgraph
> that interfaces with an X310
>
>
>
> Hi Jerrid,
>
>
>
> Does the error still happen when you add the copy between the RX / TX
> streamers?
>
>
>
> Jonathon
>
>
>
> On Thu, Apr 15, 2021 at 6:01 PM Jerrid Plymale <
> jerrid.plymale@canyon-us.com> wrote:
>
> Hello All,
>
>
>
> I have been running into a problem this week that I was hoping to get som=
e
> help with. I am working on transitioning to using the RFNoC RX and TX
> blocks in a flowgraph to control passthrough of signals in the USRP X310 =
I
> am using. Attached is an image of the flowgraph that I am trying to get
> working. I have been able to get the RX chain and the TX chain to work
> individually, but when I try to run the flowgraph shown I get the followi=
ng
> error from gnuradio-companion:
>
>
>
> RunTimeError: RFNoCError: RoutingError: 0/Radio#1:0 is neither statically
> connected to 0/DDC#0:0 nor to an SEP!
>
>
>
> Any insight to what=E2=80=99s causing this problem and how to solve it wo=
uld be
> greatly appreciated.
>
>
>
> Best Regards,
>
>
>
> Jerrid
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000001fee7b05c00ac039
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What happens if you set RX Radio &quot;Instance Select&quo=
t; to 0? Also try setting the DDC&#39;s instance select to 1.</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 15=
, 2021 at 6:33 PM Jerrid Plymale &lt;<a href=3D"mailto:jerrid.plymale@canyo=
n-us.com">jerrid.plymale@canyon-us.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_627859370304937343WordSection1">
<p class=3D"MsoNormal">Jonathon,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Yes, this error still occurs if I add a copy block b=
etween the RX and TX streamer blocks.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best Regards,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jerrid<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:=
jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a=
>&gt; <br>
<b>Sent:</b> Thursday, April 15, 2021 3:20 PM<br>
<b>To:</b> Jerrid Plymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.co=
m" target=3D"_blank">jerrid.plymale@canyon-us.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Using RFNoC RX and TX blocks in one flowgr=
aph that interfaces with an X310<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi Jerrid,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Does the error still happen when=C2=A0you add the co=
py between the RX / TX streamers?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Jonathon<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Apr 15, 2021 at 6:01 PM Jerrid Plymale &lt;<=
a href=3D"mailto:jerrid.plymale@canyon-us.com" target=3D"_blank">jerrid.ply=
male@canyon-us.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">Hello All,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I have been running into a problem this week that I =
was hoping to get some help with. I am working on transitioning to using th=
e RFNoC RX and TX blocks in a flowgraph to control
 passthrough of signals in the USRP X310 I am using. Attached is an image o=
f the flowgraph that I am trying to get working. I have been able to get th=
e RX chain and the TX chain to work individually, but when I try to run the=
 flowgraph shown I get the following
 error from gnuradio-companion: <u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">RunTimeError: RFNoCError: RoutingError: 0/Radio#1:0 =
is neither statically connected to 0/DDC#0:0 nor to an SEP!<u></u><u></u></=
p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Any insight to what=E2=80=99s causing this problem a=
nd how to solve it would be greatly appreciated.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Best Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Jerrid<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000001fee7b05c00ac039--

--===============8210897017403662173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8210897017403662173==--
