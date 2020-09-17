Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C7326D0ED
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 03:59:37 +0200 (CEST)
Received: from [::1] (port=56143 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIjCv-0001V8-NE; Wed, 16 Sep 2020 21:59:33 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:45090)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kIjCr-0001Pm-I1
 for usrp-users@lists.ettus.com; Wed, 16 Sep 2020 21:59:29 -0400
Received: by mail-oi1-f172.google.com with SMTP id z26so598884oih.12
 for <usrp-users@lists.ettus.com>; Wed, 16 Sep 2020 18:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=zzD19RFenEkE78WWxe/pRiH84wn72YW7mmKrH74eY60=;
 b=E8UeApWGqCvpvWexpzD5Kw37JAK1MBu+auJsYDpsWZue9VYY4FwcqHk8X0CFDpls2r
 xRPT9NxjHutfzgnnQ+ZSlo1DMx0Qs6q1ccWQUKd6kVxGLXLbtfPndlHJjuyEwaAa/fWY
 ZvohKBhKBVUajSPshUUNmLXXH3JMW3AORg4bpOk5OW34AgN9/Mky+8IdcO9FGHKCng61
 JfH6wLSc35wFxYnemKT8RvEmKMYGrrF6b6PKuKC29WeR4Li22SBaeRuOOhO+SFKKAAdc
 Bxx44FB3vU0Lt5/FfZgtVxX7ScazNCSZDPW8L0EQLa3wkzsJXIgRTTBNSmOusf4lNo11
 ptpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=zzD19RFenEkE78WWxe/pRiH84wn72YW7mmKrH74eY60=;
 b=hqr153uWm8l4iyhoQXvqOe3pyPVGh2fGCuI6GAQU27L+4kbhXk/GPm29su9JcSVa69
 2Al2oZnx0ZLAB4ufBugGyj+JJOFl4n80foowVbsNUSsl0xLlPUDllfAWJ5XDke75rgaQ
 IsDgm1YsXEhZNqEsDiRkkiJqEMb53yz4lv8blT7CtgpbM/A5A6efwFyPXICcK2MoZhb1
 YHdmMnAteBo5gpkDykx3DLpIsZOGPa1uSBUK42OxQfjTysROM6jSQj6H6dlj/Uilut6g
 q+zIScNfKPpXs/9PVt4DFWSgm8ScIZ+EgFSufQaCCNRX9wh654JMJctS65pCyTNfqpZp
 A/Vw==
X-Gm-Message-State: AOAM531kQPOc6xmLxISQKGhgsUzNldq4SjkKM8SCexSyyXh2DpRjj+BV
 T7ldjk77YWu9RhfbWK67yWCs9xJ28s86wOi9KPxRLOOfyok=
X-Google-Smtp-Source: ABdhPJxf22wgO4oywj0bzKhxRgHNL3B/zg+d2DxlPuGinDQGd+Mq6lZS7F1jocyM1+m6Q74IfVYfAAOt5ZpBJZOWazc=
X-Received: by 2002:aca:b454:: with SMTP id d81mr4844442oif.150.1600307928499; 
 Wed, 16 Sep 2020 18:58:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSOe=zRoKHchG3cPARPZEmnDCyw8DLYskQdspGJT9d2eQ@mail.gmail.com>
In-Reply-To: <CAB__hTSOe=zRoKHchG3cPARPZEmnDCyw8DLYskQdspGJT9d2eQ@mail.gmail.com>
Date: Wed, 16 Sep 2020 21:58:37 -0400
Message-ID: <CAB__hTQsBwV_rhUZNG=MA-4TsfT-bt_1GYuCfPdY70R_SrdQjg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 4.0 / RFNoC 4.0 questions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3859113895871551687=="
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

--===============3859113895871551687==
Content-Type: multipart/alternative; boundary="0000000000009c3ef105af78b993"

--0000000000009c3ef105af78b993
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

and one more question:

   - How do we include 'rfnoc_chdr_utils.vh' in our out-of-tree rfnoc
   module? Is there a way to specify an include path so that we don't have =
to
   hardcode it?


On Wed, Sep 16, 2020 at 6:38 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> After playing around with UHD 4.0 and migrating existing applications &
> custom blocks to 4.0, I have several questions (see below).
> Thanks.
> Rob
>
>    - What is the status of the need for block controllers vs using
>    nocscript? The rfnoc spec shows example yml files with =E2=80=9Cregist=
ers=E2=80=9D and
>    =E2=80=9Cproperties=E2=80=9D sections (and nocscript commands), but al=
l blocks from Ettus
>    have these sections blank and all of the blocks have custom block
>    controllers. At NEWSDR, I asked a similar question to Jonathan Pendlum=
 /
