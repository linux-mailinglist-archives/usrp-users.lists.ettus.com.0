Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 399FA44EBEB
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 18:20:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 418A3384524
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 12:20:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="C5WSBCdQ";
	dkim-atps=neutral
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by mm2.emwd.com (Postfix) with ESMTPS id BD0813841A2
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 12:19:41 -0500 (EST)
Received: by mail-ot1-f49.google.com with SMTP id x19-20020a9d7053000000b0055c8b39420bso14868642otj.1
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 09:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8AWk550jfCwOWTrYvBP+O/GGQwz491BJNYxNjv26pFM=;
        b=C5WSBCdQfLddPbNmEKgiBKz4uvS9rcRJx30ML3f0xXmYl1OeW+QlxPB92e3Bg0BT4+
         tcKiSYRQ51exWzrunVjo9Okg9RTcf+mUmxEw17tvpXWq3B5oekg/GfzDsqNBpyXPaYEY
         +Vs96q5wj6hGo1fR8fuMJxHmGmy/Aj2c7JF98bp1V6hkdQTfRjxnw1tqFz44eeKVUM3u
         CxZkPOMvm1s5V7D0oq314JMGRMya0Ymy6SoqMZX077YSq55W1RhlCOhye9Ad88IkNdJE
         nIScnzWT+vmmh06gD31Gi2ehStpVWD5OU1B7PJiJ0DkXVLBOfs3S0JiVDJqamfUEvWNO
         Vdyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8AWk550jfCwOWTrYvBP+O/GGQwz491BJNYxNjv26pFM=;
        b=FJLtFyBrIpZbGM84MCTTm6jGxAxE5/DYByPPp2Y0EsbL/gRWlN6lakKxT9MRJGGv0L
         1YLeP8ih6JnR5ZBwm7gwHwcLDgfDrnOF60GzNCg8QqrKdHTI4z0H7j4pt7qxtbtwKp7g
         bXier8DwoxnSQfRKOiNR8ijaexi3aEPoAce9qRS3ox5P9wp87mftS6sceix9UUtqGtvX
         TeaXopHAunVi9FRiwpilUybkX1lM36HiWdTnAavmo5ItA4qIcH0BMfuPN0s2iPhyQ8D7
         u/oYk5h2C8YPVUOsg3BTCzta0PGodd7UYK5bF6QZzxSsf75cGaWMuyJaNiLvcPW1rcFJ
         LnuA==
X-Gm-Message-State: AOAM531asNJ9jizVFDa1c0kP7DG/o9S560iqgha2DxIZ3GkNvdsWgb0H
	IrH8ORqjZ8Ycp+Lsjhqbq4+wCQycgyqdtrQ7WVIknA==
X-Google-Smtp-Source: ABdhPJyz6KJ8Sj9u+Fe1COJfkWZ4lulSgTXJi5hlFHyol8T4qQeAcSjtRJw3gyD8I+Okk5f2lA3aUWkCYPDXBi6vbPo=
X-Received: by 2002:a05:6830:138b:: with SMTP id d11mr14175017otq.235.1636737580642;
 Fri, 12 Nov 2021 09:19:40 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
 <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com> <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
 <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com>
In-Reply-To: <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 12:19:29 -0500
Message-ID: <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 64ULBYDMK2RANQN42GKJUS7RGXIUZNEE
X-Message-ID-Hash: 64ULBYDMK2RANQN42GKJUS7RGXIUZNEE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/64ULBYDMK2RANQN42GKJUS7RGXIUZNEE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2634216546344955652=="

--===============2634216546344955652==
Content-Type: multipart/alternative; boundary="0000000000001607c405d09aaa46"

--0000000000001607c405d09aaa46
Content-Type: text/plain; charset="UTF-8"

Yes, I had included the "hwclock" output in the original email of this
chain.  It can't find a hw clock.

On Fri, Nov 12, 2021 at 12:17 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-12 11:54, Rob Kossler wrote:
>
>
>> So, there's a DS1139 RTC chip, which is an garden-variety RTC chip used
>> in designs all over the place.  The linux rtc-1307 kernel driver knows
>> about this chip.
>>
>> HOWEVER, it requires a battery to maintain time, and near as I can tell,
>> the only battery in the E310 universe is with the E312 "UPS" battery.  I
>> don't see any evidence
>>   that there's a separate, small, back-up battery for the RTC in the
>> plain E310.
>>
>
> I wonder how my system comes up Aug 6, 2021?  Could this be the date of
> the file system image?  Perhaps I can modify this.
>
> It was certainly the case in the "days of yore" that the timestamp on the
> root filesystem, in lieu of other inputs, was used as the initial
> time-of-day clock setting.
>
> Also, look at the "hwclock" utility, if there IS a hardware clock in your
> system config, it will allow you to manipulate it.
>
>
>

--0000000000001607c405d09aaa46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I had included the &quot;hwclock&quot; output in the =
original email of this chain.=C2=A0 It can&#39;t find a hw clock.</div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, No=
v 12, 2021 at 12:17 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-12 11:54, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><br>
              So, there&#39;s a DS1139 RTC chip, which is an garden-variety
              RTC chip used in designs all over the place.=C2=A0 The linux
              rtc-1307 kernel driver knows about this chip.<br>
              <br>
              HOWEVER, it requires a battery to maintain time, and near
              as I can tell, the only battery in the E310 universe is
              with the E312 &quot;UPS&quot; battery.=C2=A0 I don&#39;t see =
any evidence<br>
              =C2=A0 that there&#39;s a separate, small, back-up battery fo=
r the
              RTC in the plain E310.<br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>I wonder how my system comes up Aug 6, 2021?=C2=A0 Could thi=
s
            be the date of the file system image?=C2=A0 Perhaps I can modif=
y
            this.=C2=A0</div>
        </div>
      </div>
    </blockquote>
    It was certainly the case in the &quot;days of yore&quot; that the time=
stamp
    on the root filesystem, in lieu of other inputs, was used as the
    initial time-of-day clock setting.<br>
    <br>
    Also, look at the &quot;hwclock&quot; utility, if there IS a hardware c=
lock in
    your system config, it will allow you to manipulate it.=C2=A0 <br>
    <br>
    <br>
  </div>
</blockquote></div>

--0000000000001607c405d09aaa46--

--===============2634216546344955652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2634216546344955652==--
