Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 028D93E9944
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 21:57:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0516F384B7B
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 15:57:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="xg4qF0Rt";
	dkim-atps=neutral
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 85576384AE1
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 15:56:38 -0400 (EDT)
Received: by mail-ot1-f49.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so4846205oti.0
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 12:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f0FkSp5R1vWs1dg3u0Cy5dp14Oy/diMbiCvmWPFzv48=;
        b=xg4qF0Rt4zKj9uz1Nm/nj3h/MLLA0Y04S1lyBMZ9Mngx9Mom+HHEGWrYVh6R83YbQA
         A0t6PT9+jolGR2mC5kPRDKKRraBjtaal/criLMyDOCMJc3zTomcwX8Ha7X74kbJXXODn
         P4Ee8FFx1ZEsELauiLGVX3jjdfnX04LvYiZCrvHuHETvXhVkEPqJIQ9QIpFTbbEg37XB
         WSs5lRu611TtyrVbYGgpFHjUvTO+XXkY+szUq0SYCJKf/wdLNypS50lggmLAB6dS8+MY
         OV6VFnp5PDCTuMIyOpVYLROYc5u30aha2SBD9mH49faBnV40cbjk0eB9ngCeQlOm3qOJ
         jz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f0FkSp5R1vWs1dg3u0Cy5dp14Oy/diMbiCvmWPFzv48=;
        b=mFyXO/AeL8GXMLWk1XR7OsOSjxT8pCe4SnRC3pMXuTbFiZZZZv4AUHsf/JrkJuvida
         97qcM7EJbFRqb0mrnEyvkiwft5DtYpJ/mBwaVBJHBZEeEO/TX+O28VSzdyuFYESTGCeV
         7tiNO7lKZgDkCOir5w++XApLn4s/olZr0HRN+G9kwBCbZSDhNlzZJR9AUHWWPi86+bSh
         ROoPf1xB6WYXTQgSNbPpUwKEbPi+pkPgNsTzID04a52zpPplfv1R/1dY4CyIQR6Nk+cZ
         3Svc9H1R7rOBjpS8zBVCpmeSnlkr7yQjKjTO0wXfFchowDzimn+6rJioEJDbnd2zR1Ua
         zGng==
X-Gm-Message-State: AOAM5316kjEyuVfzE+QIO1tjYyayObpdx2fXAffUHs+zwZcGiT+J3CAA
	3lvTbBfWrXdEzQ9MU4e5BZC5OWC0CLL2kfsV2cVo/fiI
X-Google-Smtp-Source: ABdhPJzSoYrkFn7Lo0MgpCmAbyW/EWiyuvYvwSGkgOuuKyQdlSxmikeMnzVvN8yBmwCwhRhFnu/NwbYxoksEf2Jce4I=
X-Received: by 2002:a9d:480b:: with SMTP id c11mr553889otf.30.1628711797927;
 Wed, 11 Aug 2021 12:56:37 -0700 (PDT)
MIME-Version: 1.0
References: <1196360689.69773.1628300602833.ref@mail.yahoo.com>
 <1196360689.69773.1628300602833@mail.yahoo.com> <CAL7q81vgrDp-386LOxyGZRXuevhuRd1iMPoKpK5=1=Cs1oUX=g@mail.gmail.com>
 <54441779.134698.1628372389392@mail.yahoo.com>
In-Reply-To: <54441779.134698.1628372389392@mail.yahoo.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 11 Aug 2021 14:56:22 -0500
Message-ID: <CAFche=jHZqD0j_cTU+X3e6yseG7y+NH=sLZ59FFHNND7tor_0A@mail.gmail.com>
To: Tellrell White <t_whit_87@yahoo.com>
Message-ID-Hash: DCQLRAH3D22WBX5U4OLBRICZQCQEIAZ7
X-Message-ID-Hash: DCQLRAH3D22WBX5U4OLBRICZQCQEIAZ7
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Confusion about fpga image to use for RFNoC Replay example
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DCQLRAH3D22WBX5U4OLBRICZQCQEIAZ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3611454650015439412=="

--===============3611454650015439412==
Content-Type: multipart/alternative; boundary="00000000000028414705c94e049b"

--00000000000028414705c94e049b
Content-Type: text/plain; charset="UTF-8"

In UHD 4, rfnoc_replay_samples_from file is built along with all the other
examples by default when you build UHD (it will be in the build/examples
directory). If you want to build just the example, then you could do
something like what's described in
https://kb.ettus.com/Using_the_RFNoC_Replay_Block#Building_the_Replay_Example
.

Wade

