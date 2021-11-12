Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BFD44EC7E
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 19:15:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB60438480C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 13:15:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Uhd9sR1N";
	dkim-atps=neutral
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 60DDB3841A6
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 13:14:50 -0500 (EST)
Received: by mail-oi1-f181.google.com with SMTP id s139so19309342oie.13
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 10:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zpwJR2dFtoGuONjL8wQqB9frJLioy2FR4dUKtAi9GzE=;
        b=Uhd9sR1Nv/7wF/Tim260OG/2feqpzC987EzDzxIO3KmV0WgQhKI8MPLU8Ak6sJ9ymE
         RrPc6u9AveJd2PLWE7yvr3zYPqP1OEdM0cI6kao0Yv60POBZpTrvDtqCzRXvz0S6yBvl
         /Gni5p7iHBSZ7aqQmixJxZpuLuwFT1FLaDSxJ4UyKUY9KBN1009H4I13LMlL34mJ/OKi
         jxv+d3Az0H7cC37lVRaLOnhcL5va8jqK9TuWu5uOpB9zYo2OjpPHF2F63WzeTHztE8Jz
         JHFjLRljfJ5LwrBb76mXrpKIXn5U5UUCfM0/31DmlMvahUUaMjk34TfATmsJo2AzFlc2
         LC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zpwJR2dFtoGuONjL8wQqB9frJLioy2FR4dUKtAi9GzE=;
        b=MqWP9ipJZu5f7LzGzcxsQQ9y0F5R3DNl66tIT2h/AfFAKdYYvPWj/C1mY4OHaw+zTd
         uB12oQdWEuSsch00paaqKdpWIJ06lbS/H8Yof363boOHGsRs8YZEPrb1Awxl8uYbclz5
         Tle3vTF0Xgv/LjEfWrhXePwwerQmJhpIOrtfn0VcIpS07/MfX7qmfKL04M5bWVMaXQcK
         TFDou092hn/e5OQTETQuOBGbNhNK42+w6JT7Ec6sLcYNg27Ilzg9hOzvCxyHyI1WJNVb
         7N6ZggVZiSlSG28VIAj99xyAOC1qtS5hWBcM2YFgEGnjfIn3Ln37cN3Ns/aYhJcWKOuF
         rwgQ==
X-Gm-Message-State: AOAM533dD96yj+GzWCcABWX+fwcByaT8gUMWa1teuqtfYqgO86XcVqFy
	FY1R0WZvXpGh6X+vxjgm4B4f9yrXJY41lw1dSWR5YhUAUwA=
X-Google-Smtp-Source: ABdhPJzpN2XGIv/mc+xznmQjGMq+qor48R264wLENDtREotHUd3L7AutMQdw17X0HzYsW1O7KpPuiEcPrYslEEHGhzE=
X-Received: by 2002:a05:6808:1919:: with SMTP id bf25mr14761266oib.33.1636740889364;
 Fri, 12 Nov 2021 10:14:49 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
 <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com> <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
 <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com> <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
 <68dfeaf8-8a74-4902-a939-b9f79640b230@gmail.com> <CAB__hTSmvEquWz1GFsZDf297roNWMTBw-DymFHYxs16pUJOP0Q@mail.gmail.com>
 <09b6ddf3-81ca-b6fc-491c-66b7bfaf83d7@gmail.com>
In-Reply-To: <09b6ddf3-81ca-b6fc-491c-66b7bfaf83d7@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 13:14:38 -0500
Message-ID: <CAB__hTTGkMcTz4a7ht_Uhb=V3o8EsC8hO5acqfwKkNYa46rsxg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 5NCQXNH7JSR56K2SD2ZF6FHOX46GC5QT
X-Message-ID-Hash: 5NCQXNH7JSR56K2SD2ZF6FHOX46GC5QT
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5NCQXNH7JSR56K2SD2ZF6FHOX46GC5QT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1263196305953404378=="

--===============1263196305953404378==
Content-Type: multipart/alternative; boundary="0000000000004cf8d705d09b6f80"

--0000000000004cf8d705d09b6f80
Content-Type: text/plain; charset="UTF-8"

