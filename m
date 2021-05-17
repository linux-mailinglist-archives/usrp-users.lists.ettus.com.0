Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B12E383442
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 17:09:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8579C384588
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 11:09:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A4DAcwy4";
	dkim-atps=neutral
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	by mm2.emwd.com (Postfix) with ESMTPS id E8228383ECC
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 11:08:14 -0400 (EDT)
Received: by mail-oo1-f47.google.com with SMTP id e7-20020a4ad2470000b02902088d0512ceso1533952oos.8
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 08:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FwWtzKYf2kdVg5Zyyq26njQDYZUPSGvd/0VtNlhPiIA=;
        b=A4DAcwy4BreC0xjTmnwWI4+aKiVynIQ8DRcXgIp5eTY+XBBVJWQhOCKYMIM+4b5yHW
         r97yfgvcnAVskWJ/3wXkG+htvmPzA5nLO+UszcFWnEoLtsOBLXO0eUqLpebK0v5VSAak
         lMsz/SSZuQGxZMoxBh8JxZHL23EGTYnE5/LYL+N2t1BZWp6GbOipTeinTHQ2F1CQrigG
         qKB1hlsalmKzObPP1ySldyNn6kSYgQ53EGDCmw4bP6xWmgXWFOLdDNxVD3sUXdXeRz+F
         rkT69JbMq+pVsQIHmuMsJSa0ELdDufgxSLlpDvC5dJpezRgCMIZE9GGtGeZyct5dNchO
         Y0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FwWtzKYf2kdVg5Zyyq26njQDYZUPSGvd/0VtNlhPiIA=;
        b=ZG4/D4cn7PvLMMfvEubee0e+3iXFmKoVSELR2Xcq4ezTwl2JI8U+yuBW5OotF5IWCM
         52cvSA2F8bleMjkwV8fI5ZKycznYTUVd/NepGYm/c7ZmKM7nEVr/prS0GPBKYNNGtXVg
         IPw57Yvo6vkFXGzAdegiZVejny0kTvrCRYPg8iZNuYkvpzQDui0guEA3rQGWXkXY7Z73
         lVPPYeGFDNnUADKS7LS/LSQA2wWCfJXnwrtzUjSqfD1ZvzqWrSN34htFxRvMxJECHQKJ
         90Qf6sRnxGsnscyuWZxUkb9vnjcLWYKOyCOInOlmEZai4H9UdP4jCvGzK98wzg1hBejq
         +pjQ==
X-Gm-Message-State: AOAM532kaBJKhOXAMMEQmxO1BCPNPjv7bgkc254flq9gPJheNSVcdC20
	njsgclioKEMr/FE3Bf0pJ29CfKoRx+t/lHLeE1Q=
X-Google-Smtp-Source: ABdhPJzbaRbGVHFrG15I+FH5G2N70OKFahpo9NBdsijTasWmD4yI1psZs3kL/Zy/tuH6LjoZgcQrKhyRyaWQzcnZeBE=
X-Received: by 2002:a4a:cb95:: with SMTP id y21mr310076ooq.68.1621264094316;
 Mon, 17 May 2021 08:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <12712_1621024152_609EDD98_12712_124_1_CAEXYVK4M7VXi8vAaXpneJ_hVvwbaLPQD+Q9vLO7XJvjbifSDvw@mail.gmail.com>
 <BLAPR09MB6612480376497870AC78363FD9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK521Vi5zDzxbkCLdMAVdgBcEoXM1yBXy7seMW=XcPtzbw@mail.gmail.com>
 <BLAPR09MB6612A8E6DC947A10BE0A2093D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <BLAPR09MB6612D72CDEB494129FE5AAD3D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK6cSejKZkr40v6BUeta1mPfGyfOtwE8-62p_PCTdSqxhw@mail.gmail.com> <BLAPR09MB66129186B794ACF02B0AF7F0D92D9@BLAPR09MB6612.namprd09.prod.outlook.com>
In-Reply-To: <BLAPR09MB66129186B794ACF02B0AF7F0D92D9@BLAPR09MB6612.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 17 May 2021 11:08:03 -0400
Message-ID: <CAEXYVK6qk-Q3xCysSry75SxH-UzL4tB7V=xjaunWWNK3XmGYzw@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: CIWFB4OBMI37NOHFX3PU2F67HTR4ETHX
X-Message-ID-Hash: CIWFB4OBMI37NOHFX3PU2F67HTR4ETHX
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CIWFB4OBMI37NOHFX3PU2F67HTR4ETHX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1588055039018752699=="

--===============1588055039018752699==
Content-Type: multipart/alternative; boundary="0000000000006dce7b05c287f691"

--0000000000006dce7b05c287f691
Content-Type: text/plain; charset="UTF-8"

On Mon, May 17, 2021 at 11:04 AM Jeffrey P Long <jplong@mitre.org> wrote:

> Brian-
>
>
>
> I think I am getting closer here. I actually just went back to using
> network mode so I could debug my issues without the extra challenge of the
> crossdev. That is a real nice thing about the E320.
>
>
>
> So I think the usrp probe will always come back with that error because
> there is no controller for your custom block in that usrp probe code (Sorry
> my terminology is probably wrong here). As you mention the generic name is
> just a fact of life however I really think the getting started guide should
> point that out so people know what to expect. With the proper block
> controller called with the correct noc ID registered it seems to work now.
>
>
>
> Embedded mode should probably work now too however I think I am just going
> to continue in network till I get my custom design into the FPGA and then
> move it over.
>
>
>
> Thanks for your help on this.
>

Just to be clear, you were able to utilize the UHD_MODULE_PATH environment
variable to point to the shared library holding your controller code for
your custom block, and uhd_usrp_probe was able to come back with your
custom name instead of just Block.  Correct?

Thanks,
Brian

>

--0000000000006dce7b05c287f691
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, May 17, 2021 at 11:04 AM Jeffrey =
P Long &lt;<a href=3D"mailto:jplong@mitre.org">jplong@mitre.org</a>&gt; wro=
te:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_6859764169042286578WordSection1">
<p class=3D"MsoNormal">Brian-<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I think I am getting closer here. I actually just we=
nt back to using network mode so I could debug my issues without the extra =
challenge of the crossdev. That is a real nice thing about the E320.
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">So I think the usrp probe will always come back with=
 that error because there is no controller for your custom block in that us=
rp probe code (Sorry my terminology is probably wrong here). As you mention=
 the generic name is just a fact of
 life however I really think the getting started guide should point that ou=
t so people know what to expect. With the proper block controller called wi=
th the correct noc ID registered it seems to work now.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Embedded mode should probably work now too however I=
 think I am just going to continue in network till I get my custom design i=
nto the FPGA and then move it over.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks for your help on this.</p></div></div></block=
quote><div><br></div><div>Just to be clear, you were able to utilize the UH=
D_MODULE_PATH environment variable to point to the shared library holding y=
our controller code for your custom block, and uhd_usrp_probe was able to c=
ome back with your custom name instead of just Block.=C2=A0 Correct?</div><=
div><br></div><div>Thanks,</div><div>Brian</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div lang=3D"EN-US" style=3D"overflow-wrap: break-wo=
rd;"><div class=3D"gmail-m_6859764169042286578WordSection1"><div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000006dce7b05c287f691--

--===============1588055039018752699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1588055039018752699==--
