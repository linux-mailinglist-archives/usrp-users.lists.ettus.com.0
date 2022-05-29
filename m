Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 591395371B0
	for <lists+usrp-users@lfdr.de>; Sun, 29 May 2022 17:49:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00C5B384286
	for <lists+usrp-users@lfdr.de>; Sun, 29 May 2022 11:49:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653839385; bh=5U99C/cnw3VntIsLTN2/JemXhY0ays12PBkpsKX632w=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nShjnYEu/9qRWt41GDeWEBfH3bZRENx6qQlbPhthOQ3UgSdaq+2FaP3k7WCNHFrkt
	 +AOrildBAMk2zoYc6r8iUDWYQVyC5cNu5cRYGF+GhNLLgw+0GTljyPQm99H+MRB4pd
	 P6d4r4hvXON4hPdRsbI6ywfdNIf8Ye88oOGcjovPHeWDw9IT7qKeALFDeTKxI0qhMs
	 IZyfoo4j9nOGIiqdBJUTjTYWulzHq+KnCjljSwAFsXto3mLupE8y1sC8Y+77qs4Bn4
	 IURcWooqchRS+DZGkr/Bm7U67sie5meQ1XP5tVdK4wLfCtWlMqQ221M84Tz89R0PPz
	 m9MNoABuBx+1w==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D0173840E2
	for <usrp-users@lists.ettus.com>; Sun, 29 May 2022 11:48:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="pJ3XZ6ti";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-2ff7b90e635so88376747b3.5
        for <usrp-users@lists.ettus.com>; Sun, 29 May 2022 08:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z7vuiNOD7gS43Tlg9Zemu9aVchSOnG60//G4Rzfv+JE=;
        b=pJ3XZ6tipI8iQXuI1mi+5LxLh5GxwpGTSamh9WpiOErUVlrq5m+m+WxBrZSBFv/5oZ
         VB+IuqDQv2LVhUHEdmAvZLsDsMsM6Y+YGEFp5rjb47t9jGqRt+/tyTfu/eaicczeCG7z
         Y7Wi/l5GSU/+kTi2C2e5WN4YNT/j0gCmID/e6DxFKbshxw4VX5LwxmVXpEAuUz/aTzsI
         CR6N9ybt1zaHq/yQ3drQZAqvS530ceFwlD9Zf++BLnTqHfCbW9snyzk8P79/nFVjHK4d
         x6e3M5BowdJYsGYXaGBcURNDcHs3QqQk7hC/Uxr7wd2PTzRL4oWsqccaIiV6SJFaXqST
         ML/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z7vuiNOD7gS43Tlg9Zemu9aVchSOnG60//G4Rzfv+JE=;
        b=ux6Erbz2mcg2OItl88/3K3LtsMI2BVrIJF0L07ttayFbdYegckZWHtQ6bA+eJDjsYp
         Xvwh4Rjc/atk2N7TAKf4xfH1IK7gQ0gtwaT1GxXEljU9/ctEREhiiSNzPj+bXUHoqM3t
         4eR1IyB0dsKNWeLNNvphA5Dyfff/6wGZQ8woV/k/5VFUnJ4epSSZYlFggXYM3aNKhhhX
         jf5CRl2xJTQItZ4SmLm0RbO7sUQ4WMhKxjCJo0602Lc6SvO+SyQ3MQENXR8S4JuH5mQn
         FAPcalR/nL1DRfFmSdmIeNHYRXNJ77yvPAE4uTXbrOj9EnaZhzVL3vtgl5zckpw1QsgM
         pVUw==
X-Gm-Message-State: AOAM533h238+GAZ+cu05pgcE792t5T99E5GdaImaDKVOlNZ48ijya9qo
	5vgVtV/vIohrboBzZe0u6To+vY7khH7pcSysDVhtoiwW9STsmA==
X-Google-Smtp-Source: ABdhPJzktqO5I6aooabJWckelE6XYucFNIBBfH+WRJ6fq/Lj5qsawRrqVY582DWyHtknYOVHKsjftTGE+kO7AglkGBY=
X-Received: by 2002:a81:649:0:b0:2f1:9fcc:58c3 with SMTP id
 70-20020a810649000000b002f19fcc58c3mr52984035ywg.488.1653839327843; Sun, 29
 May 2022 08:48:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtvLBB=K7MxcCYGgayD3x9jOhhLV2i767dPfLWP84T++g@mail.gmail.com>
In-Reply-To: <CAA=S3PtvLBB=K7MxcCYGgayD3x9jOhhLV2i767dPfLWP84T++g@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sun, 29 May 2022 10:48:32 -0500
Message-ID: <CAFche=gRrb5mLnCcbiHGRMZA5acQMPtFp6VkAv3uc5YiE8B20Q@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: ZGMFZFXRTF4D5TEDSIR4H75Q26QYXKAT
X-Message-ID-Hash: ZGMFZFXRTF4D5TEDSIR4H75Q26QYXKAT
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: When I want to customize RFNOC blocks, like adding FFT block in Gnuradio generate OOOOOOOOOOO?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZGMFZFXRTF4D5TEDSIR4H75Q26QYXKAT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7557775001679433165=="

