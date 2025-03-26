Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A64A71DCD
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 18:57:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34A143854AE
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 13:57:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743011842; bh=IXTuhZtb1ux0Zmh+GouwMfwVz4YWfSWDWYOEwKGfe0s=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=U/gk0gKEJNiopO4sS/kKTEoERTKUTOUQHF/+yMJ+zyI3hJnY6JDSypoc7A9VqRPs3
	 PWokcSIoRsEHe/zaIrCFlmqe6Jkl9mqm6k/yW4CT5fj2yczHdxgdbI22Ljijgb2WlT
	 Ofpdwqq/3OJe5optG9XGS3PjAMCVPBjig6Ec41ZcYxm5+2c7bb4ebMgBPMEZfTTIbR
	 Vkt8TdWkPTI+HP4ZuazTq4fL3PQA6RkNhFRG7+ABNCloC5BMiEMM2KplraA7U+76zZ
	 I0nEPILmTGXdXhlco/8mec9V0vm2/ieTvmneeEGZl+3suMRvIuZYRvf5okEp0bW8EZ
	 berFBI27yBlng==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DAC73852B0
	for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 13:56:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="eUF0UBt/";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e6194e9d2cso164001a12.2
        for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 10:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1743011798; x=1743616598; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DcxTthl7kFKL8Z68fIDcLHvvJ52qT5B/zgiYN9GPA7U=;
        b=eUF0UBt/p0+KB9/yOwccQQ1NGkZc93ygsnKZ0XdURu5D5XdhvPsPcZTXJVx0mSKGHA
         byWevskgYkgNZku+ugElvs2skN3NRnMPPgFSAHBwktW7/raNj/D/XhRDPutfv8Xbmfdg
         8sTXoFMN7H/ujOB6jm3PzaHgYo9Dw5kIya3R63vJ3+spEuGExhNXjnyENjYRax4GOWys
         vBA8Mnnfil7aNxhf8cTbicCbf/cOJ0yDTDOUG+XsIri3OuSZ5wQjaFdNqaksKTLyqHsm
         ylUOEe6GqgUpx3NhtvyQg6mJQJbbewRskw16Z8sp8f8MWY0yENCYCEAbwOQq2L3V3UxK
         Yacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743011798; x=1743616598;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DcxTthl7kFKL8Z68fIDcLHvvJ52qT5B/zgiYN9GPA7U=;
        b=CS9V52SQ6BxXwqSDemt7LhuBjUjgGcIVWHOJWxVwt2IpUi6qfUWK2btLxQYqL40Q2P
         U5ZDUYHHjyI16djWEjymKOK36kPPqVXpBdn8td7NBFis0K4pNA6U370j/5OKTiW4c5CO
         YTRoloD+cWeYpCLVu/tC6fqybj/z4HKvn4IDrCwRh9UMyQg5DGQjlPdvGVCw3GrrNINt
         QcN+frFNNkEPwVldnQpmIZ3NaDj9LJTxH8PA8Qg85j3aQpBhpf0ttHSrC7Y81I+yWHpP
         D/17yqSMCJT9zhJTUoj6qk/zlYpmOdYPYDN0CiInsyVZOvNVO8TjIyU0Z7PUImmp3cDG
         CuaA==
X-Gm-Message-State: AOJu0YxR5ZS5A8oUsLHT0XREVaGOFrDPPaRGalquFWOHbGNWQV+sKP5T
	TO51X8xs6ooVc5D5vl2sjbsm6Ezro5hMxc6L3cJvQMP9RgvXmIc3vyJ9CetVXSV2B77PE7ZdRBV
	l3lg9KYHNg5IbPxkRAjTnY6zMtBNhA9/FAoG9
X-Gm-Gg: ASbGncvphS+syMAuR6YZJIh9ziMLi0ZB3JjgCM5wB40ngPLjF63AaVFkDhkUiBTi58E
	5Kcc93jjJlBt67hReF35FNzjznkQvE+y9JwWNUefDHxofwCCK7erbQyX+Dv19b91wTf+SOdDZQF
	nACOCLf8eSTDSzOzxdPcp1dzTL
X-Google-Smtp-Source: AGHT+IF001ik58vywby601mCpDLcU2l1oFws/oaiaWh3esenyKFD9YaaeLSaLYysUsu4DsNEnLFOPUhIZbYbZ/5xEcM=
X-Received: by 2002:a05:6402:1d4e:b0:5ec:958b:6f5a with SMTP id
 4fb4d7f45d1cf-5ed8f5f726amr508959a12.28.1743011798175; Wed, 26 Mar 2025
 10:56:38 -0700 (PDT)
