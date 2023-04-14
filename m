Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B468A6E2550
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 16:09:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47F6338367B
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 10:09:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681481368; bh=Ifz454BFCftG9UDbpUfPVGFE52GVxie4c6pun+0V06A=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=HlWizXnlr+/+C62H959qKLwsKHNbg87MnCimYU9qkRmpMKmiPkfs8tEbflIKq/2dr
	 1GFrDSwJl7iEhZ+de1hLu4AqKjgdNNAKTalTyLCSsV39LvOw9AkmyXs23TllhRMWcF
	 pb9AoMWF+1BnV1DkA38NC0CMCWMcJRI5CIChjAi1MCg5KepNcbwlVA1HFGCCELVK64
	 ILB8jkecCLy8jI0GukjLyDZf72n7rTh5FQnIqR/n/Wk7IzA87c/h4VDq6SNzMnjO5N
	 oiMP7qMK71lbAzeRUZ2WdF5MSwaw47RTOW8LSscmqMlz2h4UsC9Cdz/g8GZ6dah1cP
	 iH72XhGG/eCIQ==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 8CE51380BDF
	for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 10:08:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="U8I85OlK";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id kt6so7699876ejb.0
        for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 07:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1681481333; x=1684073333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6kqudyLs2MfA+dQC7M34GXM/2++h4WlEyVhRnGl6+t8=;
        b=U8I85OlK/mOgetLUpHLLTKyOuKWhMOTOrgq6jhNdZZpavBSovb5N6udD29P3Y1YnTY
         L5U6USwqPZGwB7vhviTDn+m/FWI7KSVJiwDHmQq2eFGCjT07veJJqJCDplcspTaMWI3w
         P/1O0cIFQwZY40Xg3SclXqwvQ9blrFc7WaDNQHVNZbcfj8JMMX8rzVH+2mjsSiVAti/f
         DdH50oamuj9da/lgngHb8odc6jKW3yfVLutoeo6oR8/pwmyP5NixgRhL+fIMDejC2X/U
         upl/eI/u+zM2VP6wP7AZEPkOgBuCze4i1AuB6mNoZP1nvF+GmoGD3/GnJIVRwgjqSxMK
         tVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681481333; x=1684073333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6kqudyLs2MfA+dQC7M34GXM/2++h4WlEyVhRnGl6+t8=;
        b=XGG4L57pZRMwzmutcXREpAT7D1DuKCfMWW9lLoAIvn4R/+uYMJmM6ss7YRzL80A/lb
         JU3AIYkREdtKxNM2VSu+GulDLJnwYgfhz88txm9WCSD7dAEVoFUnzC8JcdH2YQ6b4Yx2
         1g8mQ1pBODu0EwvXGVBrWFxpSTPZ6qX6YYDQZted2jHmp4CFfZlOYtDfe7ysq9lFHpHe
         k2Mpt8tNriLksnVHpL8q7tFHNqS17yhmUiUx01kgjdps1O9w1skhb6pVw9pqTi+d1REV
         j8xPxdcq74zEAC9jppbq51hbsn7FGPxV+uLkWuPv5QGiF0GQN7+jHNHKqPwUjvayLmtf
         RSiA==
X-Gm-Message-State: AAQBX9fkYxdSa7gF+13BuAnXsl9loCptzKgb+L7O0S29QdvOF5KMbSTg
	x7Zc4k1wobhEOQscx0PxE+5DKMC/lP3HEOr4aLjPwQ8Ao2AbnIJh
X-Google-Smtp-Source: AKy350aDYli271wk/LAf4ZOWsdhfEW1D1y4C4M24EGIXTEw9v7xiAjeSQgqBAgrlWg/dBCaw4I3f7/6+E+mFHCTeVmk=
X-Received: by 2002:a17:906:b085:b0:94e:3ba:1649 with SMTP id
 x5-20020a170906b08500b0094e03ba1649mr3114394ejy.6.1681481333049; Fri, 14 Apr
 2023 07:08:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com> <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com> <20230413210221.4BED44D905@mail.futurelabusa.com>
 <6633af1b-5726-e020-83f4-24454739e486@gmail.com> <20230413225129.0E1C84D94B@mail.futurelabusa.com>
 <e1b58b68-2087-1793-5d6c-89ccdd949ded@gmail.com>