On Sat, Aug 7, 2021 at 4:40 PM Tellrell White via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Understood.
>
> Also, I noticed in UHD 4.0 there is an rfnoc_replay_samples_from_file.cpp
> that exists instead of the replay_samples_from_file.cpp mentioned in UHD
> 3.15 so are the steps to building the replay example the same as
> highlighted in the link
> https://kb.ettus.com/Using_the_RFNoC_Replay_Block
>
> On Saturday, August 7, 2021, 12:49:35 AM EDT, Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>
> Hi,
>
> Those instructions are for UHD 3.15. With UHD 4.0, the replay block is
> included by default in the N310, as you can see here in the N310's FPGA
> image yaml file:
> https://github.com/EttusResearch/uhd/blob/UHD-4.0/fpga/usrp3/top/n3xx/n310_rfnoc_image_core.yml#L71
> .
>
> Jonathon
>
> On Fri, Aug 6, 2021 at 9:44 PM Tellrell White via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello
> Currently, I'm trying to reproduce the RFNoC replay example shown at the
> following link
>
> https://kb.ettus.com/Using_the_RFNoC_Replay_Block
>
> using the USRP N310. The version of UHD that I'm using is 4.0, which by
> default already has RFNoC enabled. According to the link  above, if you're
> using the N310, than you're instructed to modify the file
> fpga-src/top/n3xx/n3xx_core.v with the appropriate changes which
> instantiates the noc_block_replay instead of noc_block_axi_dma_fifo, and
> then rebuild the image. My question is if I'm using UHD 4.0, do I need to
> make any of the changes discussed above or is the RFNoC replay block
> already included in the default N310 FPGA image as highlighted in the
> following link, which is more updated?
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Setting_Up
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000028414705c94e049b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In UHD 4, rfnoc_replay_samples_from file is built alo=
ng with all the other examples by default when you build UHD (it will be in=
 the build/examples directory). If you want to build just the example, then=
 you could do something like what&#39;s described in <a href=3D"https://kb.=
ettus.com/Using_the_RFNoC_Replay_Block#Building_the_Replay_Example">https:/=
/kb.ettus.com/Using_the_RFNoC_Replay_Block#Building_the_Replay_Example</a>.=
</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Aug 7, 2021 at 4:40 PM Tell=
rell White via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div><div style=3D"font-family:Helvetica Neue,He=
lvetica,Arial,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Understood. <br></div><div dir=3D"ltr"><br></div><=
div dir=3D"ltr">Also, I noticed in UHD 4.0 there is an rfnoc_replay_samples=
_from_file.cpp that exists instead of the <span>replay_samples_from_file.cp=
p mentioned in UHD 3.15 so are the steps to building the replay example the=
 same as highlighted in the link </span><br></div><div dir=3D"ltr"><a href=
=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" rel=3D"nofollow" tar=
get=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a></div><=
div><br></div>
       =20
        </div><div id=3D"gmail-m_5418642375957277058yahoo_quoted_8848751801=
">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Saturday, August 7, 2021, 12:49:35 AM EDT, Jonathon =
Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank"=
>jonathon.pendlum@ettus.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_5418642375957277058yiv0763106760"><=
div><div dir=3D"ltr">Hi,<div><br clear=3D"none"></div><div>Those instructio=
ns are for UHD 3.15. With UHD 4.0, the replay block is included by default =
in the N310, as you can see here in the N310&#39;s FPGA image yaml file:=C2=
=A0<a rel=3D"nofollow noopener noreferrer" shape=3D"rect" href=3D"https://g=
ithub.com/EttusResearch/uhd/blob/UHD-4.0/fpga/usrp3/top/n3xx/n310_rfnoc_ima=
ge_core.yml#L71" target=3D"_blank">https://github.com/EttusResearch/uhd/blo=
b/UHD-4.0/fpga/usrp3/top/n3xx/n310_rfnoc_image_core.yml#L71</a>.</div><div>=
<br clear=3D"none"></div><div>Jonathon</div></div><br clear=3D"none"><div><=
div id=3D"gmail-m_5418642375957277058yiv0763106760yqt08470"><div dir=3D"ltr=
">On Fri, Aug 6, 2021 at 9:44 PM Tellrell White via USRP-users &lt;<a rel=
=3D"nofollow noopener noreferrer" shape=3D"rect" href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br clear=3D"none"></div><blockquote style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"fo=
nt-family:Helvetica,Arial,sans-serif;font-size:13px"><div dir=3D"ltr">Hello=
 <br clear=3D"none"></div><div dir=3D"ltr">Currently, I&#39;m trying to rep=
roduce the RFNoC replay example shown at the following link</div><div dir=
=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><a rel=3D"nofollow noope=
ner noreferrer" shape=3D"rect" href=3D"https://kb.ettus.com/Using_the_RFNoC=
_Replay_Block" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Repla=
y_Block</a></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"=
>using the USRP N310. The version of UHD that I&#39;m using is 4.0, which b=
y default already has RFNoC enabled. According to the link=C2=A0 above, if =
you&#39;re using the N310, than you&#39;re instructed to modify the file<sp=
an> <code>fpga-src/top/n3xx/n3xx_core.v<span> with the appropriate changes =
which instantiates the <code>noc_block_replay</code> instead of <code>noc_b=
lock_axi_dma_fifo</code>, and then rebuild the image. My question is if I&#=
39;m using UHD 4.0, do I need to make any of the changes discussed above or=
 is the RFNoC replay block already included in the default N310 FPGA image<=
/span></code></span> as highlighted in the following link, which is more up=
dated? <br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><=
div dir=3D"ltr"><a rel=3D"nofollow noopener noreferrer" shape=3D"rect" href=
=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Setting_Up" =
target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.=
0#Setting_Up</a></div></div></div>_________________________________________=
______<br clear=3D"none">
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br clear=3D"none">
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bla=
nk">usrp-users-leave@lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000028414705c94e049b--

--===============3611454650015439412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3611454650015439412==--
