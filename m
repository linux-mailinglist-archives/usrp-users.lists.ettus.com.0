Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C639244EC4B
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 18:59:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 902D23846C5
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 12:59:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="eBr3geGH";
	dkim-atps=neutral
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 2FFF6383EC2
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 12:58:49 -0500 (EST)
Received: by mail-ot1-f52.google.com with SMTP id r10-20020a056830080a00b0055c8fd2cebdso14999741ots.6
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 09:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PtUP2qt2tw1xWTe98TaAvvDgnRL+235xFSlS2Ai/70k=;
        b=eBr3geGHQ7uXtex0U1y8jy5zgsQWHmdrKr14xHFo8bEORTwsa96UNrvxGYjDSsBUZG
         gKpQHV7AKXnB07GQS3DYjJKXQZQ55Sqc/asIZt8Del3sRxLwT38+VZb4weR0Q7TvJZrt
         E0xgW4uGjSYlRu/Wu5DJ7gTyGTNW4Wf7taF7osZai+owvJL6S8GObUjNAl6TT6fgQ2eZ
         F0fmxNJYXE9hMKRhfJuC5NKgAM6zkr5M6sn+sD2acKQQCmZ6hRM0PGSaMrwJq5Dc3doa
         fX0JVR1gzy+yUX9hQ+WxNd2wc4aE1AMc7DCUE8fHJWggbF6NOEgQFY35xi82+Po360bH
         AUIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PtUP2qt2tw1xWTe98TaAvvDgnRL+235xFSlS2Ai/70k=;
        b=pXwYI14lMyEAXJmg1DcQ9kcvza4Z921iU5y5n9grmrelflzRl61rnZKskX76BV3Y2D
         QlaR2Xm76SWGcdNbc9tQSxgtFVVmSgXHigbtZnopbxsVd9De/kyVqDGTsQY+6El8b2ds
         8uXnydzfgfrZ+xbUiIFTEP2sjuuG8xXCs05tMMhVPMCpkJinrk/ikv6LKS6esI4NyJC6
         NgMI8uoeO7fWvMh6klYBW/Mg4OmfubG0sSUjAAzVoD0VcfQMEyk9O2GPF40ae2j4UhiA
         BlsE3nnbxflSCHQ8I/sVELcJpMjncbuNdNv5dOYtSy0mEB79g5YBbJqm/ouEIyhV5RQW
         Tz6w==
X-Gm-Message-State: AOAM533ExoKe8FY1LwhbZIrIM4IUlxiEDbG9HYEpk3YjPb+FNaE6jPIr
	tntZCVruY050Y8KQjvvj7ACqNSNoy4s9uePpgGF8XxUfnQs=
X-Google-Smtp-Source: ABdhPJyZguCvI4Wy2UHdsZFhU9hOy8LRBGDXGKGw+8YpNQQg1NIKBXXv8iqUcFT8vraA6VemviuQfwl14WLoOLgrGr8=
X-Received: by 2002:a05:6830:138b:: with SMTP id d11mr14376100otq.235.1636739929084;
 Fri, 12 Nov 2021 09:58:49 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
 <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com> <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
 <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com> <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
 <68dfeaf8-8a74-4902-a939-b9f79640b230@gmail.com>
In-Reply-To: <68dfeaf8-8a74-4902-a939-b9f79640b230@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 12:58:38 -0500
Message-ID: <CAB__hTSmvEquWz1GFsZDf297roNWMTBw-DymFHYxs16pUJOP0Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: YFBG5DZGND3JPRFUXHIDYVN3CH3JXV4W
X-Message-ID-Hash: YFBG5DZGND3JPRFUXHIDYVN3CH3JXV4W
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YFBG5DZGND3JPRFUXHIDYVN3CH3JXV4W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3691123157570211028=="

--===============3691123157570211028==
Content-Type: multipart/alternative; boundary="00000000000010462505d09b364f"

--00000000000010462505d09b364f
Content-Type: text/plain; charset="UTF-8"

>
> Yes, I had included the "hwclock" output in the original email of this
> chain.  It can't find a hw clock.
>
> Ah, sorry.   I missed that.
>
> So, for whatever reason, the DS-1307 driver has been excluded from the
> kernel image, OR there's a hardware problem--check dmesg to see if it
>   makes any comments about the ds-1307 driver being loaded, etc.
>
> But as I indicated, I don't think the DS-1339 RTC chip has a back-up
> battery of any kind.  So, there may have been a conscious decision to remove
>   the driver for it.  I'm still waiting to hear from R&D.
>

I think that my overall issue is related to writing files with bad time
stamps.  I don't know why this can cause the file system check "fsck" to
fail, but when that happens, the /data partition doesn't mount and I don't
know how to recover (short of re-burning the file system).

I can say that if I start with a fresh file system, I can boot multiple
times successfully if the eth0 is connected one-to-one to my host  and is
unable to acquire a network time.  On the other hand, if I connect eth0 to
our network such that it gets a network time, the network time is preserved
on subsequent boots, even if I have no network cable connected on the
subsequent boots such that it acquires no network time.  But, in this case
I seem to somehow run into the same corruption related to not being able to
mount the /data partition at bootup (which I am unable to clear short of a
file system re-write).

So, for now, I can use the system as long as I don't hook up to a network
time server.

--00000000000010462505d09b364f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div><blockquote type=3D"cite"><div dir=3D"ltr">Yes, I h=
ad included the &quot;hwclock&quot; output in the
        original email of this chain.=C2=A0 It can&#39;t find a hw clock.</=
div>
    </blockquote>
    Ah, sorry.=C2=A0=C2=A0 I missed that.<br>
    <br>
    So, for whatever reason, the DS-1307 driver has been excluded from
    the kernel image, OR there&#39;s a hardware problem--check dmesg to see
    if it<br>
    =C2=A0 makes any comments about the ds-1307 driver being loaded, etc.<b=
r>
    <br>
    But as I indicated, I don&#39;t think the DS-1339 RTC chip has a back-u=
p
    battery of any kind.=C2=A0 So, there may have been a conscious decision
    to remove<br>
    =C2=A0 the driver for it.=C2=A0 I&#39;m still waiting to hear from R&am=
p;D.<br></div></blockquote><div>=C2=A0</div><div>I think that my overall is=
sue is related to writing files with bad time stamps.=C2=A0 I don&#39;t kno=
w why this can cause the file system check &quot;fsck&quot; to fail, but wh=
en that happens, the /data partition doesn&#39;t mount and I don&#39;t know=
 how to recover (short of re-burning the file system).</div><div><br></div>=
<div>I can say that if I start with a fresh file system, I can boot multipl=
e times successfully if the eth0 is connected one-to-one to my host=C2=A0 a=
nd is unable to acquire a network time.=C2=A0 On the other hand, if I conne=
ct eth0 to our network such that it gets a network time, the network time i=
s preserved on subsequent boots, even if I have no network cable connected =
on the subsequent boots such that it acquires no network time.=C2=A0 But, i=
n this case I seem to somehow run into the same corruption related to not b=
eing able to mount the /data partition at bootup (which I am unable to clea=
r short of a file system re-write).</div><div><br></div><div>So, for now, I=
 can use the system as long as I don&#39;t hook up to a network time server=
.</div><div><br></div></div></div>

--00000000000010462505d09b364f--

--===============3691123157570211028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3691123157570211028==--
