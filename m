Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F58E6F07E5
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 17:06:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F22A3842BB
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 11:06:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682608009; bh=LnRy8v/Kf1wRNb98HyelH0CKFzSgR40Kwm08AreIt9g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Y8mpwaLFqVXsVaLLirkeiXaAUFKjV/wmmOw1o41kXLSnzkHvRtm8guKTlK0E+S7Jv
	 CtLRkxXeodo/LQ2/ZOApy4XBYSkWu5fiUMiv3x3KgBsaDphLJ+96xlX8CRqjbln/a5
	 hXEVQx1AWJWIjSNAfUhIqxyQ+aUs0fxE4nsSM6YQoYHbnGr5i8BGe4mxOLSQgcnEhh
	 mJURrqvCVq0SXFUvssCwTmrXVahysh/UqUNWDLeZx5VNQhXcTh0DjR8l+uAsj/C1p3
	 fHHq8//erymS1IzcxTZJiseGKKOu1RDS5eRW1ZOytw5DlrxhE/IrundIJlWpgZfgk9
	 VwdvGkiuJTPug==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id CBB0F3844E2
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:05:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HhJ4nA8Y";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-74e0180b7d3so407042185a.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 08:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682607955; x=1685199955;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2zr2gmFCi27URmC6bfgvU06QhFV+7CIQ2+i1kU876Q4=;
        b=HhJ4nA8YmZtLAvgZY0U9IvQ8YP6omhWe5HeS3mWARukOuHDXUEHWrzWN5MR3GJBFWX
         oUS1sdr2zAu+aChLspAQ/4DstRFDnLLSAPVmKLLQjskPLf1X8hzkrlzHaY4rmLtb+9QI
         VnmTcX3qmDpMmyJ3f1Fuzrmv/hjDOrkdm1CsKIkJCbptcMgOufZiHWTDmHB+EFzeEO05
         tugJxCVc70Y/Wwd22h/c1dA7qjOuPo7h1bUptt5j+jfvRJLV4cxMM/ArzbvqEqbKV0x0
         AlNMDUS1tCdfKOSleeNmp3ObZx4UV/YVL5Em/j5KSpe7SQr8k1/fk1TW+wjyPtkjR/v+
         vqQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682607955; x=1685199955;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2zr2gmFCi27URmC6bfgvU06QhFV+7CIQ2+i1kU876Q4=;
        b=D/TYKfi2QbvVQnqriqEtoE3fGfvUWOWGs/4G2HRWlKNLwLYOM+lH3+nIL7SejncEAM
         lcirzcArXLbqYWll4Z37qrRw1LY45CM4DaD9Uc0bBKtsr1qn42uQh3yN6ArChnJ/fjoy
         nDuL5I+B03A771kSOHj8gFwyZ27RHbhSspN3G43fRg2pTT//U/vfpJpnhtrHHKo1y8ca
         /LGM6691U1xL+zDyiJN67ON6HB1InD5QT9LTvEjeomiVz4CxG5dwFTdhVjlRYaOvSBaT
         qjdCa64wqmlNkhviZmURpQ4rKVHJiHFAP1AqepO1a2vPtGqAtzglMoOhGScKr3CTTjBF
         5sYQ==
X-Gm-Message-State: AC+VfDzrHxvr3ogBBVGTqruFa4BPj+6OBCHskjB9MKlHu/pFoFuGU0n3
	Yi+je/JTUDHbgD9al/wFUPjqUmqSUuc=
X-Google-Smtp-Source: ACHHUZ5bZ7wxGMnJ4UssG+uZZqyB56gwHB4mV7EwQK3w8uNjUycK5sClqFGtKlbVX0sU2offDdM8Cw==
X-Received: by 2002:a05:622a:101:b0:3e3:98b5:69a1 with SMTP id u1-20020a05622a010100b003e398b569a1mr2920293qtw.46.1682607954912;
        Thu, 27 Apr 2023 08:05:54 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id a5-20020a05620a066500b007468733cd1fsm5430505qkh.58.2023.04.27.08.05.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 08:05:54 -0700 (PDT)
Message-ID: <78f73563-cbdf-a6a6-05b4-3e41c5b93254@gmail.com>
Date: Thu, 27 Apr 2023 11:05:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <WO6vnaJrgTYaHjCldwKglrY4IwChky8P6XrWYP4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <WO6vnaJrgTYaHjCldwKglrY4IwChky8P6XrWYP4@lists.ettus.com>
Message-ID-Hash: NZ2WATTYCQV2VL2DQEIGYOGFN2BNGSO3
X-Message-ID-Hash: NZ2WATTYCQV2VL2DQEIGYOGFN2BNGSO3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NZ2WATTYCQV2VL2DQEIGYOGFN2BNGSO3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5701309432753526610=="

This is a multi-part message in MIME format.
--===============5701309432753526610==
Content-Type: multipart/alternative;
 boundary="------------mURYN7FA49gbYfIgSHwN9A02"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mURYN7FA49gbYfIgSHwN9A02
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/04/2023 10:59, david.fernandes@viveris.fr wrote:
>
> Hi Marcus,
>
>
>  *
>
>     yes, I have two WBX cards in the X310. I have now added the value
>     "A:0 B:0" in the =E2=80=9CMb0: Subdev Spec=E2=80=9D parameter on bo=
th source and
>     sink.
>
>  *
>
>     The Tx and Rx are connected directly with a cable with a 35dB
>     attenuation.
>
>  *
>
>     I have added a Gain value of 10dB in both Tx and Rx and I see
>     nearly no difference. It works less than half of the times.
>
>
After you shut-down your flow-graph, how long are you waiting before=20
starting up again?=C2=A0 The X310 requires time to reset
 =C2=A0 its internal bits and pieces after a session terminates.=C2=A0 I =
usually=20
wait 30 seconds.

Do you get any error messages in the startup sequence in the times where=20
it doesn't work?

What version of UHD are you using?


--------------mURYN7FA49gbYfIgSHwN9A02
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/04/2023 10:59,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:david.fernande=
s@viveris.fr">david.fernandes@viveris.fr</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:WO6vnaJrgTYaHjCldwKglrY4IwChky8P6XrWYP4@lists.ettus.com=
">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p><br>
      </p>
      <ul>
        <li>
          <p>yes, I have two WBX cards in the X310. I have now added the
            value "A:0 B:0" in the =E2=80=9CMb0: Subdev Spec=E2=80=9D par=
ameter on both
            source and sink. </p>
        </li>
        <li>
          <p>The Tx and Rx are connected directly with a cable with a
            35dB attenuation.</p>
        </li>
        <li>
          <p>I have added a Gain value of 10dB in both Tx and Rx and I
            see nearly no difference. It works less than half of the
            times.</p>
          <br>
        </li>
      </ul>
    </blockquote>
    After you shut-down your flow-graph, how long are you waiting before
    starting up again?=C2=A0 The X310 requires time to reset<br>
    =C2=A0 its internal bits and pieces after a session terminates.=C2=A0=
 I
    usually wait 30 seconds.<br>
    <br>
    Do you get any error messages in the startup sequence in the times
    where it doesn't work?<br>
    <br>
    What version of UHD are you using?<br>
    <br>
    <br>
  </body>
</html>

--------------mURYN7FA49gbYfIgSHwN9A02--

--===============5701309432753526610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5701309432753526610==--