>    Michael West and they indicated that in UHD 4.0, the need for custom b=
lock
>    controllers should be relatively rare.
>    - Are there any plans to have rfnoc modtool part of UHD rather than
>    gr-ettus (in the near future)?  This makes way more sense.
>    - Is there a limitation on the number of stream endpoints (e.g., is it
>    similar to the limitation of 16 CEs in UHD 3.15)?
>    - What are the advantages/disadvantages of making a multi-port block
>    vs having multiple one-port blocks for blocks like ddc, window,
>    keep_one_in_n, etc, that are really just multiple instances of 1-in, 1=
-out
>    modules?  For example, are there resource or performance implications =
if I
>    build two 1-port DDC blocks or one 2-port DDC block in my image?
>    - Why does it matter if the addresses for user registers are in steps
>    of 4 rather than 1 if we are just using the addresses as essentially
>    identifiers?  I understand that the address is intended as a byte addr=
ess
>    of a 4-byte value, but it seems that the examples I have seen are just
>    using the address as an identifier.
>    - Will Ettus be providing replacements for blocks with deprecated
>    features such as settings bus registers? For example, in order to use
>    axi_rate_change, which uses settings registers, it=E2=80=99s easiest t=
o use the
>    ctrlport_to_settings_bus module rather than using ctrlport directly. S=
hould
>    we expect in  the future that axi_rate_change (and similar blocks) wil=
l be
>    replaced by a future block?
>    - For timed commands in 3.15, only the Radio blocks were using the mb
>    time to trigger the desired action whereas other blocks such as DDC & =
DUC
>    implemented timed commands by comparing to timestamps in the CHDR stre=
am.
>    Is this still true for 4.0?  My question is not about =E2=80=9Cwhat is=
 possible=E2=80=9D
>    but rather =E2=80=9Cwhat is presently implemented=E2=80=9D in Ettus bl=
ocks.
>
>
>
>

--0000000000009c3ef105af78b993
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">and one more question:<div><ul><li>How do we include &#39;=
rfnoc_chdr_utils.vh&#39; in our out-of-tree rfnoc module? Is there a way to=
 specify an include path so that we don&#39;t have to hardcode it?</li></ul=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Sep 16, 2020 at 6:38 PM Rob Kossler &lt;<a href=3D"mailto:rk=
ossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>After playing around=
 with UHD 4.0 and migrating existing applications &amp; custom blocks to 4.=
0, I have several questions (see below).</div><div>Thanks.</div><div>Rob</d=
iv><div><ul><li>What is the status of the need for block controllers vs usi=
ng nocscript? The rfnoc spec shows example yml files with =E2=80=9Cregister=
s=E2=80=9D and =E2=80=9Cproperties=E2=80=9D sections (and nocscript command=
s), but all blocks from Ettus have these sections blank and all of the bloc=
ks have custom block controllers. At NEWSDR, I asked a similar question to =
Jonathan Pendlum / Michael West and they indicated that in UHD 4.0, the nee=
d for custom block controllers should be relatively rare.</li><li>Are there=
 any plans to have rfnoc modtool part of UHD rather than gr-ettus (in the n=
ear future)?=C2=A0 This makes way more sense.</li><li>Is there a limitation=
 on the number of stream endpoints (e.g., is it similar to the limitation o=
f 16 CEs in UHD 3.15)?</li><li>What are the advantages/disadvantages of mak=
ing a multi-port block vs having multiple one-port blocks for blocks like d=
dc, window, keep_one_in_n, etc, that are really just multiple instances of =
1-in, 1-out modules?=C2=A0 For example, are there resource or performance i=
mplications if I build two 1-port DDC blocks or one 2-port DDC block in my =
image?</li><li>Why does it matter if the addresses for user registers are i=
n steps of 4 rather than 1 if we are just using the addresses as essentiall=
y identifiers?=C2=A0 I understand that the address is intended as a byte ad=
dress of a 4-byte value, but it seems that the examples I have seen are jus=
t using the address as an identifier.</li><li>Will Ettus be providing repla=
cements for blocks with deprecated features such as settings bus registers?=
 For example, in order to use axi_rate_change, which uses settings register=
s, it=E2=80=99s easiest to use the ctrlport_to_settings_bus module rather t=
han using ctrlport directly. Should we expect in =C2=A0the future that axi_=
rate_change (and similar blocks) will be replaced by a future block?</li><l=
i>For timed commands in 3.15, only the Radio blocks were using the mb time =
to trigger the desired action whereas other blocks such as DDC &amp; DUC im=
plemented timed commands by comparing to timestamps in the CHDR stream.=C2=
=A0 Is this still true for 4.0?=C2=A0 My question is not about =E2=80=9Cwha=
t is possible=E2=80=9D but rather =E2=80=9Cwhat is presently implemented=E2=
=80=9D in Ettus blocks.</li></ul><div><br></div></div><div><br></div></div>
</blockquote></div>

--0000000000009c3ef105af78b993--


--===============3859113895871551687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3859113895871551687==--

