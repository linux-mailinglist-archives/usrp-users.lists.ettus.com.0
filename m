Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9267144EBA9
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 17:55:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8ABAB3843D0
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 11:55:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TqopsCAl";
	dkim-atps=neutral
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 85843383D2D
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 11:54:36 -0500 (EST)
Received: by mail-oi1-f181.google.com with SMTP id bk14so18983649oib.7
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 08:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=75SzFBKjKzWOSw2y5dNegIe1PorqJss2QNtiJNBkCA4=;
        b=TqopsCAl/KeX8cSh8YGJOFZOC4NRdYVsoM4pygHDzK8Kjpaw8HqRqhEAWt8YczSoBw
         cUKxdtyrAHDQ1fBbruxhbZRVXMcYgMbxy9F0LRIM+F9tw0UPQcHnoPAT/AmvF7u4/mSt
         kUGA/xC8acedtNcdkHnq2HdbwlW/yoUdNfjOGv7YIwsagFX1oekLDLNZMDunuBBO0pCk
         pVrQFTKVoaAN0/aA6xLAOGybqLwkW3j+bRuXS80s7W8Y1g+V0e3dePGF/DMvPxFJcCXx
         Nnrg9oylio2bpPceIIPbEKiwUqUx+6Bau9QY3U24MYZCFVn4U6ulQfpj43jJwvaGJ/PJ
         jpug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=75SzFBKjKzWOSw2y5dNegIe1PorqJss2QNtiJNBkCA4=;
        b=WcSrc2ykj0sLAEFvHJepG4FlndLsu6GP0SnMQPf5dpInvfBdUr/5Iqcr8LCZRoHKNK
         JlXe3tkW4Nt7e6Itr57uZrnd2JO0In/U5gDO7PkV1055glyJJ2Gn9ZTErxPtpWUTX2Ve
         DD09ItqXEHl5Ku4BRi+tPV4Agqvfof04d5SttL5jUH/f9x68i9t93/Bw0KDCF142S5ZN
         B2Ed8WJf/Bhnitg0K0mGvdO+yNd5h8p4bS55wyJWOcmHKHdSYehe2s2Zdy2QYMtnSDEa
         5f7inTVu65LgyswNoULMozY/TtxIKoJ0rREwaVHRKhCkrWf8pq62e8z6CRQuvYYjTANy
         IBIw==
X-Gm-Message-State: AOAM530qbFLlDSSm7z5eQKXy48ntSKC88hvzUzL8tP8dZ1oWd8hvYzQK
	xRCE47x2FDpXNvnDrdRujuXenBMB9ta+wCwMsMEORs8YD9Y=
X-Google-Smtp-Source: ABdhPJxWAd5qf73K4dEqLNTe6DmGV9niBQntAfHYMPopw0YojXi9z7oSSG/mXPM42TQyhXbiQfJQ9VSOGNayGQT85Yc=
X-Received: by 2002:aca:2408:: with SMTP id n8mr27826419oic.124.1636736075571;
 Fri, 12 Nov 2021 08:54:35 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com> <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com>
In-Reply-To: <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 11:54:24 -0500
Message-ID: <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 7PSZUSB7UAAOR43V6GMCEBQGKTROHIOT
X-Message-ID-Hash: 7PSZUSB7UAAOR43V6GMCEBQGKTROHIOT
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7PSZUSB7UAAOR43V6GMCEBQGKTROHIOT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5060080585673675654=="

--===============5060080585673675654==
Content-Type: multipart/alternative; boundary="0000000000006060e305d09a502a"

--0000000000006060e305d09a502a
Content-Type: text/plain; charset="UTF-8"

>
>
> So, there's a DS1139 RTC chip, which is an garden-variety RTC chip used in
> designs all over the place.  The linux rtc-1307 kernel driver knows about
> this chip.
>
> HOWEVER, it requires a battery to maintain time, and near as I can tell,
> the only battery in the E310 universe is with the E312 "UPS" battery.  I
> don't see any evidence
>   that there's a separate, small, back-up battery for the RTC in the plain
> E310.
>

I wonder how my system comes up Aug 6, 2021?  Could this be the date of the
file system image?  Perhaps I can modify this.

--0000000000006060e305d09a502a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div><br>
    So, there&#39;s a DS1139 RTC chip, which is an garden-variety RTC chip
    used in designs all over the place.=C2=A0 The linux rtc-1307 kernel
    driver knows about this chip.<br>
    <br>
    HOWEVER, it requires a battery to maintain time, and near as I can
    tell, the only battery in the E310 universe is with the E312 &quot;UPS&=
quot;
    battery.=C2=A0 I don&#39;t see any evidence<br>
    =C2=A0 that there&#39;s a separate, small, back-up battery for the RTC =
in the
    plain E310.<br></div></blockquote><div><br></div><div>I wonder how my s=
ystem comes up Aug 6, 2021?=C2=A0 Could this be the date of the file system=
 image?=C2=A0 Perhaps I can modify this.=C2=A0</div></div></div>

--0000000000006060e305d09a502a--

--===============5060080585673675654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5060080585673675654==--
