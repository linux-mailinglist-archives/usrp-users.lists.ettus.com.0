Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC4EBC425C
	for <lists+usrp-users@lfdr.de>; Wed, 08 Oct 2025 11:23:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C457384088
	for <lists+usrp-users@lfdr.de>; Wed,  8 Oct 2025 05:23:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759915411; bh=pRlX3f2WkAy/iR9YIub29jYR8rlDzk44EDbLwG/oGAM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=s2+0GIcEXSVAKnc0xQNg1gMSDB6gSpgoNiqhLc9HoB83y0wl6K60qMz1mkB9emaLR
	 eCvDBghIPY6jSFMabYnulzgujzGrsGnJyYFZ72F13ye9w07hgmnLKUfcYYvNgnFVSa
	 Q/UWNGr806YvLePs1u6kmjmEh+a5ojt65c09XvSlT5odmjDTa/X9/l9vvS/BJXeSIr
	 vKsbB6iub2H9jPXPHL3abOzYoIeH6rWQa5GfnWR7W4gwElZvPbehqEsgsmGYAsikD7
	 2tEijHcQxZLdMKCH8F99dah9dXiyyf8/4ldYlpuHofCwmUlmtL2smZ9kS7sXLWnifo
	 kbT3C01PkrAQQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id A20E73861F0
	for <usrp-users@lists.ettus.com>; Wed,  8 Oct 2025 05:22:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="eOPu1HmD";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-62fa062a1abso13347867a12.2
        for <usrp-users@lists.ettus.com>; Wed, 08 Oct 2025 02:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1759915377; x=1760520177; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WPEjaLbsvfoybwL8EM6azP2STAqj/FKyf2SdWPMMDYY=;
        b=eOPu1HmDX3/zwDnWZj5O9HAz+Cg26FBw8xqyYMK8ktIJJfCbVNvCIt9meE82N87g4l
         P3q2tXTql4YUiRXAjj0TvgBw62KlVFKZdNVBC/V4OB9G+UuJwAVlSdIp/m3q74RM7Nuf
         w9U0jtzMxhxsJ8nE5fOWtfTI/+Qv/U61sycGcuw8txu5bVMEfjsgqnLLdNWXHXxFMmVc
         4+vDGNCfPRrgWzn5+gc67oec/N6OuTBSYEb0ZgzOXpHll27dPZOFDsGRTpfsOBG+vVgH
         uUlZOFC5UQcS1qtNyRbz/ieMyjUKyNkrC169w87G85YMp5m2Xsg16OOvdiXhW74aI4LY
         Bu7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759915377; x=1760520177;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WPEjaLbsvfoybwL8EM6azP2STAqj/FKyf2SdWPMMDYY=;
        b=eDnxXZ6vIFpTHfR6mBzm40oNgqKJpNJAPTWuhbAVrRuv81psnfU33zoXzRuDUMufHw
         X+bsiivtUWupt3nelOmBKiR3cZMuCP5fNeAQOfQDzuDeanmPq6ioTREV34AstK5/uDUd
         en+kjGX9TfAyH0uWlhVirTYp/+ioBhwOjem/NpYvuVThQV4nwWK4jOIKRFivtohaqEZu
         zzXbuXyAAZWxjiSgZHH8wVn8SCPIYyvcSmoi9jcQG6jgR3W4YqihGZ7aQjyYLH8dqIrX
         QAWpAOKtABH8DR1eCX+X08az0nW3mgNcPTiMM6O522Te15qrUhhdhcKxC4ndtoAK6gy5
         I5oA==
X-Gm-Message-State: AOJu0YwI1AjxqK7+MJwdPHQN4tY9xfHYuKh28dZFClTpyl8IJC+hsK3I
	5NElp6Nu+QMUqMkt4PBMsySvQVihyuOoA62GOBFnZWNWTxOOYuwJED/1I+Gw8P80wCmHuLuR2Wi
	CvpZQhbDOeCOZOy/3OvS9ukxyBi7roKAIxrecQFMEtTHexANtDR3iF20HI1rL
X-Gm-Gg: ASbGnctRhtvGOYiIyABTu9V3Tx5QC/kazJFajhFzjcbrWoNVSyvZo2LZlofQRY6iq1b
	rJGkVkdRD+GrfhywWo6qVdE+y3XqxnxQYZdgV2xOUk8ZNxv+ckK1zXejvWDxY/umL688wbWWz4e
	6KnRP3AOHzE4sJeJrVmjMzWebcmTcX+bgBgb61uVbNr7BmnK0pjj3ExEPP/mSqtRVm+59cq+fRT
	DM5JflhdddruJJXmizNNcpb4OfPCfbOdoRpLru6E50fLaUKZpd48IzS9VnF
X-Google-Smtp-Source: AGHT+IHhhonPfPnKdGwgrI6Anp0wkoChlKQlIK4uoTkFC+MI51da4hQtY4O6mh5AkxFFAPp57+29RGOzBB+oOw6YZHs=
X-Received: by 2002:a17:907:7ba5:b0:afe:87bd:da59 with SMTP id
 a640c23a62f3a-b50ac2cf045mr298969366b.42.1759915376758; Wed, 08 Oct 2025
 02:22:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRcNyfshCagutk5SJVp+aaxRLbL8AdBO4pcoSrjyadXPg@mail.gmail.com>
