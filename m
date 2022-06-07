Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5F554018B
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 16:37:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AB98383E9F
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 10:37:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654612643; bh=pFubKK4PyxGb63jCswB1Se2VvM2kvJT67TrmkE21bqI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CWoOmFuwjG2ba5hHl5zlc5DQfGH6QluzCyhlowWba+oKqTQ3Ryi0BSDZ2nrFvZQxI
	 TL+N4jr6eyq+UhyxTd9XBu+f4b1CEyI2g8hM1Ll/taHftIiX7AZ6VC5DxFew/qn7Nd
	 5xMJl+9qVVlnNQYS1ZwUgljrVOVHlJq7JbGe20Z9rX4yi0Z/QBqgU1/NDsv5/+mbLF
	 3yaGtWVbBQ/Mc6bAvLOlo5v5iJR4PYPlI//ZtJfPXSO9t/CDsROOV5JxPZ3apVS1vD
	 CeLXTJ+9OYPeFgRtTYq8Zuiy6aJQorwyJpIl2aUWYfBA+BaQfl3a4Rtko+62XA8WNW
	 PR05h9vqNCtvw==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 86EA7383CD2
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 10:36:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="kSItpgTn";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-3135519f95fso7527847b3.6
        for <usrp-users@lists.ettus.com>; Tue, 07 Jun 2022 07:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e5pD2/39Jxw3rhvN/Gb4m0Z2al1eb4EwKs3P00i6oKU=;
        b=kSItpgTnZz1E/85nW3ibqlFgQ9dBohsUl6HhFREOX5x1DErlSdhbY8kYgv6Nyig0m9
         6rRCQftuQJam9PVxHgEJZUM8PNaPuGkwsMAje0fHIEnGXlbBAE4lNClGBaDFH2RA24W0
         38Fru4rfqiMIa4bL3EtLH5v9aQy402jo7NABBD1WEBKWUCDmWwryBMMekkqhwBEFjZzi
         V4PJqPhW5F5FQrM4c/5sb2gfdp51kxNsboloAh4h33WSJ7Qx7SAxlhvHfpxjMLpeCThT
         +p4oWU8Qa97fs9PciebwKSXv5dh7QpRCVHAe/Tyovx9VhcrODuBY7f7wK8qfdlgdOxak
         K8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e5pD2/39Jxw3rhvN/Gb4m0Z2al1eb4EwKs3P00i6oKU=;
        b=aXLfl1Gjp39JP492HT/1Ihow7kczENF/Ri8BDlEI7YUrtWzH+CrZ8/zMLfDyGciRSM
         mA32fDdBERPFsedSKljnRI5ZL1ZGHrN5Acx239Ea0r/7VKY3KNKLw85bVmP3kkM3P5JZ
         xGLUViZGhZsQztjjWlv+CjeZ2+vZmMmSxtx/YrYB3KJi3ffdsMMjw2QZGAQMHnJgi33p
         r7TKZ23ydGW7Mul8+tzHSi4255Kg81JqvcM861nTQxxuNjjNIPI6EbFl8leo4+4yPTTe
         iP8V0NE6VMF2pDJIzvjLAffKJKsSVmVzekFdrxTLrlpuL/ZLJF9/FLJ7QCxhck91sngA
         DB7g==
X-Gm-Message-State: AOAM531DhmRl+eHRNDuLHZsiki8LBAUlahvUicqUBOCXcZOjftQ629lt
	qxbM4tOWI/V4vaZwtFFcXKm0jsRmkoNq4alyVrsmMjPPZPwdg/VO
X-Google-Smtp-Source: ABdhPJz2k7VAI8BF6tFP1rCQNCHR75SjmSRml5oY/+eY1q5mGb9slsWUHVJXa5MvgJZACtU//1zvDlV2FiDlcWTk20s=
X-Received: by 2002:a81:4d08:0:b0:313:40b7:29fd with SMTP id
 a8-20020a814d08000000b0031340b729fdmr3079185ywb.272.1654612582755; Tue, 07
 Jun 2022 07:36:22 -0700 (PDT)
MIME-Version: 1.0
References: <AKHHo73J6OR1dovVTuxKMsyGMsksabQ4mUJnvydI@lists.ettus.com>
In-Reply-To: <AKHHo73J6OR1dovVTuxKMsyGMsksabQ4mUJnvydI@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 7 Jun 2022 09:36:06 -0500
Message-ID: <CAFche=ijVYM_Y_SoeRkTpR9VpREyzX0CWUKtS+-trfvV1w4xpQ@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: KBIQETCX6NCOCNMZIG74THFGEIRWRYVS
X-Message-ID-Hash: KBIQETCX6NCOCNMZIG74THFGEIRWRYVS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KBIQETCX6NCOCNMZIG74THFGEIRWRYVS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3712028004176308439=="

