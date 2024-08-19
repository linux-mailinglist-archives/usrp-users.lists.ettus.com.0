Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A14D9576B9
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 23:43:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42D0A3858C8
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 17:43:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724103793; bh=rWYt+gQc9T6d/thEpOG8OvCeSat7NHvC61W8PAky5sQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ec7Ls8cUpRmmvpUYK6Q+8RqM8oFE3uwR1veFX+YOpVDZbVDyOoSIvuzG3iD4sHsES
	 5vRpX3O0jY4xb4J7sXHBvxFKJ912VQw1mpqgvncHE0FDfv99u9wGhBFE4TO4mq3D1C
	 GC0tlz554/uVzT7lCMAhmqwfQmIFukt6CdiB3S3kNVs6wuNgaFAzod0wsv+SPFpTTr
	 UoEiit+tal5uPefgCwnPEKsyePu/R7u9Dhcen5Mr4IlId/oVxdBREX8GhP+OlbSdu9
	 VLCAh5DFK1pBsv4t8MXD0W3IZ9ApxjhZUN77X3s+iCg+U+ZCYRPSOFo7xi/VpXR/F1
	 1m/ITkyjGkz+w==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 34DF33858A5
	for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 17:43:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.edu header.i=@umass.edu header.b="MzpiCIRy";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6ba0527a2e7so15628537b3.2
        for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 14:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umass.edu; s=google; t=1724103783; x=1724708583; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/bkkF6aBqnW7YBsWq0wC73u2IV+BzvPxvSkAuhKiLws=;
        b=MzpiCIRywwSvgTOThA6qRG8YgPBX8tGGdwimwvF5EiqMh+BWAHx2pSsNLp1s6H9/7k
         9qmvdtFv+XaLBKDxYFp9f5i3l2CkOf69TASCSrReWJytmegHhToSFoBREuwreHQQF81a
         54jdEBx4yw4iX5sVDZpmzXvwTUDZJEsMncNSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724103783; x=1724708583;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/bkkF6aBqnW7YBsWq0wC73u2IV+BzvPxvSkAuhKiLws=;
        b=iJj5DH2Kq5ucEEPsyqiglywFaN1tbeS9w7R0VLah5zv9Vl7HsXrcqxy5Bp1+4fTU/g
         2Rvv7Rll5ymLzyWKK0YWdT54o2djP1dgTeM7qMFxalCcu2yCvwSJiY8WOF9fdSbfU88g
         1lnCSPJunRa+Badaatpo/nBaPUKztZzK79AP7sQiEMhZWi+VIKgMxBgBIDD9UPArHUuZ
         5uk+C4VZ6odqd/7bBmLFJ7O57jySRd6zB9tkLrBJ8CkA/ngxMVZc864/GIcm+bHLABFc
         7xAOSHh0sGZK39NgKRGoQUrKG6eprENkjSr+Aldcj/Z/asr8ZZ5GFjfUtsD4kL7ytV/1
         cHPw==
X-Forwarded-Encrypted: i=1; AJvYcCVb/MIAQ+o14z1k6ZZkB7aFQFxpjOzAtsvcFVjkIp9gD+9XpchmvX+GmzUGBZWA0aF5GHLr5WU1wPdv@lists.ettus.com
X-Gm-Message-State: AOJu0YxaoZ1K37LbHYi8OYnExMbfYl/XL+yUZcAhDnClopDtleuHCdfJ
	PDKYKl5lfsQs6JU1Xb+ScR2Ub7/iqV8sCB8O7RPyvjSHN20t6Dh08rE/i6AGlNPiaKzj2sb3cbj
	hYEm2OZy2f/lclv5EkBIlOIYgivKlMilDoZUMUg==
X-Google-Smtp-Source: AGHT+IGjdrABwpKEyNyCtvL+Uz/W504vBKz5jduQQGDTASLUU3b14pruETXG5wapWdyiPYnvJHYZ+Vq3Dn6THDzHopY=
X-Received: by 2002:a05:690c:60ca:b0:6b7:a7b3:8d94 with SMTP id
 00721157ae682-6b7a7b3925bmr58616617b3.6.1724103783529; Mon, 19 Aug 2024
 14:43:03 -0700 (PDT)
MIME-Version: 1.0
References: <CANwDeJYL6fQ6Uso9=xOGhWaMhG+L-VjNn4ZBX21E4Kd2R8Q3PQ@mail.gmail.com>
 <a748f96e-a740-43f8-99a3-c2f29c7fd66c@gmail.com> <CAFOi1A7ERa3-wZKF5y-E3otDnq3U_DZusn3U_WG6beqtzC=qBg@mail.gmail.com>
