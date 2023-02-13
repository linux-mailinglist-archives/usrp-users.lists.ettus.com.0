Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A8B69478B
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 14:57:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C62E63844C5
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 08:57:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676296667; bh=h+prJVjn6CUwLK1b2Kk9J3vZSlIIjWf/qI5RV0YOwII=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hLnnhJRxhGqo21laQSQRHkv8IQvz58k7KiBND1o0Vbs/qiVv056Pp6VC6SnnUfZ3q
	 hcKZFDEIDk1KcogPz0ibkCttg2tkDQH6n06+Xd/qfr66oV+/zZFah/WOiikGcqRO1Y
	 5t91SBM3ydBKnPM/yVjjDVMFVMm6eitDUNfKSYmqZPE0kdkxBkLcHzN3ui5t0u2QHJ
	 91rCQGDKmHWc3oAgt83ZrSTeCCU+fsWh0nVIkTYUuGuGVOW2T0tsAm1gKX8i1rpn9j
	 AW3k7wHAEH/ICnvy2V2ChKIyTk4X8ciyTKxFLAe25eURDm/Deew+XhJWSI0KXynKt0
	 o6RGi5VJcHL9g==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 46A9C3844C5
	for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 08:57:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fg9HWgHY";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id p26so31995750ejx.13
        for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 05:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MKCKkmpM5sknIj5WmxUWsouvCIn8f1k/DOSx/uTKB3k=;
        b=fg9HWgHYuyNNJTlXtbuZ7UimEQk1Cjr/yZQJZQCugYokX79VDcvCeXJIYlH7x6nX8e
         BXyZMgWtqSiqGQ/RzKR33TYQYXz1OwVnrxuMMogxFFgqTN51A6ud9eqTDFrSTyDd2YUb
         7/1tCDsIIt6gXjS7UH3bX3PeXyRtOLcuaZFUb1roURqsBkX9R5Dy7xUSekJ53qpVq+H1
         fZsm3cCYY9/BEvTfYqMOFM2o2VMi946UVz8flNjOC/sfveXUcrUO9ea2h9EjuCTpvb0Q
         EUHgn+M1srOz1B932hy6umuY15kHci3NrWU0B5xxkYKLFCQ/1Sdpi+LEocY2SGG+K6bv
         G7sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MKCKkmpM5sknIj5WmxUWsouvCIn8f1k/DOSx/uTKB3k=;
        b=VGWG8MNymZ4JZqSdAGgecbydbh9Pv/zh9Y4VexLDB12/StWf2v5cCuSkw1YSuqeAN9
         QRe3/x5BEKo07qieusBI3DFD5rH8nzo0EagUkAd4XeMuYEmQOfEEdvpblh3ID4vcqhlv
         nYLr1Eb7G1fv+SrNkd8byt2f4Ri6ssC8V3pLFEBDG0o35LzJjYj4jVHjvOz4p8TGhWNN
         vbEMNRy7UP/LOZNMB0HO70MsMEr8+YIFjhdyQhzKO3evgs4IFQinDClJdXCpd3CyblVu
         u5wB20Tzm6alBONRmy12TfkdnlvhID+drk82BjAKeG9hr5iAmhFAOIb37VxPH7v2YtiO
         zFQQ==
X-Gm-Message-State: AO0yUKVxd4ZKS+XvjNtXhgMCG1/1EQqT1nwG29RLxaTVdvHcoyCZceGy
	gFuUt+nis3gnirSOSrKA8yUVkrflYxoG3koxm32CZq121THKLg==
X-Google-Smtp-Source: AK7set8Nkxu4UGY3BAndZC91mND+xsRquVohlAZ2fQfETHXpifrGsK7z6M8Fs83k3fcgChcDZP53fhaZsbA4qiLUK2A=
X-Received: by 2002:a17:906:7716:b0:877:ef6d:8e59 with SMTP id
 q22-20020a170906771600b00877ef6d8e59mr4829594ejm.8.1676296660599; Mon, 13 Feb
 2023 05:57:40 -0800 (PST)
MIME-Version: 1.0
References: <CAJhOL6e-nU-DfDhH6ydfxfmo4t__UpPjYGFuPGeo5c=u8MJwEA@mail.gmail.com>
In-Reply-To: <CAJhOL6e-nU-DfDhH6ydfxfmo4t__UpPjYGFuPGeo5c=u8MJwEA@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Mon, 13 Feb 2023 15:57:04 +0200
Message-ID: <CAJhOL6dHvMMvkVRmR+-OXSy=zT=hGmUtp1D7aMFO5mOf0Qwhjw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: TE36IJH7U3YBLILS6A4MMZUXHATJDOK5
X-Message-ID-Hash: TE36IJH7U3YBLILS6A4MMZUXHATJDOK5
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tkeep
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TE36IJH7U3YBLILS6A4MMZUXHATJDOK5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8672759602540252882=="

--===============8672759602540252882==
Content-Type: multipart/alternative; boundary="000000000000fe478605f4953a3e"

--000000000000fe478605f4953a3e
Content-Type: text/plain; charset="UTF-8"

Ah, apologies. Some ambiguity in the naming.

From the spec:

NOTE: The granularity of this field is item and not byte. This behavior is
different from the standard AXI4-Stream tkeep.

On Mon, 13 Feb 2023 at 14:43, Kevin Williams <zs1kwa@gmail.com> wrote:

> Hi Everyone,
>
> Why is TKEEP always 1-bit wide on m_in_payload_tkeep and
> s_out_payload_tkeep in the rfnoc gain example, when, according to the AXI
> spec, it should represent the number of bytes to be kept as far as I
> understand?
>
> Thanks,
>
> --
> Kevin Williams
>


-- 
Kevin Williams

--000000000000fe478605f4953a3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Ah, apologies. Some ambiguity in the nami=
ng.<br><br>From the spec:<br><br><div>NOTE: The granularity of this field i=
s item and not byte. This behavior is different from the standard AXI4-Stre=
am tkeep.</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, 13 Feb 2023 at 14:43, Kevin Williams &lt;<a hr=
ef=3D"mailto:zs1kwa@gmail.com">zs1kwa@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr">Hi Everyone,<div><br></div><div>Why is TKEEP always =
1-bit wide on m_in_payload_tkeep and s_out_payload_tkeep in the rfnoc gain =
example, when, according to the AXI spec, it should represent the number of=
 bytes to be kept as far as I understand?</div><div><br></div><div>Thanks,<=
br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Kevin Williams</div=
></div></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Kevin Williams</div>

--000000000000fe478605f4953a3e--

--===============8672759602540252882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8672759602540252882==--