--===============3712028004176308439==
Content-Type: multipart/alternative; boundary="0000000000003c8abc05e0dc83ba"

--0000000000003c8abc05e0dc83ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 I'm not very familiar with how those tune commands get translated into
register transactions, but one thought I had is that it may also be issuing
timed commands to the radio. If so, you also might need to make the radio's
control FIFO deeper by updating the "512" number to the depth you need. It
should be a power of 2, so I would try 1024 or 2048, etc. It needs to be
updated in two places to the same value:

https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68=
d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L14=
8

https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68=
d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L19=
5

Wade

On Tue, Jun 7, 2022 at 9:11 AM <ri28856@mit.edu> wrote:

> Rob Kossler wrote:
>
> Would it make sense to separate into 2 threads where one thread sends the
> tuning commands and the other sends the Tx samples? Rob
>
> Yes, and that=E2=80=99s what I do on the real system. The code snippet I =
posted
> was a test harness to see if my FPGA changes increased the queue size of
> the DDS/DUC.
>
> The documentation suggests by default the DDS/DUC only support 5 timed
> commands in flight at a time. I verified this by scheduling 6 commands we=
ll
> into the future, and observing that I get late errors, but run error free
> when only issue 5 commands. I would have expected my FPGA modification to
> change the observed behavior to 10 commands run fine, 11 cause errors.
>
> The reason I need a deeper DDS/DUC timed command buffer is because I want
> to retune every ~200 us. There does not appear to be a mechanism for UHD
> automatically buffering timed commands beyond the 5 that fit into the FPG=
A
> on the host, meaning my software must keep track of the number of command=
s
> in flight. Given network latency and scheduling uncertainty (I=E2=80=99m =
not
> running on an RTOS), I have not been able to issue commands that fast. If=
 I
> could increase the buffer size, I could instead issue batches of commands=
.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003c8abc05e0dc83ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div dir=3D"ltr"><div>I&#39;m not very familiar with how those tune command=
s get translated into register transactions, but one thought I had is that =
it may also be issuing timed commands to the radio. If so, you also might n=
eed to make the radio&#39;s control FIFO deeper by updating the &quot;512&q=
uot; number to the depth you need. It should be a power of 2, so I would tr=
y 1024 or 2048, etc. It needs to be updated in two places to the same value=
:<br></div><div><br></div><div><a href=3D"https://github.com/EttusResearch/=
uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/bloc=
ks/rfnoc_block_radio/noc_shell_radio.v#L148">https://github.com/EttusResear=
ch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/b=
locks/rfnoc_block_radio/noc_shell_radio.v#L148</a></div><div><br></div><div=
><a href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec42=
03a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell=
_radio.v#L195">https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229e=
c4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_sh=
ell_radio.v#L195</a></div><div><br></div><div>Wade<br></div></div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Jun 7, 2022 at 9:11 AM &lt;<a href=3D"mailto:ri28856@mit.edu">ri288=
56@mit.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Rob Kossler wrote:</p><blockquote><p>Would it make sense to s=
eparate into 2 threads where one thread sends the
tuning commands and the other sends the Tx samples?
Rob</p></blockquote><p>Yes, and that=E2=80=99s what I do on the real system=
. The code snippet I posted was a test harness to see if my FPGA changes in=
creased the queue size of the DDS/DUC. </p><p>The documentation suggests by=
 default the DDS/DUC only support 5 timed commands in flight at a time. I v=
erified this by scheduling 6 commands well into the future, and observing t=
hat I get late errors, but run error free when only issue 5 commands. I wou=
ld have expected my FPGA modification to change the observed behavior to 10=
 commands run fine, 11 cause errors. </p><p>The reason I need a deeper DDS/=
DUC timed command buffer is because I want to retune every ~200 us. There d=
oes not appear to be a mechanism for UHD automatically buffering timed comm=
ands beyond the 5 that fit into the FPGA on the host, meaning my software m=
ust keep track of the number of commands in flight. Given network latency a=
nd scheduling uncertainty (I=E2=80=99m not running on an RTOS), I have not =
been able to issue commands that fast. If I could increase the buffer size,=
 I could instead issue batches of commands.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003c8abc05e0dc83ba--

--===============3712028004176308439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3712028004176308439==--