In-Reply-To: <CAFOi1A7ERa3-wZKF5y-E3otDnq3U_DZusn3U_WG6beqtzC=qBg@mail.gmail.com>
From: Ekin Su Sacin <esacin@umass.edu>
Date: Mon, 19 Aug 2024 17:42:52 -0400
Message-ID: <CANwDeJYQcJ+H8nzbSJR0L7kxhpAv1ed2_DJQt_-mxVAtQ15wYg@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: WOYMKVIBFWTNLCE6TDHFI5K4JLVSKDNZ
X-Message-ID-Hash: WOYMKVIBFWTNLCE6TDHFI5K4JLVSKDNZ
X-MailFrom: esacin@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with KeepOneInN
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WOYMKVIBFWTNLCE6TDHFI5K4JLVSKDNZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7442456546197426401=="

--===============7442456546197426401==
Content-Type: multipart/alternative; boundary="00000000000092e7560620103143"

--00000000000092e7560620103143
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I've added a Keep-One-In-N block before SEP0, and it is visible under
static connections when I probe the device. However, after modifying
"rfnoc_rx_to_file", I am encountering the following
warnings:                                                   [WARNING]
[RFNOC::GRAPH::DETAIL] Cannot forward action stream_cmd from
RxStreamer#0:INPUT_EDGE:0, no neighbour found!
Timeout while streaming
[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action stream_cmd from
RxStreamer#0:INPUT_EDGE:0, no neighbour found!

                                                                         It
seems like the stream command is not being forwarded correctly. Could you
provide guidance on what might be causing this issue?

Thanks,
Ekin



On Mon, Aug 19, 2024 at 10:19=E2=80=AFAM Martin Braun <martin.braun@ettus.c=
om>
wrote:

> Also, did you build a bitfile that includes the keep-one-in-N block?
>
> --M
>
> On Thu, Aug 15, 2024 at 10:08=E2=80=AFPM Marcus D. Leech <patchvonbraun@g=
mail.com>
> wrote:
>
>> On 15/08/2024 15:52, Ekin Su Sacin wrote:
>>
>> Hi all,
>>
>> I am working with USRP X310. I am trying to adjust the 'N' value for the
>> KeepOneInN block but am encountering issues at the application level. I
>> have defined my usrp device using uhd::usrp::multi_usrp, but I'm running
>> into fatal errors related to <uhd/device3.hpp> and
>> <uhd/rfnoc/block_control_base.hpp> when attempting to use sr_write. I am
>> currently using UHD 4.2.0.0. Is using
>> <uhd/rfnoc/keep_one_in_n_block_control.hpp> the only way to customize th=
is
>> block and is there a way to do that using a usrp device instead of
>> creating the rfnoc graph object?
>>
>> Thanks a lot for your support.
>>
>> Best Regards,
>> Ekin
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> You can't "mix metaphors".  You need to create an RFNOC graph, NOT use
>> the "multi_usrp" API.
>>
>> See the examples, like "rfnoc_rx_to_file" in the codebase.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000092e7560620103143
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Yes, I&#39;ve added a Keep-One-In-N block=
 before SEP0, and it is visible under static connections when I probe the d=
evice. However, after modifying &quot;rfnoc_rx_to_file&quot;, I am encounte=
ring the following warnings:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forw=
ard action stream_cmd from RxStreamer#0:INPUT_EDGE:0, no neighbour found!<b=
r>Timeout while streaming<br><div>[WARNING] [RFNOC::GRAPH::DETAIL] Cannot f=
orward action stream_cmd from RxStreamer#0:INPUT_EDGE:0, no neighbour found=
!=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 It seems like the stream command is not being forwarded correctly.=
=C2=A0Could you provide guidance on what might be causing this issue?  =C2=
=A0=C2=A0=C2=A0</div><div><br></div><div>Thanks,</div><div>Ekin =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 </div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Aug 19, 2024 at 10:19=E2=80=AFAM Martin Braun &lt;<=
a href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Also, did you build a bitfile that includes the keep-one-in-N blo=
ck?</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 15, 2024 at 10:08=E2=
=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 15/08/2024 15:52, Ekin Su Sacin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi all,</div>
        <div><br>
        </div>
        <div>I am working with USRP X310. I am trying to adjust the &#39;N&=
#39;
          value for the KeepOneInN block but am encountering issues at
          the application level. I have defined my usrp device using
          uhd::usrp::multi_usrp, but I&#39;m running into fatal errors
          related to &lt;uhd/device3.hpp&gt; and
          &lt;uhd/rfnoc/block_control_base.hpp&gt; when attempting to
          use sr_write. I am currently using UHD 4.2.0.0. Is=C2=A0using
          &lt;uhd/rfnoc/keep_one_in_n_block_control.hpp&gt; the only way
          to customize this block <code></code>and is there a way to do
          that using a usrp device instead of creating the rfnoc graph
          object?</div>
        <div><br>
        </div>
        <div>
          <div>Thanks a lot for your support.</div>
          <div>
            <div><br>
            </div>
            <div>Best Regards,</div>
            <div>Ekin<br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    You can&#39;t &quot;mix metaphors&quot;.=C2=A0 You need to create an RF=
NOC graph, NOT
    use the &quot;multi_usrp&quot; API.<br>
    <br>
    See the examples, like &quot;rfnoc_rx_to_file&quot; in the codebase.<br=
>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000092e7560620103143--

--===============7442456546197426401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7442456546197426401==--
