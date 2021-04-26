Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF0236B55B
	for <lists+usrp-users@lfdr.de>; Mon, 26 Apr 2021 17:01:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04306384278
	for <lists+usrp-users@lfdr.de>; Mon, 26 Apr 2021 11:01:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BMHd4tn/";
	dkim-atps=neutral
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id C773A383DE4
	for <usrp-users@lists.ettus.com>; Mon, 26 Apr 2021 11:00:53 -0400 (EDT)
Received: by mail-ot1-f43.google.com with SMTP id 92-20020a9d02e50000b029028fcc3d2c9eso29861642otl.0
        for <usrp-users@lists.ettus.com>; Mon, 26 Apr 2021 08:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xdSBWyeDHPnkMNfwMRKzuxW2xAn29MsmG6IPK06tzcU=;
        b=BMHd4tn/Vn6kYePO6CEoIaW6NxWQ5SPm2O7sm0dcyNRXs1R6oW9I/Nq7wF/beD5prb
         35MSNclYDvA7Xl2PFz7C6osFiT3VvGjSddNHXLtBxzqiM2XoJssqNIDGUdS0OMsHK8wO
         miT8y5q9oYdeDld2XUOcZEvdixljrmb3DFO/NBKcwdc8Ifkq7yK6y3gsk0vpTR2Or5m/
         fg/2ifrHbhKUFvfj5IEeXY9rtNXAwCr3HKTsyUTv1roSHzOm5xDdShqV1UtyZvEG69aM
         uFnLuYf5XNqTO4HlMWsNOTA4HsFSXNcg8NBBnliLpSgCFE5YYfeqVwhsEkPqpBptW2hT
         XNGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xdSBWyeDHPnkMNfwMRKzuxW2xAn29MsmG6IPK06tzcU=;
        b=rZm0ZinNMD/tFlEKvhrZhOAC+v2ct6VJbtubNpUTO2bYyMuwZmAUy2Zo2sf3LOhgUv
         20/ijBzPKbKrdqQ3WDM5uBFewTFPzAPjXN1k25C3rPjh6y1FggaBS+BmfliuEi+mtigp
         LLKb2/UYYMca/zdlKa4uP+WfQEjLqEUWVMrCmSSiQSKS6n4Jm34TtI9Zwm/eOG1/1XMc
         f2xtCLl9NM0fjJiVnGH4oBiAJftaM/Sw3JfIVKpmM299BU/gy9Qe++yZxUDzzQLhC+E6
         HG+054LFCQqcmXUGAY4eNDzYsSQt/zJq/y4SBu1oNLs2CbgiVa9fVfxKcVC+RZow/Jaa
         76WQ==
X-Gm-Message-State: AOAM530zE0OzvWehao4bGg2ECjVzGNH5+HH/g0ka00JA0JoA2hu5clIz
	E62aSmxUKLjHw7ogAdx97kzchmAJGsI8WqwXjbU7AGZ8l/o=
X-Google-Smtp-Source: ABdhPJxPkoaY+ZGePsrRO4KZkIsYVgFCuHlMY4evXHhJeOIiSmDXCnu3K3XR5Sbc2ZHBS3eVX21dVncV3+3/en6UC6A=
X-Received: by 2002:a9d:7e8e:: with SMTP id m14mr14993122otp.302.1619449252962;
 Mon, 26 Apr 2021 08:00:52 -0700 (PDT)
MIME-Version: 1.0
References: <CALA1YLsO1E4vK764sj2VvBmtWMS2_oOkyqK1bbqxekNHCtqd3A@mail.gmail.com>
In-Reply-To: <CALA1YLsO1E4vK764sj2VvBmtWMS2_oOkyqK1bbqxekNHCtqd3A@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 26 Apr 2021 11:00:42 -0400
Message-ID: <CAB__hTSYkW3swnki363MhwV293NkWjq8p9DCyNmukryDWj+c=g@mail.gmail.com>
To: Edwin Harmon <edwinh4rmon@gmail.com>
Message-ID-Hash: 35RZPS3ZQYL5ZH6FU5KWGISWAMZBZANZ
X-Message-ID-Hash: 35RZPS3ZQYL5ZH6FU5KWGISWAMZBZANZ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Gating function block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/35RZPS3ZQYL5ZH6FU5KWGISWAMZBZANZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0578535061711442016=="

--===============0578535061711442016==
Content-Type: multipart/alternative; boundary="00000000000074baff05c0e169c6"

--00000000000074baff05c0e169c6
Content-Type: text/plain; charset="UTF-8"

