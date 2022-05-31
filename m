Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E798453982D
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 22:44:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34224383DD5
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 16:44:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654029856; bh=QAjOxINr7JxKVX24cpZslSjYbFrbSskYpyGvC9dcFB8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=k3P/EMGrRUBmYhJaUeKjaeHFsPspdGhbsT3P4ZxPzciT4IcCjCWnGmmHO0s+td35k
	 eSDrB8nkTWjKnr5uEH18cntxE07id9EFkIUZUf91+XWqEO43AQAF4YsWZXD9d31FOA
	 WwGU88FuyAbyUnYyeUNQEkWO0PVFz+fA9Pf7jkHRT5xJidb0iZBrZuB7ksEb83i0Zf
	 NmJNk7N4wnl69wJGRbD/wtLN42FT74qovyX6sOsy6NPPLBG8y9cMj7PhrygSvkmXE0
	 yeBxF1cGYQa3tjiSMXAvIUJCPGOsBxYM/ZgJ+lBsTQqBmPTFKxt6cQuQ/GEpBNPtHy
	 tlihICmXju8VQ==
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 4190138423E
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 16:43:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lYP7Ddhu";
	dkim-atps=neutral
Received: by mail-pj1-f54.google.com with SMTP id cx11so7394pjb.1
        for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 13:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8rYxUGgodDtZi+Rs3plkP0fDLPIAlif/3B5yw7x9Q00=;
        b=lYP7DdhuRjiDTaUjoX7pIQPykRZNg5BjrbPMGMrw1mNhLBKl8iRqMMmKzHPg7LFHpL
         rZ2/MfV/IDsr99Fm6gE+dGb2TzdFTWTscBL1tZfny1BtEBL0kR5iCkNeTQtAkcI6BVT0
         WIXd4180DWLNdbv+/MPwYW8O8nNB5M+60N0DnTsIC9k9okHOs8aMqYhl/17/4ym24mkB
         hqiAWl0fG94ndY3aySIbrhz9mhw5Kagq4k946JaKd8EHLATUPrnn335O50rLK6wCzeOa
         cHjawtp8wpU7JcpmQIUUvpY75HWfJDXf2QPuXVRDumjB4bENbHWYp+VUQgZZsv/DUdgA
         +34A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8rYxUGgodDtZi+Rs3plkP0fDLPIAlif/3B5yw7x9Q00=;
        b=MF+s9BI9Nkur3Vxym5IEFZIXWF0r2+U4pZM2MAgxszy84zSE9iJj4jRVdofkQt+9G7
         1NAEf27ibbitec5QQSvqOuzrWYnaZdXElqZhFanLAuq+aiM4XnLjicU0YFfOSVBIOxYU
         eVIHj0a5njNQgxNQdM9Qi1t7Pn27V8EzmV2iZLoLRH6VWhj95FL7aKWBsZJ76ms8MDwu
         W8mNtUrWqE1RiGPV4SlVq5kUM0G3ZCn7fTHGU03ZwV8361K/Zbie7oOpj590JvIgT9r0
         AhnHCUimQX70df5OMfhzP5tugwixJyKDeaDMI+gRDLjQfJyyCcngmB9Ru6C2uLA880q9
         Ewsw==
X-Gm-Message-State: AOAM533fE0UhQY2nvfFHSrSoozzgaVZ8GCF66kvMW49olaL68jrnshDO
	Piq5KV3sfIajATkzbQWNwBHl8sbzOxGDEgffK1T1k7TuBLY=
X-Google-Smtp-Source: ABdhPJx+kXUsSqUkGIm71gQP52sZi+6jfr+YSoQ97ksAh3FW8uJy5BTKOzXU8+e+YDkb37LOx9GXYf7i7pbuJNcUyjw=
X-Received: by 2002:a17:90b:224a:b0:1e0:f91:3a3f with SMTP id
 hk10-20020a17090b224a00b001e00f913a3fmr30713524pjb.62.1654029795133; Tue, 31
 May 2022 13:43:15 -0700 (PDT)
MIME-Version: 1.0
References: <m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk@lists.ettus.com>
In-Reply-To: <m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 31 May 2022 16:43:04 -0400
Message-ID: <CAEXYVK7WTAJntN=L_zO0bVqaTffVSiMqioU-rezZyRrvXMebtw@mail.gmail.com>
To: "Richard J. Muri" <ri28856@mit.edu>
Message-ID-Hash: OYS36LXCZY6STXEHLKG5BRFBBAIYZMMB
X-Message-ID-Hash: OYS36LXCZY6STXEHLKG5BRFBBAIYZMMB
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OYS36LXCZY6STXEHLKG5BRFBBAIYZMMB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5882276632464873569=="

