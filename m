Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 891B015AAC3
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2020 15:12:29 +0100 (CET)
Received: from [::1] (port=47234 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j1skd-0006ln-WB; Wed, 12 Feb 2020 09:12:28 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:41927)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1j1ska-0006gK-Ku
 for usrp-users@lists.ettus.com; Wed, 12 Feb 2020 09:12:24 -0500
Received: by mail-ot1-f52.google.com with SMTP id r27so2003934otc.8
 for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2020 06:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+0/F6o/apMMw8/8OOHAACDW2Q3NBp6U6FUQRrn/eL1A=;
 b=oZRGSel+7I/mP3ZX3a2UyBbAED+3MWxromVD1qe/AYpz7mPDAY90RAeruP/MVhuNKo
 RitSi7kV62mKZmCOip/muoZl57zTeBTBjNtRMLI6yLu/FyZxIwPpssB/un1CF6lZYd7K
 9cveA05DFIVvUuhDN+hWsc7v0Y5uW2K1poqtPNGbqfyr/sYib1LUPqq0E3RNqTVi/f9+
 TvjxElLntWiIzC4CIAwQ7RC9DApvb0XczXx438TDvGAd76TZj7XoeVj0S1Mgb+JlnpdQ
 Cc1sybMI02SLFrDh0f4fvP9uCwGZd2dM+BJXR+MzNNVsR80vw4cuDnMMqsE2wto1R1FW
 5Nug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+0/F6o/apMMw8/8OOHAACDW2Q3NBp6U6FUQRrn/eL1A=;
 b=g4D+dZSN0tew73Nt5sXNhNrw5ado6IlOtXAnxH/SUnPe25tvWnRZxjUwHlUmuEwIZv
 pw5rG8FC497WNQXfdvWMgcHtUVCgcKlLsjHAzP2RgBfAR8DCbwXWbjfnVx+g/VotVihy
 UTygUWfcEu19ZAY7DYsmiIUVVUHomJYg+wMBa+UZUPvHlL6WGy/HqtllZc0NJOe6iFgr
 Ca4utzLVhonBslwiwwJSVuLVFiZ5RKZHt2tFDFuzRTbGE9QOaueP/vp88f/GpJ+p4Rl8
 WLt+M1m5wTYsst3Zyyf7Q+gjUgZ9kiITtk6agMoCAJvuHr+6U7vnl9zONmmkb276JZmS
 mafQ==
X-Gm-Message-State: APjAAAUxLaL/w8XWmSySU54irvs2RenfrJxPukrgrsE/HVj+CtYzxfN7
 jNygY8pdhgzvRjixTiANeIkpW4WcHc30UdDb6QT7sZt9m6+e7w==
X-Google-Smtp-Source: APXvYqwG7Vd24ZWAOsW7IY6X6HIrroyIVo6wq91eKe7i4lADVAFQ/JTnHkiKpYUIajRrdpPCeA+igJNQ0SaPOazaZDQ=
X-Received: by 2002:a05:6830:1555:: with SMTP id
 l21mr8959051otp.41.1581516702428; 
 Wed, 12 Feb 2020 06:11:42 -0800 (PST)
MIME-Version: 1.0
References: <CAEnX9dE3FAPR362qf0c_SbuaU2OzgrLggLC3nXr43hacn6gCjA@mail.gmail.com>
 <CACaXmv8BLfR4XAGfXVWq0Ac0aZuoW-XB-wmAt=i4PkwmYZvrFQ@mail.gmail.com>
In-Reply-To: <CACaXmv8BLfR4XAGfXVWq0Ac0aZuoW-XB-wmAt=i4PkwmYZvrFQ@mail.gmail.com>
Date: Wed, 12 Feb 2020 08:11:06 -0600
Message-ID: <CACaXmv9CpnAmQob3XcUFT3H2TeVVgtbmqj-SuxiLOVwXOu8+SA@mail.gmail.com>
To: Joe crossen <jmcrossen80@gmail.com>
Subject: Re: [USRP-users] RedhawkSDR and E312
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4401743897587766720=="
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

--===============4401743897587766720==
Content-Type: multipart/alternative; boundary="0000000000004149c7059e618dde"

