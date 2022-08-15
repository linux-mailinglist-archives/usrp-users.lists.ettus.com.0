Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1EA5930FF
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 16:48:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33F94380E36
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 10:48:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660574926; bh=yw8whzZ5h93FGzLuLB2KuGOxeKCIR17kBpqjW2hLpq8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=q7QWE4HQz1lmhCdKwFb0nJtApokN5b8dIWY37hzKtmrsJh8B7Q3gGcssrvmJReKRX
	 asU6fknLTrcyx4yijRuZBK9MRfCuh0Cd0OyZKFRpdkOrhHDimnqkVxB/Sj5z3h63j/
	 CgSCvw+RGhdEJ9e6ypD6ZQy5jP8XPSTC/8OVU+tfMAOixXQmkcItRy/ct+Pwh4jmcP
	 GjT7Zg1Kt/FoROAcSBM4PE9bgZdC6yhgn4Z+qSCigXAUW5Qy2SVyTwD+fxrLKC4A3X
	 T3QjwOqGPleJdUDCbPda91IKjo011KrYjGCEASid7T+UNtfgeVj3PKDxE1/8LDMUIO
	 GDQNFfQJQEUgA==
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id A427B38385D
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 10:47:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pB8XXGGV";
	dkim-atps=neutral
Received: by mail-io1-f46.google.com with SMTP id x64so5992662iof.1
        for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 07:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=56VfHJz1cavJt7HU92QdFTd+G/C/nOq5F6Ozgw8DjxI=;
        b=pB8XXGGVmdKyXJH2WhFxxu3qeUcFqy/gnsrzujNfmhaxzlPPosb69qmiE+dnwHhpyv
         k4Arf4XUMvmyq24QAtuXW/hO3lvEBkZ/qM9qR98QkzSVY7pEn5+hh9DSelez9KyCkIkr
         XFcGJxy2UqpeE9B3Xa1AZw910TyYAZLSaL6S2k7KxcxxX89so/J5m1T3FxesjIKbyLMo
         1IO6EQHI8t5BXOhNvCzEWuH46Fm8hpqjt2hbYC+kh/j9u1p7j5BVahXoCa88n5gs8nf9
         dDvMKAfDVym6qv+tENu1fZZf7o4tmB3Sj31yiolnYrZ8jCWHcoXfzSc2mPlPvF0YTp57
         XaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=56VfHJz1cavJt7HU92QdFTd+G/C/nOq5F6Ozgw8DjxI=;
        b=CDDejT9qUjaqTPhqA/rTDwhP6m3eNx3hJEQNt9mHfmYEiG8QpVbi4WbM6NaRV64enP
         S2y1+oE52E2ZYGuV9+4p0ihoPJrRIJGb47UtsIhJMD1MBz9MEcsg0nljNPPESGzU4WcN
         SCGMURni8k6zaOtZxpMN0nLSkDy3nlfvj18gBAKYd+ZbZB+lJig1pNtofHLBWy2l2SeL
         kD5DKVVQZdbOE3BXjcwVQbh/bjcbYkc9QU093q9a+jhq908B6P0RGJ2aNLRZJFpWTozs
         g9tAo2v78TtVgDrawLuQsM+tlPA+Ai9Io3yr+y2UBcw+Zq0hfRIS605ynv+1Uxp8mo+5
         XOxw==
X-Gm-Message-State: ACgBeo0hdHmw63fepRn88BafNHnE4kL9MSqgOhhgNfUXvGHIusUsAc+9
	lIdZCqXr22SpuxnR55Xw/nDJfeWMmiDBhszddSMfri7m
X-Google-Smtp-Source: AA6agR4gmWXHLc39+r6ERAoOMEBAjp5+fsohHSWHME3V53Wkih95l7oVSrLwcZ5rfUj9uyGOOo6/byG6XMkH4PJQbIU=
X-Received: by 2002:a05:6638:3282:b0:33f:6ed0:4c83 with SMTP id
 f2-20020a056638328200b0033f6ed04c83mr7789143jav.96.1660574834867; Mon, 15 Aug
 2022 07:47:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
 <484f31e0-c18b-17a4-fab3-eb86a450ed65@gmail.com>