--===============5882276632464873569==
Content-Type: multipart/alternative; boundary="000000000000630e9e05e054d26c"

--000000000000630e9e05e054d26c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 31, 2022 at 3:42 PM <ri28856@mit.edu> wrote:

> Hi,
>
> I=E2=80=99m playing around with frequency hopping on a USRP x310 with a U=
BX 160
> daughterboard. In particular, I want to hop to a few different frequencie=
s
> that are integer multiples of my master clock rate and well within the
> daughtercard bandwidth rapidly (hopping every ~200 us). I know the hoppin=
g
> schedule well in advance, but as described in the timed command
> documentation (
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UH=
D)
> the default command queue depth is only 5 slots per IP core. Given that t=
he
> Linux kernel scheduler uses a ~1ms jiffy, it=E2=80=99s rather difficult t=
o send new
> timed command accurately when a queue slot is available. It would be much
> easier if I could batch up the tune commands.
>
> Is there a way for me to build a default X310 FPGA image but increase the
> DDC and DUC queue size? I have access to a Vivado license. Is there an
> example tutorial somewhere? Even better, are the DUC/DDC queue depths
> parametrized in the build scripts?
>

I think the 5 here in the CMD_FIFO_SIZE means 2^5 =3D 32 slots:


https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68=
d82e57f/fpga/usrp3/lib/rfnoc/dds_timed.v#L292

Though I am unsure how many words are written at a time for changing the
frequency.  It seems like just a single settings register, but maybe
there's more in the implementation?

Have you tried just writing out the frequencies you want to change and
seeing if you get automatic holdoff as the command FIFO fills up?

Either way, you should be able to just make that CMD_FIFO_SIZE deeper
(note: it's the log2, so 8 should be 256 deep).  Let us know how it works
out?

Brian

--000000000000630e9e05e054d26c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 31, 2022 at 3:42 PM &lt;<a hr=
ef=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>&gt; wrote:<br></div><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>=
Hi,</p><p>I=E2=80=99m playing around with frequency hopping on a USRP x310 =
with  a UBX 160 daughterboard. In particular, I want to hop to a few differ=
ent frequencies that are integer multiples of my master clock rate and well=
 within the daughtercard bandwidth rapidly (hopping every ~200 us). I know =
the hopping schedule well in advance, but as described in the timed command=
 documentation (<a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_U=
sing_Timed_Commands_in_UHD" target=3D"_blank">https://kb.ettus.com/Synchron=
izing_USRP_Events_Using_Timed_Commands_in_UHD</a>) the default command queu=
e depth is only 5 slots per IP core. Given that the Linux kernel scheduler =
uses a ~1ms jiffy, it=E2=80=99s rather difficult to send new timed command =
accurately when a queue slot is available. It would be much easier if I cou=
ld batch up the tune commands. </p><p>Is there a way for me to build a defa=
ult X310 FPGA image but increase the DDC and DUC queue size? I have access =
to a Vivado license. Is there an example tutorial somewhere? Even better, a=
re the DUC/DDC queue depths parametrized in the build scripts?</p></blockqu=
ote><div><br></div><div>I think the 5 here in the CMD_FIFO_SIZE means 2^5 =
=3D 32 slots:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://githu=
b.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/=
usrp3/lib/rfnoc/dds_timed.v#L292">https://github.com/EttusResearch/uhd/blob=
/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/dds_timed.v#=
L292</a></div><div><br></div><div>Though I am unsure how many words are wri=
tten at a time for changing the frequency.=C2=A0 It seems like just a singl=
e settings register, but maybe there&#39;s more in the implementation?</div=
><div><br></div><div>Have you tried just writing out the frequencies you wa=
nt to change and seeing if you get automatic holdoff as the command FIFO fi=
lls up?</div><div><br></div><div>Either way, you should be able to just mak=
e that CMD_FIFO_SIZE deeper (note: it&#39;s the log2, so 8 should be 256 de=
ep).=C2=A0 Let us know how it works out?</div><div><br></div><div>Brian</di=
v></div></div>

--000000000000630e9e05e054d26c--

--===============5882276632464873569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5882276632464873569==--