In-Reply-To: <e1b58b68-2087-1793-5d6c-89ccdd949ded@gmail.com>
Date: Fri, 14 Apr 2023 10:08:41 -0400
Message-ID: <CAB__hTQpM0UjbqmTy1SewrsvE2CS3hjZ84OQXPdsz5eW++QAfA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: G353Z6WUSJIZ7DSK24UV4Q7EFHJ5F3Q5
X-Message-ID-Hash: G353Z6WUSJIZ7DSK24UV4Q7EFHJ5F3Q5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jim Schatzman <james.schatzman@futurelabusa.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G353Z6WUSJIZ7DSK24UV4Q7EFHJ5F3Q5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4384823537360285125=="

--===============4384823537360285125==
Content-Type: multipart/alternative; boundary="0000000000008dbfdb05f94c6144"

--0000000000008dbfdb05f94c6144
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jim, Marcus,
I *believe* that "skip_dram=3D1" will have no effect on the N310 because it
does not use DRAM in the stock image (or even populate the dram-fifo RFNoC
block). The definition of the stock RFNoC graph for the N310 is here
<https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n310_=
rfnoc_image_core.yml>
.

Most of the "buffering" for the N310 transmit path is in the buff_size of
the streaming end points attached to the DUC (32768 samples) along with a
small amount of buffering at the DUC (defined here
<https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/bl=
ocks/duc.yml>)
and at the Radio (perhaps here
<https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/bl=
ocks/radio.yml>)
. The easiest way to increase buffering is to increase the buff_size of the
end points ep0 through ep3.  But, it is possible that doing so will cause
the build to fail. I don't know if Ettus max-ed these out or not. But, if
the build fails, another option is to get rid of the Replay block (and
associated end points) and the DDC (if you don't need it) to free up
resources.  Then you might be able to increase the end point buff_sizes.

But, if you want to use the DRAM as a FIFO (which will provide much larger
FIFOs), you should be able to just replace the 4 channel Replay block with
a 4 channel DRAM fifo (defined here
<https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/bl=
ocks/axi_ram_fifo.yml>),
making sure to get the RAM address width (and perhaps other parameters)
correct for the N310 (will be same as Replay block uses).  The DRAM is 2GB
so each FIFO "channel" could be configured for 125MSamples.

And, back to one of my previous comments, if you have a lot of host RAM
such that it would be a possibility to stream from a RAM-disk based file, I
believe it would be worth a try.
Rob

On Thu, Apr 13, 2023 at 7:59=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 13/04/2023 18:51, Jim Schatzman wrote:
> > N310 confirmed.
> >
> > Linux native.
> >
> > tx_samples_from_file produces underruns. So does a customized version o=
f
> tx_samples_from_file that uses multiple buffers and threads to guarantee
> constant send pressure.
> >
> > I understand that the N310 should not do this. I agree that the most
> likely culprit is the host computer, coupled with inadequate buffering in
> the N310. Does anyone know how much buffering it provides and what the
> associated timing is?  That is, what is maximum lag between UDP packets
> before the N310 will experience an underrun condition?
> >
> > In the Ubuntu host system log, there are messages during period in
> question from NetworkManager. Nothing indicating a connection problem, bu=
t
> consistent with my general believe that NetworkManager is an evil
> abomination whose primary job is to create trouble and frustration, we wi=
ll
> remove it from the workstation and try again.
> >
> > Thanks!
> > Jim
> >
> >
> This might seem counter-intuitive, but what happens if you use the
> "skip_dram=3D1" device argument?  Do things get better
>    or worse?
>
> The N310 has 2GiB of DRAM
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008dbfdb05f94c6144
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Jim, Marcus,<div>I *believe* that &quot;skip_dram=3D1&quot=
; will have no effect on the N310 because it does not use DRAM in the stock=
 image (or even populate the dram-fifo RFNoC block). The definition of the =
stock RFNoC graph for the N310 is <a href=3D"https://github.com/EttusResear=
ch/uhd/blob/master/fpga/usrp3/top/n3xx/n310_rfnoc_image_core.yml">here</a>.=
=C2=A0=C2=A0</div><div><br></div><div>Most of the &quot;buffering&quot; for=
 the N310 transmit path is in the buff_size of the streaming end points=C2=
=A0attached to the DUC (32768 samples) along with a small amount of bufferi=
ng at the DUC (defined <a href=3D"https://github.com/EttusResearch/uhd/blob=
/master/host/include/uhd/rfnoc/blocks/duc.yml">here</a>) and at the Radio (=
perhaps <a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/in=
clude/uhd/rfnoc/blocks/radio.yml">here</a>) . The easiest way to increase b=
uffering is to increase the buff_size of the end points ep0 through ep3.=C2=
=A0 But, it is possible that doing so will cause the build to fail. I don&#=
39;t know if Ettus max-ed these out or not. But, if the build fails, anothe=
r option is to get rid of the Replay block (and associated end points) and =
the DDC (if you don&#39;t need it) to free up resources.=C2=A0 Then you mig=
ht be able to increase the end point buff_sizes.</div><div><br></div><div>B=
ut, if you want to use the DRAM as a FIFO (which will provide much larger F=
IFOs), you should be able to just replace the 4 channel Replay block with a=
 4 channel DRAM fifo (defined <a href=3D"https://github.com/EttusResearch/u=
hd/blob/master/host/include/uhd/rfnoc/blocks/axi_ram_fifo.yml">here</a>), m=
aking sure to get the RAM address width (and perhaps other parameters) corr=
ect for the N310 (will be same as Replay block uses).=C2=A0 The DRAM is 2GB=
 so each FIFO &quot;channel&quot; could be configured for 125MSamples.</div=
><div><br></div><div>And, back to one of my previous comments, if you have =
a lot of host RAM such that it would be a possibility to stream from a RAM-=
disk based file, I believe it would be worth a try.</div><div>Rob</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Apr 13, 2023 at 7:59=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On 13/04/2023 18:51, Jim Sch=
atzman wrote:<br>
&gt; N310 confirmed.<br>
&gt;<br>
&gt; Linux native.<br>
&gt;<br>
&gt; tx_samples_from_file produces underruns. So does a customized version =
of tx_samples_from_file that uses multiple buffers and threads to guarantee=
 constant send pressure.<br>
&gt;<br>
&gt; I understand that the N310 should not do this. I agree that the most l=
ikely culprit is the host computer, coupled with inadequate buffering in th=
e N310. Does anyone know how much buffering it provides and what the associ=
ated timing is?=C2=A0 That is, what is maximum lag between UDP packets befo=
re the N310 will experience an underrun condition?<br>
&gt;<br>
&gt; In the Ubuntu host system log, there are messages during period in que=
stion from NetworkManager. Nothing indicating a connection problem, but con=
sistent with my general believe that NetworkManager is an evil abomination =
whose primary job is to create trouble and frustration, we will remove it f=
rom the workstation and try again.<br>
&gt;<br>
&gt; Thanks!<br>
&gt; Jim<br>
&gt;<br>
&gt;<br>
This might seem counter-intuitive, but what happens if you use the <br>
&quot;skip_dram=3D1&quot; device argument?=C2=A0 Do things get better<br>
=C2=A0=C2=A0 or worse?<br>
<br>
The N310 has 2GiB of DRAM<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008dbfdb05f94c6144--

--===============4384823537360285125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4384823537360285125==--