In-Reply-To: <CAB__hTRcNyfshCagutk5SJVp+aaxRLbL8AdBO4pcoSrjyadXPg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 8 Oct 2025 11:22:46 +0200
X-Gm-Features: AS18NWC-k2tWCOvIsPDJeAvP-vPudEJI6whY-B6oZBZra4aTpQOL9vS1OysSuBI
Message-ID: <CAFOi1A5H3S5N76TnsjXQ2mjF=bX13zEgmpUd1bj9TO2aVEmJQg@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ZWGYMEJMOZZM6WX33LNRY6TJSONA7OA4
X-Message-ID-Hash: ZWGYMEJMOZZM6WX33LNRY6TJSONA7OA4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to know streaming rate in arbitrary graph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZWGYMEJMOZZM6WX33LNRY6TJSONA7OA4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7986392291349891318=="

--===============7986392291349891318==
Content-Type: multipart/alternative; boundary="000000000000de068c0640a23a9d"

--000000000000de068c0640a23a9d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Rob,

this is a great question. The short answer is: You don't have access to the
info, even though the Streamer is a node in the RFNoC graph. I believe that
would be a great API extension, but I would have to think about how to
cleanly integrate that without breaking any other APIs.

You may have noticed we extended the streamers with the
post_input_action()/post_output_action() APIs that add RFNoC-features to
the streamers, and they don't do anything for non-RFNoC devices (like the
B2xx). Something like this may be the solution. But as of now, there's no
solution for you.

--M

On Fri, Sep 26, 2025 at 9:37=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I have a custom c++ application that uses UHD to connect to RFNoC USRPs
> and tries to behave appropriately for arbitrary graphs. I'm most interest=
ed
> in directed graphs that go from the Rx radio to Rx streamers through some
> series of blocks including rate changing blocks such as DDC. I'm wonderin=
g
> if there is a generalized approach that would allow me to know the sample
> rate of the samples coming through a given streamer.
>
> Specifically, I just built an RFNoC image where the one Rx radio output
> was connected to a 1:2 SplitStream block and then to a 2-channel DDC whic=
h
> would allow me to downconvert 2 areas of the instantaneous spectrum from =
a
> single radio channel (e.g., GPS at 1176 and 1226 MHz).  The DDC outputs
> then go to 2 Rx streamers.
>
> My understanding is that property propagation would cause the DDC to
> notify downstream blocks of the change to the EDGE property "samp_rate" o=
r
> something like that.  But, how can the UHD API user get access to this
> info.  I realize that the rx_streamer is not actually an RFNoC block but =
it
> is conceptually similar in many ways.  If I could call a function on the
> rx_streamer such as "get_input_rate()" (as I can using the DDC block
> controller), I would have a generic way to know the sample rate of the
> incoming stream.
>
> Let me know if there is some way to obtain this information from UHD.
> Thanks.
> Rob
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000de068c0640a23a9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Rob,</div><div><br></div><div>this is a great que=
stion. The short answer is: You don&#39;t have access to the info, even tho=
ugh the Streamer is a node in the RFNoC graph. I believe that would be a gr=
eat API extension, but I would have to think about how to cleanly integrate=
 that without=C2=A0breaking any other APIs.</div><div><br></div><div>You ma=
y have noticed we extended the streamers with the post_input_action()/post_=
output_action() APIs that add RFNoC-features to the streamers, and they don=
&#39;t do anything for non-RFNoC devices (like the B2xx). Something like th=
is may be the solution. But as of now, there&#39;s no solution for you.</di=
v><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_qu=
ote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 26, 2025 a=
t 9:37=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</di=
v><div>I have a custom c++ application that uses UHD to connect to RFNoC US=
RPs and tries to behave appropriately for arbitrary graphs. I&#39;m most in=
terested in directed graphs that go from the Rx radio to Rx streamers throu=
gh some series of blocks including rate changing blocks such as DDC. I&#39;=
m wondering if there is a generalized approach that would allow me to know =
the sample rate of the samples coming through a given streamer.=C2=A0</div>=
<div><br></div><div>Specifically, I just built an RFNoC image where the one=
 Rx radio output was connected to a 1:2 SplitStream block and then to a 2-c=
hannel DDC which would allow me to downconvert 2 areas of the instantaneous=
 spectrum from a single radio channel (e.g., GPS at 1176 and 1226 MHz).=C2=
=A0 The DDC outputs then go to 2 Rx streamers.=C2=A0=C2=A0</div><div><br></=
div><div>My understanding is that property propagation would cause the DDC =
to notify downstream blocks of the change to the EDGE property &quot;samp_r=
ate&quot; or something like that.=C2=A0 But, how can the UHD API user get a=
ccess to this info.=C2=A0 I realize that the rx_streamer is not actually an=
 RFNoC block but it is conceptually similar in many ways.=C2=A0 If I could =
call a function on the rx_streamer such as &quot;get_input_rate()&quot; (as=
 I can using the DDC block controller), I would have a generic way to know =
the sample rate of the incoming stream.</div><div><br></div><div>Let me kno=
w if there is some way to obtain this information from UHD.</div><div>Thank=
s.</div><div>Rob</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000de068c0640a23a9d--

--===============7986392291349891318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7986392291349891318==--