--0000000000004149c7059e618dde
Content-Type: text/plain; charset="UTF-8"

I also meant to say that maybe you could contact someone at Geon
Technologies [1], or submit a GitHub Issue in one of the repositories [2,3].

[1] https://geontech.com/redhawk-sdr/

[2] https://github.com/redhawksdr

[3] https://github.com/RedhawkSDR/USRP_UHD

--Neel Pandeya



On Wed, 12 Feb 2020 at 07:57, Neel Pandeya <neel.pandeya@ettus.com> wrote:

> Hello Joe:
>
> We do not use Redhawk here, and we do not provide direct support for it.
>
> We're mostly focused on programming the USRP from UHD/C++ and GNU Radio.
>
> Is there any mailing list or forum for the Redhawk community?
>
> I would like to help as much as I can.  I know that other people have
> successfully used Redhawk before with USRP devices.  Let me ask around, and
> I'll get back to you privately.
>
> --Neel Pandeya
>
>
>
> On Sun, 9 Feb 2020 at 18:30, Joe crossen via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi all,
>>
>> I have an E312 and have managed to successfully receive RF and visualize
>> in the Redhawk IDE.
>> i.e.,
>> Launched domain on the IDE.
>> Launched device manager on the USRP (using nodeBooter command) - which
>> appears in the IDE domain.
>> Once connected, I am able to plot the device outputs from the IDE.
>>
>> However I am unable to get the USRP to transmit a waveform created in the
>> IDE.
>> I can't figure out how to connect the waveform to the transmission
>> port...
>> Has anyone been able to achieve this?
>>
>> Thank you,
>> Joe
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000004149c7059e618dde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">I also meant to say that maybe you could contact someone at Geo=
n Technologies [1], or submit a GitHub Issue in one of the repositories [2,=
3].<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif">[1] <a href=3D"https://geontech.com/redhawk-sdr/">https://geon=
tech.com/redhawk-sdr/</a></div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:verdana,sans-serif">[2] <a href=3D"https://github.com/redhawksdr=
">https://github.com/redhawksdr</a></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif">[3] <a href=3D"https://github.com/=
RedhawkSDR/USRP_UHD">https://github.com/RedhawkSDR/USRP_UHD</a></div><div c=
lass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><=
div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">--Neel=
 Pandeya</div><div class=3D"gmail_default" style=3D"font-family:verdana,san=
s-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdan=
a,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, 12 Feb 2020 at 07:57, Neel Pandeya &lt;<a h=
ref=3D"mailto:neel.pandeya@ettus.com">neel.pandeya@ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Hel=
lo Joe:</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif">We do not use Redhawk here, and we do not provide direct suppo=
rt for it.</div><div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verd=
ana,sans-serif">We&#39;re mostly focused on programming the USRP from UHD/C=
++ and GNU Radio.</div><div class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif">Is there any mailing list or forum for the Redhawk c=
ommunity?</div><div class=3D"gmail_default" style=3D"font-family:verdana,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verda=
na,sans-serif">I would like to help as much as I can.=C2=A0 I know that oth=
er people have successfully used Redhawk before with USRP devices.=C2=A0 Le=
t me ask around, and I&#39;ll get back to you privately.<br></div><div clas=
s=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">--Neel Pa=
ndeya</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, 9 Feb 2020 at 18:30, Joe crossen via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div=
>I have an E312 and have managed to successfully receive RF and visualize i=
n the Redhawk IDE.</div><div>i.e.,=C2=A0</div><div>Launched domain on the I=
DE.</div><div>Launched device manager on the USRP (using nodeBooter command=
) - which appears in the IDE domain.</div><div></div><div>Once connected, I=
 am able to plot the device outputs from the IDE.</div><div><br></div><div>=
However I am unable to get the USRP to transmit a waveform created in the I=
DE. <br></div><div>I can&#39;t figure out how to connect the waveform to th=
e transmission port... <br></div><div></div><div>Has anyone been able to ac=
hieve this? <br></div><div><br></div><div>Thank you,</div><div>Joe<br></div=
><div><br></div><div><br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000004149c7059e618dde--


--===============4401743897587766720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4401743897587766720==--

