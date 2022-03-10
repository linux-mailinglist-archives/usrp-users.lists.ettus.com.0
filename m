Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 111BF4D4F8B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Mar 2022 17:43:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1B3D38446E
	for <lists+usrp-users@lfdr.de>; Thu, 10 Mar 2022 11:43:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="md9qb1D8";
	dkim-atps=neutral
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by mm2.emwd.com (Postfix) with ESMTPS id B2906384469
	for <usrp-users@lists.ettus.com>; Thu, 10 Mar 2022 11:42:41 -0500 (EST)
Received: by mail-lf1-f54.google.com with SMTP id w7so10452522lfd.6
        for <usrp-users@lists.ettus.com>; Thu, 10 Mar 2022 08:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WvXhhtc71BP1mPKIK6TIV+hQPNqshuSf0p38yKVLOI4=;
        b=md9qb1D8xbSondqWl/ikTV3COhVjMjFX0+03Z8FT5CIe9wMxHN0x5yTf13VfIqfzXr
         nqafCYL6CBVeyqJ/YB/U53CBoqo9aFrtI87ibrdori7wOaMRlxAefsuty1eBMNq8L7Kl
         oA2AvTy9bI9Fd/1WoZINp+iiKFF9IiLwizpNniHhmItPmCvLjkSPzKMRYJR+y9f1dDZq
         LZP3jja3sXNIhMQywjQJ3+7QIp6yUC+uMDlPui8L+W8MclW0g5j0FZ/TUDyxUcARDduV
         c3j71w5tgAjekxp0zPkzZUIlfQHBQ+hIw94VuYJyQxrOj8IHoPdBxCNZJLmACJDtdlbs
         dsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WvXhhtc71BP1mPKIK6TIV+hQPNqshuSf0p38yKVLOI4=;
        b=OXuG36UnrXekBzjUlN1/xfS2POrn2AZUS0UtlyiULwlsK1EbJcEnK9cO4FS4E9+4EX
         RbWSRASTBt1UnSBpnMkia4NmLXutDZJJAruqtZ5LXs7/ZYX7EnCEf39t9gXxrfxK7Ya4
         XYI2tzyJY0WQL3LK3EG+grHVcDkRCCaV6TWsmGezd1+QMrimAgxlarTthVJeKF+vd0bJ
         vmGaTzsN6MFNgwY9Da6IRznVw5EerTKEZTNks1wEQvxoZC3q2paizTx6Ol9kg/mbFRIO
         vO6XJ1mn1ea2b5ZL1xFjZ2OtwjKDUU2eq9oL2XcGvPj8UehXv1BXdtPxlPh/R9WQKeZE
         AXMA==
X-Gm-Message-State: AOAM532bHwK1ODUWdlYPKszmYiPHcbOrYOKVseFH8nSeEgN/rimH+IjW
	jwvro16F7twxauJk2cYlbSF9FrrImCA3lF29IZRKXo3o
X-Google-Smtp-Source: ABdhPJzH8suCAithGlncfMHc4vIMJOjB37lz26JWnuMDOpjsQTuPQBBcmlGHN3s75xsOBM+LBaU+n4cBw935J9TiDnI=
X-Received: by 2002:a19:ca43:0:b0:445:baad:7d36 with SMTP id
 h3-20020a19ca43000000b00445baad7d36mr3451100lfj.489.1646930560296; Thu, 10
 Mar 2022 08:42:40 -0800 (PST)
MIME-Version: 1.0
References: <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com> <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com> <AM8P250MB0107C81BA07940913350EBF09B0B9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <81f8a42f-3bd8-b7a3-fefd-51938ca7f696@gmail.com>
In-Reply-To: <81f8a42f-3bd8-b7a3-fefd-51938ca7f696@gmail.com>
From: Robert McGwier <rwmcgwier@gmail.com>
Date: Thu, 10 Mar 2022 10:42:29 -0600
Message-ID: <CA+K5gzfiy=xED9M4-PvViOrS1yWujBcUB=Ny6OaUU-2ORsE+Ng@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FCR6SOAY2VMDVVIYYV5YDCGUZKW6LYVV
X-Message-ID-Hash: FCR6SOAY2VMDVVIYYV5YDCGUZKW6LYVV
X-MailFrom: rwmcgwier@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FCR6SOAY2VMDVVIYYV5YDCGUZKW6LYVV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7935334883636538671=="

--===============7935334883636538671==
Content-Type: multipart/alternative; boundary="000000000000042c1705d9dfe76c"

--000000000000042c1705d9dfe76c
Content-Type: text/plain; charset="UTF-8"

The algorithms for rapid acquisition are patented and worth a fortune
because they are used by every chipset in every cell.  Good to see you here
Marc!

Bob


On Thu, Mar 10, 2022, 8:43 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-03-10 05:24, Tobias Kronauer wrote:
>
> For inexplicable reasons, it did lock after some time. Maybe the received
> GPS signal was too weak (the antenna was placed inside behind a window) +
> we waited long enough. However, we decided to use the OctoClock with
> another PPS generator as synchronization mechanisms. Thanks a million for
> your help.
>
> I'm glad it worked for you!
>
> A couple of points:
>
>    o A GPSDO will sometimes take quite a long time to achieve lock from a
> cold start (possibly hours)
>    o Some modern low-E windows have a very thin coating of silver on them,
> to reduce IR transmission, but it also makes a pretty good
>       attenuator for L-band frequencies
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000042c1705d9dfe76c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">The algorithms for rapid acquisition are patented and wor=
th a fortune because they are used by every chipset in every cell.=C2=A0 Go=
od to see you here Marc!<div dir=3D"auto"><br></div><div dir=3D"auto">Bob</=
div><div dir=3D"auto"><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 10, 2022, 8:43 AM Marcus D. Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-03-10 05:24, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        For inexplicable reasons, it did lock after some time. Maybe the
        received GPS signal was too weak (the antenna was placed inside
        behind a window) + we waited long enough. However, we decided to
        use the OctoClock with another PPS generator as synchronization
        mechanisms. Thanks a million for your help.<br>
      </div>
    </blockquote>
    I&#39;m glad it worked for you!<br>
    <br>
    A couple of points:<br>
    <br>
    =C2=A0=C2=A0 o A GPSDO will sometimes take quite a long time to achieve=
 lock
    from a cold start (possibly hours)<br>
    =C2=A0=C2=A0 o Some modern low-E windows have a very thin coating of si=
lver on
    them, to reduce IR transmission, but it also makes a pretty good<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 attenuator for L-band frequencies<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000042c1705d9dfe76c--

--===============7935334883636538671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7935334883636538671==--
