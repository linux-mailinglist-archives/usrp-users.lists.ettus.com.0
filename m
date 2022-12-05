Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8513642A6A
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 15:32:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E579383C78
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 09:32:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670250756; bh=jZCY5Qj7gnGmlYgy6gkaysPAi60snRfMYv3f84WJsgU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PKAE+/sr5yjwdt2hfnuJkpD1G9cifpUxl6u14hf90hqh84zzEpKG9fFFAR7Qm8G5g
	 ALvK//sEDcIrJlSeHiKi3FE6lDVli4xC3DFNqqpuyaDcu9KmeRNIDlHa/TN+1MmSQx
	 EWwRj5nd2AeHAMtvJK3gn3HxmvKEry9rtga8jB11FbFba0L/sTeyYpbq0xxPCp64/J
	 6JdbFx3b5jCSp2BRKEI37VvWBh9yr5XC5qEzhXxSWIoX/rWF/vW9H3uwU//8o6iJkM
	 cKVW6+x1feV6kWp1WxZ2BVsO0OyQZOQmAFgF+EdejHoHnicCFspkp82RSdb3hv0Fdo
	 AkcDrORj46Mow==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 36CB0380FEA
	for <usrp-users@lists.ettus.com>; Mon,  5 Dec 2022 09:31:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VkKpMb0b";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id fc4so21277569ejc.12
        for <usrp-users@lists.ettus.com>; Mon, 05 Dec 2022 06:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VrI0RjsigNi49Yzs09DCbYFb8cXQgtFQzNONVxejENU=;
        b=VkKpMb0bXdEJRFHwyHVRF4eVtPirfMGCJpdXRSDPQQ2gp7pD15Sy64ujOlQscebbtJ
         eS8jya00t0qUqzeTDnnuqm5jok7/GRhgxiP1dr91QyYimKceG5cemdGToNb6e/hOR+CB
         hbH79GKDFV50HiKZ1zg/Unt89MUt8iZ+d1qejMRqyRjZINuqETxFmJ5o8D1gsv8LzJHF
         oskJ46TM1cSQGYEetF8OTJTf0/b5FS1cAXSZadAcjMndDNPMye9KkItCY4MoKOnVvTM3
         87/PM2Cb1Yn5ZXmdnPDpAahjEaE3ut37IuFM3Yy9GjIfd4RDNCxiKIJL4XftDCQgWzpD
         9lZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VrI0RjsigNi49Yzs09DCbYFb8cXQgtFQzNONVxejENU=;
        b=JFvfl39tqpQ16LxslhkLK2S62hJ5Vtx5YIYoNNqa13zD0SlTSr6Amu9h9fB7aRy0hv
         S1dV5tv3LeHnMFI7WnTJcjC9Ocp/cZj6eN+IxTrGiekCEGoD1uVHTLxvKdymKXDG6sqS
         lkWmaV9mpbH1gUoS/cp/4IWmkX3oCepkV93RfMKLHj/K8CHxUBD26dR1g92NL3/YDEtM
         KrloYsz4MLXNGjr0XcQeOwvqte3N2QNSaREpS/Yah1yRU5mkIxEWJFC2R2BnbovX3zJS
         VwIleOfcAIKC3M7AmMLCxUY1vOattj0wlI9OaO6y5BAQF5sGZDUe8GHrTn/E9n9cGyBq
         hSWQ==
X-Gm-Message-State: ANoB5pkhPN+2r1xL4yNwZ5BypAA22hg9nt0A+tT5SDoU3wkc84wRxQps
	JGv/wdjtLZ3HQNNcC4G7rR0hQW3ZzciUbM0g0pHQ2CGdfg==
X-Google-Smtp-Source: AA0mqf6DJiL7v0e6jmyXOcwssJ4PH0TJ1pIMt41ysDyZeSTFYAm3I/gViYdnD9SKgbPPgQyuPT9um5kxxdKmsPcFpwI=
X-Received: by 2002:a17:906:fd55:b0:7c0:ad81:cad3 with SMTP id
 wi21-20020a170906fd5500b007c0ad81cad3mr16329746ejb.218.1670250668096; Mon, 05
 Dec 2022 06:31:08 -0800 (PST)
MIME-Version: 1.0
From: Roberto Rigamonti <roberto.rigamonti@gmail.com>
Date: Mon, 5 Dec 2022 15:30:57 +0100
Message-ID: <CANV7_JNctBkVjQX2gaQYnwbD2OxdWyCta14=d_75Rah92mZkxA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 3LJWBCFLVVESISIPLFXRK5I54CZFNUJN
X-Message-ID-Hash: 3LJWBCFLVVESISIPLFXRK5I54CZFNUJN
X-MailFrom: roberto.rigamonti@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Single multi-usrp or multiple, synchronised usrp -- which is best ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3LJWBCFLVVESISIPLFXRK5I54CZFNUJN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0788170203706824859=="

--===============0788170203706824859==
Content-Type: multipart/alternative; boundary="000000000000c202e805ef15898a"

--000000000000c202e805ef15898a
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a mix of N320/N321 boards, and I would like to make synchronised
acquisitions using White Rabbit.
I have already achieved that using a custom software that creates a single
multi-usrp that encompasses all my boards (as it is suggested in
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD),
but I've just stumbled upon Ettus Multichannel RF Reference Architecture (
https://kb.ettus.com/Multichannel_RF_Reference_Architecture) where
individual boards have their acquisitions made by separate threads.

I was wondering which of the two approaches is best --- I would have bet on
the former, since it leaves the burden of dealing with multiple boards to
UHD (more elegant, less error-prone), but the other one is THE reference
architecture...

Thanks in advance for your help! :)

Best,
Rob

--000000000000c202e805ef15898a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have a mix of N320/=
N321 boards, and I would like to make synchronised acquisitions using White=
 Rabbit. <br></div><div>I have already achieved that using a custom softwar=
e that creates a single multi-usrp that encompasses all my boards (as it is=
 suggested in <a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Usi=
ng_Timed_Commands_in_UHD">https://kb.ettus.com/Synchronizing_USRP_Events_Us=
ing_Timed_Commands_in_UHD</a>), but I&#39;ve just stumbled upon Ettus Multi=
channel RF Reference Architecture (<a href=3D"https://kb.ettus.com/Multicha=
nnel_RF_Reference_Architecture">https://kb.ettus.com/Multichannel_RF_Refere=
nce_Architecture</a>) where individual boards have their acquisitions made =
by separate threads.</div><div><br></div><div>I was wondering which of the =
two approaches is best --- I would have bet on the former, since it leaves =
the burden of dealing with multiple boards to UHD (more elegant, less error=
-prone), but the other one is THE reference architecture...</div><div><br><=
/div><div>Thanks in advance for your help! :)</div><div><br></div><div>Best=
,</div><div>Rob<br></div></div>

--000000000000c202e805ef15898a--

--===============0788170203706824859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0788170203706824859==--
