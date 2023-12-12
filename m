Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBE380F67B
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 20:20:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5463F385438
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 14:20:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702408818; bh=8EZSGJVnJ6BAb6RQUJBk1zDdmAofthB0qm1aXWN/ZTc=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=dsWxvd08O4zDjRaBo66xJeX0S+bAF9aSiYe3qGsVbjhxik6JkRQl3FZ4rTlWoGDzR
	 rSopE/UMu28N3Xneo8d8yrZNicdftWg4O0R00pZ1yIoifIV0Uxnv1mIknrMwbOpSns
	 UmE18cFKwW59cPVCnOAE+6famwjZ4/tkeJrYTIB4V99liCb7NvOY3RU3z2Ue7pxEMZ
	 +hhlLGVFO4QrR13bCLPkD+JA1nWcV3ZQpbw8bvKZoPAOSwaXyo3cjjVEggIo40lRB/
	 PqDXvD27MfvcCk1jlUCJoI7S/FAp4dBbKW7r1mNxBNVj91pZZNNRC7DzOlN8iil4Q0
	 S0AWHlpeK7X4w==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 41DA438532C
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 14:20:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="fCfYT5Rs";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-54c9116d05fso8257923a12.3
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 11:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702408812; x=1703013612; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ADR9AiBzJdHA7LvhXaUiK1mGBgvpd1FYaNTyDj95URw=;
        b=fCfYT5RsmbebWqw1NG1EANGYMLlCwatFtoLXz8s4k0m9EQ1R4EEAq3nWSAKVhTMgia
         9jznagxSAb985IWsKlEiRifLkck8skTz8X7ZqtEbFxX2Ld8wZNGcgcvKiTY8YsnGN7If
         K6f/vfUhzG9LCC1VsNvssMu4+MSry4w7vHkP+9+Y/JXA7WM/9OWPJ4jp16jRxqzouDYU
         +MZWVfjV6ZRsbxROYB+v8zNeHVrL0dqnnYWLgR1CV7TICKNxmu5/jshWqciicdbuiYtw
         hg81Mk82RP5bnBQwr6IYSS+cfgAHj3RNqUgzf0AemgWKkhi1WgYe2LJw7yy/mYuNHD7X
         VCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702408812; x=1703013612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADR9AiBzJdHA7LvhXaUiK1mGBgvpd1FYaNTyDj95URw=;
        b=SqiSh41mLFp4zAYJktzHrPbL0pGjLjsD1LI2IrwDIODAA++uyO9gzLylWdM+/uvszX
         yznYRROui01RXg/CqabrjoLFeUBjNwPNOWPrgJIC2x4XruEWaeQBX+OSBUZHx+Dqtiup
         2V0PZ2sywbUdNELZ/c5XxyOqt7GVvjbfHLSIBSq3CQhmWA087K6ifVGLiAlYFblv9Eem
         cVE/fodypOIN+tw+RKr9B7VlYd7zWoHpawyxhV6TQDBQMN1QfbkNROoupbzEIhwlH0NE
         gnVWCL2fVjEuyZgmxkJXH8cJTadelPGLRRZ7MF/QdHqBbBZpagLUVCKhwu6UlNb4wjq6
         3wNA==
X-Gm-Message-State: AOJu0YyljUfyu3LD+/r1YEZqt6gvXQCHzpuqPV91lYMlp8FDe/ilrja2
	yM+JmNnGiGTWT2Qb0f2oG3sNq298SQQVhcCmCmPWTUGCqVWkDZ2r
X-Google-Smtp-Source: AGHT+IFz74divZI4Jf9L46/dPd3axqwKfOZP/u6kkj0nA+o5/CnzNkLVIAuV2pr/Tz8NaesjmvstwGNO0wWUoAVF/Ok=
X-Received: by 2002:a50:9f4b:0:b0:551:c845:caab with SMTP id
 b69-20020a509f4b000000b00551c845caabmr236020edf.162.1702408812004; Tue, 12
 Dec 2023 11:20:12 -0800 (PST)
