Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E76523CA3
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 20:36:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D79CE38445E
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 14:36:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652294162; bh=uWN7qV/OWJzj1zSBXBxxhKE4e/+Gu7ln2HslOGAsslU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=b5mPHHd7jLCywR3NcMYj8EtxSUaGxSsp/4uHd4Ynq4pVhtsCz5PrBwFvEJFgFnA/c
	 QgRwy/jcRO0JTC8qeCoEfIbQcddaFWm/r1bP8HIhsa2loxUSJDKGp1U++jtWUXyFpX
	 SudyYYj7DjCLwp7BRg4reL6Mql+sNlLWNERUWIxtZO26sX/8fpMGH53bk1J6YTPb3y
	 2k0KYSR7jzzagtT+4bWm1T6LqRL4sSL3egB9kattZ5vVh4D6gqQgS+KgF9EghTLgWQ
	 dZ9imqq5odbZ06UCSQKyrkAk2uFTayU2/lBj2+fdpqT0+1mY/5YZET48zHihlDPRRK
	 LnfisM+LwCCZw==
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EFCF3842FC
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 14:35:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iaE3VqXb";
	dkim-atps=neutral
Received: by mail-pf1-f169.google.com with SMTP id d25so2693954pfo.10
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 11:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kYsaNunrWAOjg4VfZrqKWCarFVaLqYdzFUPXPPeZoU8=;
        b=iaE3VqXb7KM97kYiLnXtTIH9zg/2V6gYY78afPvDdJM8tMjEiYqiMLUyhyXxwcbxwE
         RgKyzXMYzC3rKGurbZbMDoVlMTSJS0oi6ALhGwlEDqp4TMiOet9rXwcVHsN0SdBsybwC
         oh+ToR8UElzMxcoRwAL15k0G/JMN8QYh7O+MoP5L+RooaC7WYTdUwAiJ4mzHtiU+XYRG
         KSembDaDGRFdfMTePtD+SUAquQrz+nWhxuBDXbNGxdHVArBHSchjRqXIKregVAbXcTaO
         pSkSrMlXz2Q7TQs7WruK/+5NrMY0lxB8ibLPBD41XEQDgmDi2geRFU0SXjsF3FLt4vnh
         dW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kYsaNunrWAOjg4VfZrqKWCarFVaLqYdzFUPXPPeZoU8=;
        b=ZAiDDbyi80NZfuhy1gqw8mzQVkqXUjwISZ1fg2KlCPAs8i2X3d5Rz8BSLtBetI9j/T
         IEOiLFa6kCevbB7AiFDLusqEdDw/T9N5PyANUUCXjHISEe7MFj3iBeueMRK35G+u+zqj
         1Ie3HT/YCHqhUW5S4NO95spZMoDNmKpF134n0+KF89Z/JWDHzd39TIzIfrQk7yVM+ED9
         jpOUq+8Cvz8jvW7fbw7X11HaX+DuB2Rh+SpmRgrPkQDFrlp5GnxTwWJmvJGBOQqriLpT
         M4+UlgTfL2vrEvvlOZO1izIFSpJ4Gi10UABn3EghdZ74RDsBHbVhmuhjAKXEO/pfcDWd
         UKYQ==
X-Gm-Message-State: AOAM533T5QsEyrt0NJRi6cub8zPxHZPA12853VyWiwGwlFqLxgvDVCrc
	53GO9gkjJNuoiPkVEn7HO4CmIso83EiW+4Roej0=
X-Google-Smtp-Source: ABdhPJzX9po1TqAarNV6N3FelUKmxtWispnSChVneqV3EnoewZWVAWsoICbLaEkFMwMGdANKEd8nTNZKIAhdvxDEtZ8=
X-Received: by 2002:a63:5c50:0:b0:3db:11bc:8d71 with SMTP id
 n16-20020a635c50000000b003db11bc8d71mr5264088pgm.363.1652294100950; Wed, 11
 May 2022 11:35:00 -0700 (PDT)
MIME-Version: 1.0
References: <wJnU0NzoU1ulUt2QW5uXOtwMHcw6At3XHw6A0Oc@lists.ettus.com> <d6eeb5b3-f981-45e6-2397-85f5b9614903@gmail.com>
In-Reply-To: <d6eeb5b3-f981-45e6-2397-85f5b9614903@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 11 May 2022 14:34:48 -0400
Message-ID: <CAEXYVK4gUcaCvP2R6J9pNfj++M+tjE3TNU9_wGAd3_uWoQUN+A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 4JK2OOM64TMEKTF7PGT64F5QQLWMSEK3
X-Message-ID-Hash: 4JK2OOM64TMEKTF7PGT64F5QQLWMSEK3
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC DDC or DUC frequency change
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4JK2OOM64TMEKTF7PGT64F5QQLWMSEK3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6844383281502863043=="

--===============6844383281502863043==
Content-Type: multipart/alternative; boundary="000000000000f3a44b05dec0b21f"

--000000000000f3a44b05dec0b21f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 11, 2022 at 2:18 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-05-11 14:10, rblack@swri.org wrote:
> >
> > A question for anyone: when changing the frequency of a DUC (or DDC)
> > would you expect the output of the block to be phase continuous
> > through the change? Phase-continuous behavior would be typical for
> > many DDC implementations, but with the RFNoc block I am seeing big,
> > arbitrary phase jumps with the tune frequency change=E2=80=A6..
> >
> >
> I don't think that phase-continuity across DUC/DDC configuration was
> ever a design goal, from what I recall...
>

Can be an easy fix since it's explicitly zeroized here when any new phase
increment is valid:


https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68=
d82e57f/fpga/usrp3/lib/rfnoc/ddc.v#L205

Brian

--000000000000f3a44b05dec0b21f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 11, 2022 at 2:18 PM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On 2022-05-11 14:10, <a href=3D"mailto:rblack@=
swri.org" target=3D"_blank">rblack@swri.org</a> wrote:<br>
&gt;<br>
&gt; A question for anyone: when changing the frequency of a DUC (or DDC) <=
br>
&gt; would you expect the output of the block to be phase continuous <br>
&gt; through the change? Phase-continuous behavior would be typical for <br=
>
&gt; many DDC implementations, but with the RFNoc block I am seeing big, <b=
r>
&gt; arbitrary phase jumps with the tune frequency change=E2=80=A6..<br>
&gt;<br>
&gt;<br>
I don&#39;t think that phase-continuity across DUC/DDC configuration was <b=
r>
ever a design goal, from what I recall...<br></blockquote><div><br></div><d=
iv>Can be an easy fix since it&#39;s explicitly zeroized here when any new =
phase increment is valid:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"h=
ttps://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d=
82e57f/fpga/usrp3/lib/rfnoc/ddc.v#L205">https://github.com/EttusResearch/uh=
d/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/ddc.v#=
L205</a></div><div><br></div><div>Brian</div></div></div>

--000000000000f3a44b05dec0b21f--

--===============6844383281502863043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6844383281502863043==--