Hi Edwin,
I have completed some similar blocks.  Even though your desired block is
very similar in function to keep_one_in_n, you might consider modeling your
block instead using the DDC example, which incorporates the axi_rate_change
module. And, since this module uses the older settings bus and 128-bit
tuser signal, you might consider using the ctrlport_to_settings_bus module
and re-building tuser from the sideband signals (as in the DDC example).

The axi_rate_change module will set the output packet size the same as the
input packet size, regardless of your values for M and N (note that your
defs of M and N are not quite the same as axi_rate_change defs of M and N).

Regarding your question about how to mark the end of frames, that is a bit
trickier. You could use either EOB or EOV, or you could do things on the
UHD side where your block controller knows M and N and can thus know that
each Mth sample is an end-of-frame.
Rob

On Fri, Apr 23, 2021 at 4:18 PM Edwin Harmon <edwinh4rmon@gmail.com> wrote:

> I would like to implement a gating function block with RFNoc 4 that passes
> M samples from the input to the output unmodified, "drops" the next N
> samples, and repeats indefinitely.
>
> This is obviously a generalization of the keep_one_in_n
> <https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/keep_one_in_n.v>
> block, so I am using this as my starting point with vector_mode always
> false. I've looked over the verilog code and the yaml configuration file
> and have a few questions.
>
> There is clearly a rate change in the block but nothing in the verilog
> code modifies the CHDR context; specifically the timestamp, length, and
> burst delimiters. Does the framework somehow automatically make these
> modifications to the header?
>
> I would like to write host code that can use this block without knowing
> the values of N and M a priori and also having the ability to dynamically
> set their values via register writes. In general M won't be equal to the
> payload size, P. For scenarios where M < P, is there a way to send the CHDR
> packet before it fills to size P to reduce latency? If not or If M >= P,
> would you recommend using context metadata to indicate the starting and
> ending samples of a frame?
>
> Thank you for your time and consideration.
> -Ed
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000074baff05c0e169c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Edwin,</div><div>I have completed some similar blo=
cks.=C2=A0 Even though your desired block is very similar in function to ke=
ep_one_in_n, you might consider modeling your block instead using the DDC e=
xample, which incorporates the axi_rate_change module. And, since this modu=
le uses the older settings bus and 128-bit tuser signal, you might consider=
 using the ctrlport_to_settings_bus module and re-building tuser from the s=
ideband signals (as in the DDC example).=C2=A0</div><div><br></div><div>The=
 axi_rate_change module will set the output packet size the same as the inp=
ut packet size, regardless of your values for M and N (note that your defs =
of M and N are not quite the same as axi_rate_change defs of M and N).=C2=
=A0</div><div><br></div><div>Regarding your question about how to mark the =
end of frames, that is a bit trickier. You could use either EOB or EOV, or =
you could do things on the UHD side where your block controller knows M and=
 N and can thus know that each Mth=C2=A0sample is an end-of-frame.</div><di=
v>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Apr 23, 2021 at 4:18 PM Edwin Harmon &lt;<a href=3D"mailto:edw=
inh4rmon@gmail.com" target=3D"_blank">edwinh4rmon@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>I would like to implement a gating function block with RFNoc 4 that p=
asses M samples from the input to the output unmodified, &quot;drops&quot; =
the next N samples, and repeats indefinitely.</div><div><br></div><div>This=
 is obviously a generalization of the <a href=3D"https://github.com/EttusRe=
search/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/keep_one_in_n.v" target=3D"_b=
lank">keep_one_in_n</a> block, so I am using this as my starting point with=
 vector_mode always false. I&#39;ve looked over the verilog code and the ya=
ml configuration file and have a few questions.</div><div><br></div><div>Th=
ere is clearly a rate change in the block but nothing in the verilog code m=
odifies the CHDR context; specifically the timestamp, length, and burst del=
imiters. Does the framework somehow automatically make these modifications =
to the header?</div><div><br></div><div>I would like to write host code tha=
t can use this block without knowing the values of N and M a priori and als=
o having the ability to dynamically set their values via register writes. I=
n general M won&#39;t be equal to the payload size, P. For scenarios where =
M &lt; P, is there a way to send the CHDR packet before it fills to size P =
to reduce latency? If not or If M &gt;=3D P, would you recommend using cont=
ext metadata to indicate the starting and ending samples of a frame?<br></d=
iv><div><br></div><div>Thank you for your time and consideration.</div><div=
>-Ed<br></div><br><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000074baff05c0e169c6--

--===============0578535061711442016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0578535061711442016==--