--===============7557775001679433165==
Content-Type: multipart/alternative; boundary="000000000000a6edbc05e02879f4"

--000000000000a6edbc05e02879f4
Content-Type: text/plain; charset="UTF-8"

You do not need to recompile GNURadio and UHD from scratch each time you
build an FPGA bitstream.

'O' means overflow (the data is coming in from the radio faster than you
are streaming it to the host). Did you also test that it still works
without FFT block in the RFNoC graph while keeping everything else the same
(including using the same bitfile)?

Did you configure the SPP setting to match the FFT size? This is a
requirement of the FFT block.

Wade

On Sat, May 28, 2022 at 1:16 AM sp h <stackprogramer@gmail.com> wrote:

> When I  want to customize RFNOC blocks, like adding an FFT block in
> Gnuradio generate OOOOOOOOOOO?
> When I change the RFNOC image core in USRP from the below link, the FFT
> block does not work in Gnuradio, For the Gain block same problem...
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>
> My environment is Ubuntu 20.04 ,Gnuradio 3.8.1, UHD 4.1.0.5, gr-ettus,
> (I build all Gnuadio, UHD, and.... from source, Original RFNOC block works
> but the custom block that I added does not work correctly?
>
> My question is when I rebuild and synthesize bitstream FPGA I should
> compile all Gnuradio, UHD, and ....from scratch?
> What work should I do? I study all links and videos but my problem still
> remains...
>
> I saw these links that they had my problem...
> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg11087.html
> https://lists.gnu.org/archive/html/discuss-gnuradio/2020-11/msg00077.html
>
> I to describe the problem in this mail.....
> https://lists.ettus.com/empathy/thread/76SR2TPUUXQPBWUXIWVGVIIHHHWTFRJF
>
> I shared the RFNOC image core that I added FFT but it doesn't work...
> Can anyone guide me? Thanks in advance
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a6edbc05e02879f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>You do not need to recompile GNURadio and =
UHD from scratch each time you build an FPGA bitstream.</div><div><br></div=
><div>&#39;O&#39; means overflow (the data is coming in from the radio fast=
er than you are streaming it to the host). Did you also test that it still =
works without FFT block in the RFNoC graph while keeping everything else th=
e same (including using the same bitfile)?</div><div><br></div><div>Did you=
 configure the SPP setting to match the FFT size? This is a requirement of =
the FFT block.</div><div><br></div><div>Wade<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 28, 2022=
 at 1:16 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogr=
amer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">When I=C2=A0 want to customize RFNOC blocks,=
 like adding an FFT block in Gnuradio generate OOOOOOOOOOO?<br><div>When I =
change the RFNOC image core in USRP from the=C2=A0below link, the=C2=A0FFT =
block does not work in Gnuradio, For the Gain block same problem...</div><d=
iv><a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0" t=
arget=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0=
</a><br></div><div><br></div><div>My environment is Ubuntu 20.04 ,Gnuradio =
3.8.1, UHD 4.1.0.5, gr-ettus,</div><div>(I build all Gnuadio, UHD, and.... =
from source, Original=C2=A0RFNOC block works but the custom block that I ad=
ded does not work correctly?</div><div><br></div><div>My question is when I=
 rebuild and synthesize bitstream FPGA I should compile all Gnuradio, UHD, =
and ....from scratch?</div><div>What work should I do? I study all links an=
d videos but my problem still remains...</div><div><br></div><div>I saw the=
se links that they=C2=A0had my problem...</div><div><a href=3D"https://www.=
mail-archive.com/usrp-users@lists.ettus.com/msg11087.html" target=3D"_blank=
">https://www.mail-archive.com/usrp-users@lists.ettus.com/msg11087.html</a>=
<br></div><div><a href=3D"https://lists.gnu.org/archive/html/discuss-gnurad=
io/2020-11/msg00077.html" target=3D"_blank">https://lists.gnu.org/archive/h=
tml/discuss-gnuradio/2020-11/msg00077.html</a><br></div><div><br></div><div=
>I to describe the problem in this mail.....</div><div><a href=3D"https://l=
ists.ettus.com/empathy/thread/76SR2TPUUXQPBWUXIWVGVIIHHHWTFRJF" target=3D"_=
blank">https://lists.ettus.com/empathy/thread/76SR2TPUUXQPBWUXIWVGVIIHHHWTF=
RJF</a><br></div><div><br></div><div>I shared the RFNOC image core that I a=
dded FFT but it doesn&#39;t work...</div><div>Can anyone guide me? Thanks i=
n advance</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a6edbc05e02879f4--

--===============7557775001679433165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7557775001679433165==--