In-Reply-To: <484f31e0-c18b-17a4-fab3-eb86a450ed65@gmail.com>
From: Dave NotTelling <dmp250net@gmail.com>
Date: Mon, 15 Aug 2022 10:47:03 -0400
Message-ID: <CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UPPYJOI6E243EGFVAFLKQIGVFHI4CX46
X-Message-ID-Hash: UPPYJOI6E243EGFVAFLKQIGVFHI4CX46
X-MailFrom: dmp250net@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 won't boot without reflash
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UPPYJOI6E243EGFVAFLKQIGVFHI4CX46/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3814372612002778045=="

--===============3814372612002778045==
Content-Type: multipart/alternative; boundary="00000000000027c4be05e648b5e9"

--00000000000027c4be05e648b5e9
Content-Type: text/plain; charset="UTF-8"

Marcus,

     It was crazy cheap (~$650), and reflashing on power up isn't hard :)
It's a fun toy for learning about RFNoC and just FPGA fun in general.  Came
with two 40 MHz WBX boards.  Is there a part number for the flash?  Is it
something that can be popped off with a hot air gun?  I think it did come
up on its own once.  Curious if it just needs to be reflowed.

     It does seem to have a working EEPROM since I can change the IP
address.

     I also noticed that both WBX boards have nasty spur looking tones for
several hundred MHz in the lower range of the WBX.  Is it possible that
there are issues on the motherboard that could cause those issues?  I have
a proper power supply arriving today to replace the ATX computer supply I
have been testing with (12 Volt)

Thanks!

-Dave

On Mon, Aug 15, 2022 at 10:41 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-08-15 10:34, Dave NotTelling wrote:
> > Apologies if this is a repost.  I don't think my original message made
> > it to the list for some reason.
> >
> > I recently got my hands on a used x310.  It seems to work well, but
> > for some reason will not boot on its own.  Vivado hardware manager
> > shows the device as not being programmed, and the network interfaces
> > don't come up (no lights on the SFPs). If I reflash the device with
> > Vivado it will come up and work as expected.  Is there a way to test
> > the flash chip to see if it's alive?  Running uhd_image_loader seems
> > to work fine, but the device still will not come up automatically.
> >
> > Thanks!
> >
> > -Dave
> >
> >
> This does sound like a FLASH issue.  I hope you didn't pay that much for
> it...
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000027c4be05e648b5e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus,</div><div><br></div><div>=C2=A0=C2=A0=C2=A0=
=C2=A0 It was crazy cheap (~$650), and reflashing on power up isn&#39;t har=
d :)=C2=A0 It&#39;s a fun toy for learning about RFNoC and just FPGA fun in=
 general.=C2=A0 Came with two 40 MHz WBX boards.=C2=A0 Is there a part numb=
er for the flash?=C2=A0 Is it something that can be popped off with a hot a=
ir gun?=C2=A0 I think it did come up on its own once.=C2=A0 Curious if it j=
ust needs to be reflowed.</div><div><br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=
 It does seem to have a working EEPROM since I can change the IP address.</=
div><div><br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0 I also noticed that both W=
BX boards have nasty spur looking tones for several hundred MHz in the lowe=
r range of the WBX.=C2=A0 Is it possible that there are issues on the mothe=
rboard that could cause those issues?=C2=A0 I have a proper power supply ar=
riving today to replace the ATX computer supply I have been testing with (1=
2 Volt)<br></div><div><br></div><div>Thanks!</div><div><br></div><div>-Dave=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Aug 15, 2022 at 10:41 AM Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-08-15 10:34, =
Dave NotTelling wrote:<br>
&gt; Apologies if this is a repost.=C2=A0 I don&#39;t think my original mes=
sage made <br>
&gt; it to the list for some reason.<br>
&gt;<br>
&gt; I recently got my hands on a used x310.=C2=A0 It seems to work well, b=
ut <br>
&gt; for some reason will not boot on its own.=C2=A0 Vivado hardware manage=
r <br>
&gt; shows the device as not being programmed, and the network interfaces <=
br>
&gt; don&#39;t come up (no lights on the SFPs). If I reflash the device wit=
h <br>
&gt; Vivado it will come up and work as expected.=C2=A0 Is there a way to t=
est <br>
&gt; the flash chip to see if it&#39;s alive?=C2=A0 Running uhd_image_loade=
r seems <br>
&gt; to work fine, but the device still will not come up automatically.<br>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
&gt; -Dave<br>
&gt;<br>
&gt;<br>
This does sound like a FLASH issue.=C2=A0 I hope you didn&#39;t pay that mu=
ch for <br>
it...<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000027c4be05e648b5e9--

--===============3814372612002778045==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3814372612002778045==--
