Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D63D598E56
	for <lists+usrp-users@lfdr.de>; Thu, 18 Aug 2022 22:50:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD0AB384AF7
	for <lists+usrp-users@lfdr.de>; Thu, 18 Aug 2022 16:50:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660855848; bh=lqY5ytHKk/PmCG4+NlvbuxcW2P6m68l2Wr7d22ipc5s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0bM44iD36HtLDra4E62fx3uTOZ1X+D98ZFZh3vKnQE0pvoBEhHlNFfuxLItVFIJOZ
	 sc/9TSGvMJ96qd0br/BLbmMZ3otLjJktyt+hY/5JEUsW+hvbKqVnzRB0cCOUmcGKP/
	 gwNvc1wxqiC9Ths8RbzSbu9oaA6Fg96R8HNeIWfMi3mqmqnHDWh9cslFHnyWjqBE7F
	 n3mVYSm7WNrXILYuFgtOQXY1+7v2xFTtbUB4LO7tdPY/WnsqxQ+0y0achqA8c4krdB
	 +YRaSSGbTJ5fN2sbhtcwF8oAu0hRg5gAfYpcf58dsjn2eClytKq+BK0sxoSs1OYIbV
	 idIWw68EjoaMg==
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id D5A3B384AD7
	for <usrp-users@lists.ettus.com>; Thu, 18 Aug 2022 16:49:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="fUJARo2i";
	dkim-atps=neutral
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-333b049f231so73562657b3.1
        for <usrp-users@lists.ettus.com>; Thu, 18 Aug 2022 13:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=/SJIhH4vm2w2vsGNpwrLg316njkqKmLEdBbaVpwy7Zw=;
        b=fUJARo2i4FJDnhPq9RSpqxRJhJqCaiUKtwnehuxF9gPv0F5AV9Skk7hXHSk8Qn33ky
         y42WM6qPTo4JHZBytLUPvSgqvmuy1nezK7e0k3kBuKhZAX+Aj/3ar7CcrNJScaES2Z58
         EtqrBMds4Od6sHJO1V+EzaAOeXioSFiHO0UzLzCUo6ERyv6XBxM/oph13qxwSj1X32WX
         Aa++LZB/2/iwM3ejgueyjKh9kQ3xjYvTtLNh+iJLiDXuQd2TUtOHZP23tmjuvd8zwpkb
         SNAGCU/wYnq9aPKJ+1tmoICRe//z6QDqAI/zuTRTwFv9yDvz3wDXHCLw81xc0X3THoqA
         8bOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=/SJIhH4vm2w2vsGNpwrLg316njkqKmLEdBbaVpwy7Zw=;
        b=xxPw3EtPApTlTMoIW1t95YPntJpJM527ECKDHshqUFpjg3y5UD/f1l0idcrQaeZbAI
         8DpsI0saLVID4ZCDiFHZcNiaeHekvNGUCa4Tpgzb5ewVsCF99SFN1QzyTvRtpYmaPgGC
         0L/lLR72jrXbkhL0cpoiJ5UsnhOhUW3rAd5hleQG/0RKBzw0+X5bK3t9jZsqTFwU3oZg
         G6NnTqYXNqvBTuxUcf2Wkg+duiR4eTkjt9F1au9bHr3/bW3R+ZEJXxjzaSfstNRiMOMR
         29dA+WqcdVJQylc8/TzT2JynvygEzVb8AClOnSMvmYDYdTfFslvSFkmXyRPvqFQjwann
         upkQ==
X-Gm-Message-State: ACgBeo00qW+d/Xbdk2FhsFeQnPFnNQ/MsQ9qsP0+zWMclZ+WuETXyAsj
	H6SV5mXmeTkSlfq8Z9n1U5GJTbpXxYrAVow1bxrTCQFpOc0=
X-Google-Smtp-Source: AA6agR4qOejDXQfSNpRoei49IsdDFBNSoqukjyRkuIFAhpi3GFR7ky4rEtscF3BX3ERmfvyN5OdQqGZWqfDeWhgrLaM=
X-Received: by 2002:a05:6902:120f:b0:676:aaa4:8434 with SMTP id
 s15-20020a056902120f00b00676aaa48434mr4881197ybu.218.1660855772016; Thu, 18
 Aug 2022 13:49:32 -0700 (PDT)