MIME-Version: 1.0
References: <rPb5vjhzxAbpkKqfG380sgIcjCoaOgdLbAtMNY4tA@lists.ettus.com> <CAB__hTRMbhHVt_R8B80ZYtbwXLRZV9fS6xe08Pm0SyjkDUd9-w@mail.gmail.com>
In-Reply-To: <CAB__hTRMbhHVt_R8B80ZYtbwXLRZV9fS6xe08Pm0SyjkDUd9-w@mail.gmail.com>
Date: Tue, 12 Dec 2023 14:20:00 -0500
Message-ID: <CAB__hTSHaRgdNkK_YTRV-90zOk6SJuKE_70KM_a8DPeQS1SoQw@mail.gmail.com>
To: engr.muhd.hassan@gmail.com
Message-ID-Hash: FWQ6CCUZA5JOUFJEAMAHAA63LYPXYR43
X-Message-ID-Hash: FWQ6CCUZA5JOUFJEAMAHAA63LYPXYR43
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while running command "rfnoc_image_builder -y ./e310_rfnoc_image_core.yml"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FWQ6CCUZA5JOUFJEAMAHAA63LYPXYR43/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8692590900749142776=="

--===============8692590900749142776==
Content-Type: multipart/alternative; boundary="00000000000080d5c3060c54f094"

--00000000000080d5c3060c54f094
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wade,
With current versions of the replay block supporting a FIFO mode, is there
any reason why Ettus does not include a statically linked Replay block as
part of the default image for the E310?
Rob

On Tue, Dec 12, 2023 at 2:18=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> A while back, I built an E310 image using "static" linking. This allowed
> me to include a 2 channel replay block with a 2 channel radio.  The yml m=
ay
> require an update or two to work with the current UHD version, but see if
> you can build an image with static links.  Keep in mind that with static
> links you will be forced to use the replay block since you will not be ab=
le
> to dynamically bypass it.
> Rob
>
>
> On Tue, Dec 12, 2023 at 1:55=E2=80=AFPM <engr.muhd.hassan@gmail.com> wrot=
e:
>
>> Could you please tell me how can solve this issue? As I am using GNU
>> radio, when I increase sample rate beyond 2MS/s it misses samples. So,
>> Ettus suggested me to use RFNoC replay Block. They also provided me with
>> YAML file. I have two E313 USRPs and I have to use them for outdoor chan=
nel
>> modelling. Could you please help me with that?
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000080d5c3060c54f094
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Wade,<div>With current versions of the replay block suppor=
ting a FIFO mode, is there any reason why Ettus does not include a statical=
ly linked Replay block as part of the default image for the E310?</div><div=
>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Dec 12, 2023 at 2:18=E2=80=AFPM Rob Kossler &lt;<a href=
=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>A while ba=
ck, I built an E310 image using &quot;static&quot; linking. This allowed me=
 to include a 2 channel replay block with a 2 channel radio.=C2=A0 The yml =
may require an update or two to work with the current UHD version, but see =
if you can build an image with static links.=C2=A0 Keep in mind that with s=
tatic links you will be forced to use the replay block since you will not b=
e able to dynamically bypass it.</div><div>Rob</div><div><br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 12=
, 2023 at 1:55=E2=80=AFPM &lt;<a href=3D"mailto:engr.muhd.hassan@gmail.com"=
 target=3D"_blank">engr.muhd.hassan@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><p>Could you please tell me ho=
w can solve this issue? As I am using GNU radio, when I increase sample rat=
e beyond 2MS/s it misses samples. So, Ettus suggested me to use RFNoC repla=
y Block. They also provided me with YAML file. I have two E313 USRPs and I =
have to use them for outdoor channel modelling. Could you please help me wi=
th that?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--00000000000080d5c3060c54f094--

--===============8692590900749142776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8692590900749142776==--
