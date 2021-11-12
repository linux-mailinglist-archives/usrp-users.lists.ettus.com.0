Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 189F644EC63
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 19:04:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 561213840DA
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 13:04:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="okSgWmc7";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id D28DC3840C1
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 13:03:27 -0500 (EST)
Received: by mail-qk1-f176.google.com with SMTP id t83so7528222qke.8
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 10:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=G8lQc08mzeUiSm4B+TioHlIo7gj35sR/X6zTkKbHXr4=;
        b=okSgWmc78QMCFJ2oKWICaggj+vqzPwSNL0OoYd0Q+SbmxqQmSjD4kfV0q8n1jhMr86
         7+jFprSXOxBheXNh0iAtFP7D2bwtGoQG9987FyaFrbCS0Uv2EGV6Gky/TK6jQH+JXFJQ
         f/fIGwcDRcDD+jO8MpKPRw+VaJtgHUtqJe9l215ufuFfee/GZ6VL6LpqC63pM3StXmjz
         p6qwtQdSkJsSvkjlsQHcVIVR0splxH2+W8GJunq+nBEwq9YydvLHogYalHbvuAVj+Bho
         fLRIxEnUfucFxSPOL0wHu5QOuVi+vFiwBSjNahkMLCzRYfVsX31JCdSklqQzkrOIkyYm
         SIZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=G8lQc08mzeUiSm4B+TioHlIo7gj35sR/X6zTkKbHXr4=;
        b=RMXB09h5QObykt1sX62lXMmrBeRzxORfBJhc0G6gwQkV2igZoU9QFhxST2hEYL767D
         BdsaMfpHPP54spBsS/pZBK2w56c7srQ8ZanEpe7eIY/+OsA2ozZgLJ3sHFFZ+rQM7InO
         WgSwwCwOuJDUPuGu3FmTNC9b/g9//cTpmUzCAxO6ocO3yn5KesXTNQQy67sFjQKPA+dY
         puJMDrrhCsyD97tf5UXYKGrg8p5RdiFaWG2siPA6ZzTJ95/5jMU7AYYU2IjojD90hCyh
         SgQH6bcaMFVprergIbt7f6l4EbiAeOgbMV935tNwt3/kTFljFv7WG6MfDoi7XMnqh7Wd
         VQwA==
X-Gm-Message-State: AOAM53036tWfDdnzqXYGvRJh5mEGwD2xDqVoH17FOZDCxJCHKHoznWMW
	bOK/w8WCppIra2Qav+d7Z/wqIwy5CR4=
X-Google-Smtp-Source: ABdhPJybP1galfkWX75STJ9L8N/Olpz+QY3q27vwc4Bj9nn31HX8wBW0fiy67N6MpjCycZ/jknYNlQ==
X-Received: by 2002:a37:b306:: with SMTP id c6mr14200409qkf.133.1636740207228;
        Fri, 12 Nov 2021 10:03:27 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id r3sm3526599qtw.44.2021.11.12.10.03.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 10:03:26 -0800 (PST)
Message-ID: <09b6ddf3-81ca-b6fc-491c-66b7bfaf83d7@gmail.com>
Date: Fri, 12 Nov 2021 13:03:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
 <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com>
 <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
 <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com>
 <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
 <68dfeaf8-8a74-4902-a939-b9f79640b230@gmail.com>
 <CAB__hTSmvEquWz1GFsZDf297roNWMTBw-DymFHYxs16pUJOP0Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTSmvEquWz1GFsZDf297roNWMTBw-DymFHYxs16pUJOP0Q@mail.gmail.com>
Message-ID-Hash: UO6SNJWLTR4CUFTBGTEWW4WXCALKKAQW
X-Message-ID-Hash: UO6SNJWLTR4CUFTBGTEWW4WXCALKKAQW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UO6SNJWLTR4CUFTBGTEWW4WXCALKKAQW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5079841015972925451=="