MIME-Version: 1.0
References: <buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg@lists.ettus.com>
 <ebed1fe1-d487-4bf9-8bab-d7ec29ca910b@gmail.com> <CAB__hTR-jqCpJvkto9QFfCt1HSeJtU8RuH08tRR_4sjwDuyQWg@mail.gmail.com>
 <0f97d540-bbd9-4a40-b457-9f3d9adbe6bf@gmail.com>
In-Reply-To: <0f97d540-bbd9-4a40-b457-9f3d9adbe6bf@gmail.com>
Date: Wed, 26 Mar 2025 13:56:26 -0400
X-Gm-Features: AQ5f1JrcH-xdTe0Y57CjIfdrHk6sknLVCbg2eNNRpcFF3YsXeQATvZE-abXfDs0
Message-ID: <CAB__hTSqPprXavsx1D6XY4CYuwyj8utogLo4t2wNJ8AbMz=vCA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: M4LYQ3JGWRCZU2STWIDMSMH6NC6J4OBW
X-Message-ID-Hash: M4LYQ3JGWRCZU2STWIDMSMH6NC6J4OBW
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X310] set_command_time introduces unexpected delay dependent on sampling rate.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M4LYQ3JGWRCZU2STWIDMSMH6NC6J4OBW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0520246148794285019=="

--===============0520246148794285019==
Content-Type: multipart/alternative; boundary="0000000000001201230631428fdb"

--0000000000001201230631428fdb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2025 at 12:32=E2=80=AFPM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 26/03/2025 12:09, Rob Kossler wrote:
>
>
>
>
> Hi Marcus,
> I think that the gain is set from the "radio" block which operates at the
> master clock rate rather than the downconverted rate.  It doesn't make
> sense to me why the latency of the gain setting would be related to the
> downconverted sample rate.
> Rob
>
>
> Let us ignore for a moment the gain-setting hardware on the radio.  Let's
> pretend that some noticeable signal parameter,
>   as seen at the antenna plane, changes suddenly--like the signal level
> comes up by 5dB.  How long before that effect is
>   actually seen in the sample stream?  That will depend on the (very
> small) group delay in the analog hardware, and the delay
>   in the DDC filters, which DOES scale with sample-rate, because differen=
t
> filters are switched-in depending on the commanded
>   sample rate, and those filters have non-zero length...
>
> True. But if the comparison is between the gain setting time stamp and th=
e
Rx samples time stamp (inserted at the radio) it still seems that it would
be sample rate independent (with the caveat that the time stamp resolution
may have to change to the decimated sample rate with some type of
quantization)

--0000000000001201230631428fdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 26,=
 2025 at 12:32=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 26/03/2025 12:09, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Hi Marcus,</div>
          <div>I think that the gain is set from the &quot;radio&quot; bloc=
k which
            operates at the master clock rate rather than the
            downconverted rate.=C2=A0 It doesn&#39;t make sense to me why t=
he
            latency of the gain setting would be related to the
            downconverted sample rate.</div>
          <div>Rob</div>
          <div>=C2=A0</div>
        </div>
      </div>
    </blockquote>
    Let us ignore for a moment the gain-setting hardware on the radio.=C2=
=A0
    Let&#39;s pretend that some noticeable signal parameter,<br>
    =C2=A0 as seen at the antenna plane, changes suddenly--like the signal
    level comes up by 5dB.=C2=A0 How long before that effect is<br>
    =C2=A0 actually seen in the sample stream?=C2=A0 That will depend on th=
e (very
    small) group delay in the analog hardware, and the delay<br>
    =C2=A0 in the DDC filters, which DOES scale with sample-rate, because
    different filters are switched-in depending on the commanded<br>
    =C2=A0 sample rate, and those filters have non-zero length...<br>
    <br></div></blockquote><div>True. But if the comparison is between the =
gain setting time stamp and the Rx samples time stamp (inserted at the radi=
o) it still seems that it would be sample rate independent (with the caveat=
 that the time stamp resolution may have to change to the decimated sample =
rate with some type of quantization)</div><div><br></div></div></div>

--0000000000001201230631428fdb--

--===============0520246148794285019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0520246148794285019==--
