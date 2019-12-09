Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FF4117784
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 21:36:04 +0100 (CET)
Received: from [::1] (port=35718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iePlC-0007aq-DH; Mon, 09 Dec 2019 15:36:02 -0500
Received: from mout.gmx.net ([212.227.17.20]:44955)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1iePl9-0007XK-Ha
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 15:35:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575923718;
 bh=qwucMj6/IiDjNUMcHwY+nCVw/RU2eRBKo1rC5MdumRQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KFoBj9EiaduI3/TpyLk6BEL2pn4/r0+mybrMpgpV20h76acMhf9yxk+oo9FqR/9aP
 CJJpOwTBekSI99wRQMD92ytp9CN60OWilV91/jSi564ivSjtsJA36y4ndfHwhI4hSZ
 gXWMKSah3faDM26fav6TDLYpW3NspMslsncnn5P8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap48.server.lan [172.19.172.118]) (via HTTP); Mon, 9 Dec 2019
 21:35:18 +0100
MIME-Version: 1.0
Message-ID: <trinity-fca4d966-0044-494d-9d62-259818a05f79-1575923718171@3c-app-gmx-bap48>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Mon, 9 Dec 2019 21:35:18 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5DEEAC89.60403@gmail.com>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
 <5DEEA426.1020108@gmail.com>
 <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
 <5DEEAC89.60403@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:37xxWxy1uGhQTxJrYsGWHSm6SKmcEwCLrIO0ufkK1wDxfADofh594CTKrfgKz86Y8IDU0
 tcA4tlD/QqzXWuK5bNAtUv2x0M6oAXQasFEzx/n2/za3f+4NKb4RSgum6ybTUoBXrW7X54T6oZ+M
 nxoAELMAtE80uHDzPvkg3AChs821iYUUXYLzmdowMyufNJK2JTNYdJHYf6BCHUJtT4kIEKv0RfpC
 J5DEDi6xcbBC7gAc1L5N1ZMbrxflVgxRdEadPB7j2uZi44I00GOGQe3qDtlGggY75YrJrx0KhBgT
 hY=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6F9VC8o1H54=:tFHOpVpSJhJNbee7wcxlcD
 gXa+oRtO8sBt34UI9HAGb6vx1ba9vKGTTmDLV2DxkoN69GxElbYaWXrAzjbVkRv4ImAHNZnwH
 zv8PGWcQ5RyiGLrxH+m1qrXvAzedea7XoyuM/jKxBREhS8Dh6E8n7cleTs7N3vElsfYFZ+crp
 09w1nRrGu2ejI6ebdU2vt2sCpYdX9GIpMsSpNE2j3JfNE6GLU8C2L+bpFiHJ41qXiOa7PelrS
 MRc0zV5uzQIp3/WKsx5fKPPycOQFPQp277oWMBeGcJR8YHXjzK2I9PsFt6ohi1j5wX33uOU4W
 ouuZOcQ6X82Ou9EdcsmpQIG4HExpNw57gW0fz98iO+Lf+Hc55p6RrrVYM+yCf1EteiesKAc2k
 1BmszXg1W+HuIRH6g1h/u3sGHR7PiNyL7vkItRth2W4ALx4D9BgDqkAp7WZ8i+vfH3WQtSIzD
 0DAFVISLW16NOYtJ9a0Svfsrte7VeAQ4PKtI55Knkv2ye22gQICskQU+kBeJxjQck+hHP43FA
 Jjcck/XuVdp8nNGdojPdS5+H8cPLKnEnb/0bAHaiD2cgUilFh0ubp6ujc4zF+e9j1HdnCnC7v
 b/u9xCV1kXveWnqOZhb9+7/emFxMqyBqVKGI8Ora6/k0Kg68DkaIxze2I71D0GHbEenuC1TNt
 uBGPr4w6b+jHMj6drQQkX7TMerBTrDzySDkbMPq2J/LQ5RA==
Subject: Re: [USRP-users] Phase relation between RX/TX LO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Marcus,

> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
>
> On 12/09/2019 03:11 PM, Lukas Haase wrote:
> >
> > No, I only have one RX channel at the moment.
> > --> One TX @ f and one RX @ 2f.
> > The phase relation between this TX+RX should stay constant/coherent once both TX+RX tune to a different f and back.
> >
> > Let me know if the setup is clear, otherwise I'll try to draw a block diagram/equations or I can also send the GRC screenshots.
> >
> > Thanks,
> > Luke
> >
> >
> You code shows two RX channels:
>
>          now = self.uhd_usrp_sink_0.get_time_now()
>           self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
>           self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))
>
>           self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 0)
>           self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 1)
>           self.uhd_usrp_sink_0.set_center_freq(self.fcenter, 0)
>
>           self.uhd_usrp_source_0.clear_command_time()
>           self.uhd_usrp_sink_0.clear_command_time()

Sorry for the confusion.
You are right, there are 2 RX channels but I only use one of them.

> So, you're measuring the phase-offset between the TX side and the RX
> side at the 2nd harmonic, and expecting that phase relationship to be
>    the same across re-tunes?

Yes, this is exactly what I want.

> I'm not sure that's possible.

Why not?

Conceptually it must be possible: The phase offset is only defined by the *relative* phase between RX/TX-LO.

Let's assume that both RX + TX mixer are driven by the *same* LO but the RX side has an additional frequency doubler.
Then the phase relationship is ALWAYS constant. By construction.

The USRP just makes things complicated because RX and TX are driven by different PLLs and allow their LO to be retuned separately. But ultimately both PLLs are driven by the same reference (to which phase they lock) so there must be a way to have a constant phase relationship.

Thanks,
Luke



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