>
>
> I think that my overall issue is related to writing files with bad time
> stamps.  I don't know why this can cause the file system check "fsck" to
> fail, but when that happens, the /data partition doesn't mount and I don't
> know how to recover (short of re-burning the file system).
>
> I can say that if I start with a fresh file system, I can boot multiple
> times successfully if the eth0 is connected one-to-one to my host  and is
> unable to acquire a network time.  On the other hand, if I connect eth0 to
> our network such that it gets a network time, the network time is preserved
> on subsequent boots, even if I have no network cable connected on the
> subsequent boots such that it acquires no network time.  But, in this case
> I seem to somehow run into the same corruption related to not being able to
> mount the /data partition at bootup (which I am unable to clear short of a
> file system re-write).
>
> So, for now, I can use the system as long as I don't hook up to a network
> time server.
>
> In terms of the booting issue, I wonder if the "eject" on your host isn't
> actually clearing the "filesystem is dirty" flag.  That would be unusual,
> but not out of the question.
>   If you instead "sudo umount /dev/sdbXX" and THEN pop the sd card, does
> the behavior change?
>
> I'm at a loss to explain how NTPD can apparently find and set the RTC
> clock when "hwclock" cannot.
>

I will try soon, but such experiments are "expensive" because when it fails
I have to re-burn the file system and then reconfigure stuff
afterwords since I don't know how to recover from the issue.  My guess was
that either the mount or the eject was writing a date (perhaps an
"accessed" date in some metadata) that was much in the future relative to
the file system "Aug 6 2021" date that it gets and somehow this date
mismatch was causing the fsck failure.  But I am not knowledgeable on
this.

Regarding your NTPD comment, perhaps it isn't accessing any RTC.  Perhaps
it is storing the time in the file system somewhere such that it can
access it on next boot?

--0000000000004cf8d705d09b6f80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div><blockquote type=3D"cite"><div dir=3D"ltr"><div cla=
ss=3D"gmail_quote"><div>=C2=A0</div>
          <div>I think that my overall issue is related to writing files
            with bad time stamps.=C2=A0 I don&#39;t know why this can cause=
 the
            file system check &quot;fsck&quot; to fail, but when that happe=
ns, the
            /data partition doesn&#39;t mount and I don&#39;t know how to
            recover (short of re-burning the file system).</div>
          <div><br>
          </div>
          <div>I can say that if I start with a fresh file system, I can
            boot multiple times successfully if the eth0 is connected
            one-to-one to my host=C2=A0 and is unable to acquire a network
            time.=C2=A0 On the other hand, if I connect eth0 to our network
            such that it gets a network time, the network time is
            preserved on subsequent boots, even if I have no network
            cable connected on the subsequent boots such that it
            acquires no network time.=C2=A0 But, in this case I seem to
            somehow run into the same corruption related to not being
            able to mount the /data partition at bootup (which I am
            unable to clear short of a file system re-write).</div>
          <div><br>
          </div>
          <div>So, for now, I can use the system as long as I don&#39;t hoo=
k
            up to a network time server.</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    In terms of the booting issue, I wonder if the &quot;eject&quot; on you=
r host
    isn&#39;t actually clearing the &quot;filesystem is dirty&quot; flag.=
=C2=A0 That would
    be unusual, but not out of the question.<br>
    =C2=A0 If you instead &quot;sudo umount /dev/sdbXX&quot; and THEN pop t=
he sd card,
    does the behavior change?<br>
    <br>
    I&#39;m at a loss to explain how NTPD can apparently find and set the
    RTC clock when &quot;hwclock&quot; cannot.=C2=A0</div></blockquote><div=
><br></div><div>I will try soon, but such experiments are &quot;expensive&q=
uot; because when it fails I have to re-burn the file system and then recon=
figure stuff afterwords=C2=A0since I don&#39;t know how to recover from the=
=C2=A0issue.=C2=A0 My guess was that either the mount or the eject was writ=
ing a date (perhaps an &quot;accessed&quot; date in some metadata) that was=
 much in the future relative to the file system &quot;Aug 6 2021&quot; date=
 that it gets and somehow this date mismatch was causing the fsck failure.=
=C2=A0 But I am not knowledgeable on this.=C2=A0=C2=A0</div><div><br></div>=
<div>Regarding your NTPD comment, perhaps it isn&#39;t accessing any RTC.=
=C2=A0 Perhaps it is storing the time in the file system somewhere such tha=
t it can access=C2=A0it on next boot?</div></div></div>

--0000000000004cf8d705d09b6f80--

--===============1263196305953404378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1263196305953404378==--
