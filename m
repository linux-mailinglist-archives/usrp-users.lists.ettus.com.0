Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E58532B89E
	for <lists+usrp-users@lfdr.de>; Wed,  3 Mar 2021 15:33:39 +0100 (CET)
Received: from [::1] (port=53792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHSZB-0002YJ-Oi; Wed, 03 Mar 2021 09:33:33 -0500
Received: from mail-yb1-f176.google.com ([209.85.219.176]:37416)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <kelvin.lok266@gmail.com>)
 id 1lHSZ8-0002U8-8l
 for usrp-users@lists.ettus.com; Wed, 03 Mar 2021 09:33:30 -0500
Received: by mail-yb1-f176.google.com with SMTP id p193so24751992yba.4
 for <usrp-users@lists.ettus.com>; Wed, 03 Mar 2021 06:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fO6MmtUl3uDa7KHKXINtd+XqYeUpBF1Zzfqzs1p9Gxc=;
 b=KXUSQ0YKf8W0FM9bzCz/d58pilYjL4Ul8ktCc0VJNzEW5oyHKJ/Jse2vdXYmyg6wjb
 8kcfmtZ6ebwzIMK6vy4OEQ5+QhpU8FBScaR+MPDeKG6gAawnZ+egVLxkl58U1RgBhBX9
 Sep2RKpV7ckdcbGLc8C2Wtj6n3W7/trsYwbUPePFu8+PvResUIDQ50EmK9Xq0jdUmGFC
 BKcumAvQ+6bEYjOBett0pgj4YzwBLr3Sm/2cZHIxmjEEXd9qcEHY0agxBnBeKK6cHcAM
 I98BabwOa/iOAU3J0dJDpZ+Ru0fa47LacJMuKAUNLBL/7eJ4aEVHqCdK1L4KR2+ZPnh4
 g3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fO6MmtUl3uDa7KHKXINtd+XqYeUpBF1Zzfqzs1p9Gxc=;
 b=EwD4yLu+xu7ZqhABHhVKOQ3LUP7oWvouPLBGGqLUd4IrIy+R06jBnz0ouzR+JbVp1O
 2DiibPh27PmFojRsH3tHtGYemEn2GdxFAyCarfFAG0cTwvwP+4p9iJjgVoJHgH1lfacS
 yMvLhWOv9KJmi7gm/HPJEymRJhqC7S3AOavHXfKtqv4kJzzQpdE+wcjDa1y3rb5M+whC
 hxpeAZs6t06vBsj9N7IC2ojqg6QTKHR1x85Euq7WDM6sL8mpXYuVYAVPq5vctQaa63ec
 oBdzh1bZhsrRQMBmCoLboEzUJ1AjERpsX8Ef1XgIwu4wvMDcaMGEn9h7H0ZS/VaukdKr
 7S+w==
X-Gm-Message-State: AOAM533Wy+2bIeaGd0E2ao2XzwmGbxFlNgOmJSTKCZjuYYjfPNELdslo
 mYZvAwHKEIddD2sHQZ3mHuYA01CoMOoII/IAz/c=
X-Google-Smtp-Source: ABdhPJz5FEdyCddZr25reBUEWUzYovWQT6jHxbakOO1oTi/iL3oWm7+QIUOzXxFxiKfgrJSlhKbXyBR0En6EE7/0JXw=
X-Received: by 2002:a25:ad26:: with SMTP id y38mr37256790ybi.391.1614781969584; 
 Wed, 03 Mar 2021 06:32:49 -0800 (PST)
MIME-Version: 1.0
References: <CACSyVY3cKqHzRRrP459Jd-S2=kGZ05HWmYYH8AnFmdhkbDEseA@mail.gmail.com>
 <CF62320E-D32B-42F1-8D8A-EB0B1592C67F@gmail.com>
In-Reply-To: <CF62320E-D32B-42F1-8D8A-EB0B1592C67F@gmail.com>
Date: Wed, 3 Mar 2021 22:32:39 +0800
Message-ID: <CACSyVY0AxAsNpVrnmQRExTcdANCKqaKhrSj-_G5Q7tFZXeRgOg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] B205mini continously transmitting a carrier tone
 even though UHD crashed
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
From: Kelvin Lok via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kelvin Lok <kelvin.lok266@gmail.com>
Content-Type: multipart/mixed; boundary="===============3694874085637663464=="
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

--===============3694874085637663464==
Content-Type: multipart/alternative; boundary="000000000000afd84505bca2b9cb"

--000000000000afd84505bca2b9cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus, I realised it might just have been the lo offset. Is there a
way to "turn off" the lo linkage to the front-end output whenever I'm done
with the usrp? Ideally, I would like to avoid power cycling the radio
whenever I'm done.

On Wed, 3 Mar 2021, 10:18 pm Marcus D Leech, <patchvonbraun@gmail.com>
wrote:

> That=E2=80=99s likely just the TX Lo leakage.
>
> I=E2=80=99m guessing it a a lot weaker than when you=E2=80=99re actually =
transmitting?
>
> Sent from my iPhone
>
> > On Mar 3, 2021, at 3:42 AM, Kelvin Lok via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hi everyone, I am facing an unexpected problem where my B205mini USRP i=
s
> continuously transmitting a tone (that I set initialised as the tx freq),
> even when my parent program has crashed. My parent program is a C++ progr=
am
> that calls uhd, but when the main program catches an exception and
> terminates, the B205mini is still transmitting a tone. I observed this
> behaviour by monitoring the TX output with a spectrum analyser.
> >
> > Does anyone have any ideas what could be the problem? Do I need to call
> a UHD usrp destructor? I noticed that the example UHD programs don't need
> to release or delete the uhd object. Hence I am stumped.
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000afd84505bca2b9cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks Marcus, I realised it might just have been the lo =
offset. Is there a way to &quot;turn off&quot; the lo linkage to the front-=
end output whenever I&#39;m done with the usrp? Ideally, I would like to av=
oid power cycling the radio whenever I&#39;m done.</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 3 Mar 2021, 10:18=
 pm Marcus D Leech, &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvon=
braun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">That=
=E2=80=99s likely just the TX Lo leakage. <br>
<br>
I=E2=80=99m guessing it a a lot weaker than when you=E2=80=99re actually tr=
ansmitting?<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Mar 3, 2021, at 3:42 AM, Kelvin Lok via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi everyone, I am facing an unexpected problem where my B205mini USRP =
is continuously transmitting a tone (that I set initialised as the tx freq)=
, even when my parent program has crashed. My parent program is a C++ progr=
am that calls uhd, but when the main program catches an exception and termi=
nates, the B205mini is still transmitting a tone. I observed this behaviour=
 by monitoring the TX output with a spectrum analyser.<br>
&gt; <br>
&gt; Does anyone have any ideas what could be the problem? Do I need to cal=
l a UHD usrp destructor? I noticed that the example UHD programs don&#39;t =
need to release or delete the uhd object. Hence I am stumped.<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D=
"noreferrer">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000afd84505bca2b9cb--


--===============3694874085637663464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3694874085637663464==--