This is a multi-part message in MIME format.
--===============5079841015972925451==
Content-Type: multipart/alternative;
 boundary="------------BwF5eOU40Rv6Di1jEFDzczML"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BwF5eOU40Rv6Di1jEFDzczML
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-12 12:58, Rob Kossler wrote:
>
>>     Yes, I had included the "hwclock" output in the original email of
>>     this chain.=C2=A0 It can't find a hw clock.
>     Ah, sorry.=C2=A0=C2=A0 I missed that.
>
>     So, for whatever reason, the DS-1307 driver has been excluded from
>     the kernel image, OR there's a hardware problem--check dmesg to
>     see if it
>     =C2=A0 makes any comments about the ds-1307 driver being loaded, et=
c.
>
>     But as I indicated, I don't think the DS-1339 RTC chip has a
>     back-up battery of any kind.=C2=A0 So, there may have been a consci=
ous
>     decision to remove
>     =C2=A0 the driver for it.=C2=A0 I'm still waiting to hear from R&D.
>
> I think that my overall issue is related to writing files with bad=20
> time stamps.=C2=A0 I don't know why this can cause the file system chec=
k=20
> "fsck" to fail, but when that happens, the /data partition doesn't=20
> mount and I don't know how to recover (short of re-burning the file=20
> system).
>
> I can say that if I start with a fresh file system, I can boot=20
> multiple times successfully if the eth0 is connected one-to-one to my=20
> host=C2=A0 and is unable to acquire a network time.=C2=A0 On the other =
hand, if=20
> I connect eth0 to our network such that it gets a network time, the=20
> network time is preserved on subsequent boots, even if I have no=20
> network cable connected on the subsequent boots such that it acquires=20
> no network time.=C2=A0 But, in this case I seem to somehow run into the=
=20
> same corruption related to not being able to mount the /data partition=20
> at bootup (which I am unable to clear short of a file system re-write).
>
> So, for now, I can use the system as long as I don't hook up to a=20
> network time server.
>
In terms of the booting issue, I wonder if the "eject" on your host=20
isn't actually clearing the "filesystem is dirty" flag.=C2=A0 That would =
be=20
unusual, but not out of the question.
 =C2=A0 If you instead "sudo umount /dev/sdbXX" and THEN pop the sd card,=
=20
does the behavior change?

I'm at a loss to explain how NTPD can apparently find and set the RTC=20
clock when "hwclock" cannot.


--------------BwF5eOU40Rv6Di1jEFDzczML
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-12 12:58, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSmvEquWz1GFsZDf297roNWMTBw-DymFHYxs16pUJOP0Q@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">Yes, I had included the "hwclock" output
                  in the original email of this chain.=C2=A0 It can't fin=
d a
                  hw clock.</div>
              </blockquote>
              Ah, sorry.=C2=A0=C2=A0 I missed that.<br>
              <br>
              So, for whatever reason, the DS-1307 driver has been
              excluded from the kernel image, OR there's a hardware
              problem--check dmesg to see if it<br>
              =C2=A0 makes any comments about the ds-1307 driver being
              loaded, etc.<br>
              <br>
              But as I indicated, I don't think the DS-1339 RTC chip has
              a back-up battery of any kind.=C2=A0 So, there may have bee=
n a
              conscious decision to remove<br>
              =C2=A0 the driver for it.=C2=A0 I'm still waiting to hear f=
rom
              R&amp;D.<br>
            </div>
          </blockquote>
          <div>=C2=A0</div>
          <div>I think that my overall issue is related to writing files
            with bad time stamps.=C2=A0 I don't know why this can cause t=
he
            file system check "fsck" to fail, but when that happens, the
            /data partition doesn't mount and I don't know how to
            recover (short of re-burning the file system).</div>
          <div><br>
          </div>
          <div>I can say that if I start with a fresh file system, I can
            boot multiple times successfully if the eth0 is connected
            one-to-one to my host=C2=A0 and is unable to acquire a networ=
k
            time.=C2=A0 On the other hand, if I connect eth0 to our netwo=
rk
            such that it gets a network time, the network time is
            preserved on subsequent boots, even if I have no network
            cable connected on the subsequent boots such that it
            acquires no network time.=C2=A0 But, in this case I seem to
            somehow run into the same corruption related to not being
            able to mount the /data partition at bootup (which I am
            unable to clear short of a file system re-write).</div>
          <div><br>
          </div>
          <div>So, for now, I can use the system as long as I don't hook
            up to a network time server.</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    In terms of the booting issue, I wonder if the "eject" on your host
    isn't actually clearing the "filesystem is dirty" flag.=C2=A0 That wo=
uld
    be unusual, but not out of the question.<br>
    =C2=A0 If you instead "sudo umount /dev/sdbXX" and THEN pop the sd ca=
rd,
    does the behavior change?<br>
    <br>
    I'm at a loss to explain how NTPD can apparently find and set the
    RTC clock when "hwclock" cannot.=C2=A0 <br>
    <br>
    <br>
  </body>
</html>
--------------BwF5eOU40Rv6Di1jEFDzczML--

--===============5079841015972925451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5079841015972925451==--