MIME-Version: 1.0
References: <YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8@lists.ettus.com> <CAB__hTSx=35DRBFwSuhTP54M-+yOXGpvJCouEu1q0iUAa82cpg@mail.gmail.com>
In-Reply-To: <CAB__hTSx=35DRBFwSuhTP54M-+yOXGpvJCouEu1q0iUAa82cpg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 18 Aug 2022 16:49:21 -0400
Message-ID: <CAB__hTQj71KwcgLjOBYQdPLZ1K0L_JrRTh-CHp-JpG3OorhfxQ@mail.gmail.com>
To: adrian.campos@integrasys-sa.com
Message-ID-Hash: JTE6L6M74OUYMXJY5XYTQMK63VGME5MB
X-Message-ID-Hash: JTE6L6M74OUYMXJY5XYTQMK63VGME5MB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI_RAM_FIFO Controller
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JTE6L6M74OUYMXJY5XYTQMK63VGME5MB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6041230288816332386=="

--===============6041230288816332386==
Content-Type: multipart/alternative; boundary="00000000000050cd2505e68a1e59"

--00000000000050cd2505e68a1e59
Content-Type: text/plain; charset="UTF-8"

Replace "upstream" with "downstream" below.

On Thu, Aug 18, 2022 at 1:28 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Adrian,
> As you indicated, the RFNoC blocks axi_ram_fifo and Relay both use the
> FPGA RAM.  axi_ram_fifo doesn't need any registers for control because it
> just accepts an AXI stream on the input and forwards that exact stream on
> the output.  The "control" is in the AXI tvalid/tready handshaking. Thus,
> if the upstream block is not ready, the FIFO starts filling up but does not
> empty until the upstream block is ready.  But, for the Replay block, this
> block stores the incoming stream to RAM until you later decide to play it
> out.  It can be used in the transmit path to load a waveform into RAM such
> that it can be played out to the Tx Radio without any help from the host
> PC.  Or, it can be used in the receive path to store receive samples as
> they arrive (up to the given RAM memory depth) and then later downloaded
> (played out) to the host PC in non-realtime.
>
> While I don't know your specific application, I wondered if the Replay
> block (or the axi_ram_fifo) can already implement your desired
> functionality such that a custom block is not needed.
> Rob
>
> On Thu, Aug 18, 2022 at 8:25 AM <adrian.campos@integrasys-sa.com> wrote:
>
>> I am making a custom block which has to start storing data to be read
>> later, in other words store the data in a FIFO. I am interested in using
>> the RAM provided by the E320 so I want to take advantage of the
>> axi_ram_fifo code. However, I don't really understand the control of that
>> block, how can I control when to start writing data to memory and when to
>> start reading it? I have checked the registers in case it could be
>> controlled from there like the replay block that has two registers to start
>> reading and another one to do a restart but I haven't seen anything like
>> that.
>>
>> I hope you can help me. Thank you very much in advance
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000050cd2505e68a1e59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Replace &quot;upstream&quot; with &quot;d=
ownstream&quot; below.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Aug 18, 2022 at 1:28 PM Rob Kossler &lt;<a hr=
ef=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Adrian,<di=
v>As you indicated, the RFNoC blocks axi_ram_fifo and Relay both use the FP=
GA RAM.=C2=A0 axi_ram_fifo doesn&#39;t need any registers for control becau=
se it just accepts an AXI stream on the input and forwards that exact strea=
m on the output.=C2=A0 The &quot;control&quot; is in the AXI tvalid/tready =
handshaking. Thus, if the upstream block is not ready, the FIFO starts fill=
ing up but does not empty until the upstream block is ready.=C2=A0 But, for=
 the Replay block, this block stores the incoming stream to RAM until you l=
ater decide to play it out.=C2=A0 It can be used in the transmit path to lo=
ad a waveform into RAM such that it can be played out to the Tx Radio witho=
ut any help from the host PC.=C2=A0 Or, it can be used in the receive path =
to store receive samples as they arrive (up to the given RAM memory depth) =
and then later downloaded (played out) to the host PC in non-realtime.</div=
><div><br></div><div>While I don&#39;t know your specific application, I wo=
ndered if the Replay block (or the axi_ram_fifo) can already implement your=
 desired functionality such that a custom block is not needed.</div><div>Ro=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Aug 18, 2022 at 8:25 AM &lt;<a href=3D"mailto:adrian.campos@=
integrasys-sa.com" target=3D"_blank">adrian.campos@integrasys-sa.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I am=
 making a custom block which has to start storing data to be read later, in=
 other words store the data in a FIFO. I am interested in using the RAM pro=
vided by the E320 so I want to take advantage of the axi_ram_fifo code. How=
ever, I don&#39;t really understand the control of that block, how can I co=
ntrol when to start writing data to memory and when to start reading it? I =
have checked the registers in case it could be controlled from there like t=
he replay block that has two registers to start reading and another one to =
do a restart but I haven&#39;t seen anything like that.</p><p>I hope you ca=
n help me. Thank you very much in advance</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--00000000000050cd2505e68a1e59--

--===============6041230288816332386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6041230288816332386==--
