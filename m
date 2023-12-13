Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE1281197D
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 17:30:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9D7D384D84
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 11:30:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702485047; bh=n87K5ioHr667aVb/RXSggetx0JRtGiOkGsMU2Che800=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=fX4A/46giijKO6pGR+UQysDN1Hm4sdhVsJwE9IY1Q6LjAzE2yiUwxgDZT+o0ibgFi
	 Yj0IqsgnniUmMPSLgUKbR11ciAWsFxzSVlN3FL94ARdMGi4uXjpM5SkYhsMtu8vtN5
	 JqN+JbsW9LD63NahuYYg9Vwd1DEzczoAqs/7NnPs1xV6CsjSWE0tCU2HOFnvLF5BtF
	 QKIBzvSW0bQ9qpdntO7KvP0SwICQ+UwZWXes8dIpKZqT25INZlXpbLPA9I+L4tbs8I
	 qPBBtpgAx+UrNO+yODDCbxC41OPEVX+aFKxGu9yfCcxouyh713Y6YP6MFu5gHmROSK
	 F7WWtgmFgHzew==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id E4659384D74
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 11:30:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="XYf7KCsj";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-54cb4fa667bso9978881a12.3
        for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 08:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702485040; x=1703089840; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k4BQ5Ys6X/Tl/H+L4+L88q3c1acNit7okgYrARmN5T8=;
        b=XYf7KCsjX+9fnqyf1CJHl1IJ2UFmFasuYRHjqe+kfA4n1GS12Mn6yRhbKByVqX1oHZ
         z9lQ7XFLlOo+L3u7TldMJ9AuSas3HO8hPGhiwimdyIidSXzdAvoNiUsxdLjN8DuZ/tne
         C21RUu8zmVt+DSmd5XdqbG2kOZJwyugK8eeQErAE0KT8lBhGGOHYXmRnUE17teFxkjSS
         zqn3KWJ/MpSHZv2goi5/buSrXVrVqo7yAAXm6ug+3XTJk+jsi7JU5ohg7xknFQcUfU5G
         jUn7kVW6iqn9ULYcT36B2cq6qxT+SH1lztMPd6aB7L/CQbuOx7L3GXzK7dx0PAjRnXgb
         YuSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702485040; x=1703089840;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k4BQ5Ys6X/Tl/H+L4+L88q3c1acNit7okgYrARmN5T8=;
        b=KPvysRiOuIhMwnHl6Md2oD4pLdaxYawrnpjxX7fZow7IpmA/BVD9CEA8jg+k+dpH2y
         7s0Zk63KTIVm89VVkYUNHO6VSTUB6yxfbQ5p2XLtjsJ9wkNt9OoWfG2vBK/qHztVCSqu
         0svCBX1Snb3QKTqPgilIe+6RAq2I39wBdgdFozuJ9SmsraOhxYa+T2bmuJGgqYSgdVSZ
         FMsAAREIhdBOPrqJKemZjc4DzjuRH865YxyOp7+N7yc/yPFORi3Uz0W1/6trHzyYmheZ
         rZFXlxehVfZOPYKkHWl3V0PMpfOfxh9KLkGy5mtfnQchSrd7lRcG6ydKm2CyF7g3m9lq
         5YGw==
X-Gm-Message-State: AOJu0YxW4iCRZGtjynBcjoSyg2Slz1nXAmWOuqHYL0p+xfhNXUqXRabB
	FmGlLLEXCHuGRPJ1iCB4NoGlg7Sd7v5VdVeFcZtkJw==
X-Google-Smtp-Source: AGHT+IEhm5WKKeaQo8r69ZTe7NA0lOiGY3hzhgU+Bu44NWUsTOTn9bZp6VcniOZHlsN6VOZ/bksTqwbP321eNoBMfM0=
X-Received: by 2002:a05:6402:2157:b0:54c:652b:d5ab with SMTP id
 bq23-20020a056402215700b0054c652bd5abmr4791984edb.5.1702485040416; Wed, 13
 Dec 2023 08:30:40 -0800 (PST)
MIME-Version: 1.0
References: <zgmDAEz5D6J2us3THA4BvjbGwTc33wXw34506SGGPE@lists.ettus.com>
In-Reply-To: <zgmDAEz5D6J2us3THA4BvjbGwTc33wXw34506SGGPE@lists.ettus.com>
Date: Wed, 13 Dec 2023 11:30:28 -0500
Message-ID: <CAB__hTT214RJSDfPEGrfPRNZeeZxq8rZ=NO1GWXg73_r3ehKaQ@mail.gmail.com>
To: mamuki92@gmail.com
Message-ID-Hash: I56TRVCBFDRXH4PE4XSCK3UAZYJR4FP4
X-Message-ID-Hash: I56TRVCBFDRXH4PE4XSCK3UAZYJR4FP4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I56TRVCBFDRXH4PE4XSCK3UAZYJR4FP4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0109662796927022668=="

--===============0109662796927022668==
Content-Type: multipart/alternative; boundary="00000000000011fcca060c66b040"

--00000000000011fcca060c66b040
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Take a look at the block controller for the UHD example "gain" block found
here
<https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-examp=
le/lib/gain_block_control.cpp>.
Note how this block doesn't even bother with creating a property. Instead
there is simply a set and get function which pokes or peeks an FPGA
register.  But, I don't know how to configure gnuradio so that it can call
this custom function.

On Wed, Dec 13, 2023 at 11:12=E2=80=AFAM <mamuki92@gmail.com> wrote:

> Hi Rob,
>
> Do you mean instead of doing it across the register_property as the
> set_int_property does, directly call the peek function?
>
> Now I have this in the controller:
>
> register_property(&_test_reg, [this]() {
>
> int test_reg =3D this->regs().peek32(REG_TEST_ADDR);
>
> this->_test_reg.set(test_reg);
>
> });
>
> Do you suggest changing it to something like this? (taken from
> uhd/host/lib/rfnoc/ddc_block_control.cpp)
>
>
> double get_freq(const size_t chan) const
>
> {
>
> return _freq.at(chan).get();
>
> }
>
>
> =E2=80=9C_freq=E2=80=9D seems to be also a property_t class as =E2=80=9C_=
test_reg=E2=80=9D is. What=E2=80=99s the
> difference of doing it that way?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000011fcca060c66b040
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Take a look at the block controller for t=
he UHD example &quot;gain&quot; block found <a href=3D"https://github.com/E=
ttusResearch/uhd/blob/master/host/examples/rfnoc-example/lib/gain_block_con=
trol.cpp">here</a>. Note how this block doesn&#39;t even bother with creati=
ng a property. Instead there is simply a set and get function which pokes o=
r peeks an FPGA register.=C2=A0 But, I don&#39;t know how to configure gnur=
adio so that it can call this custom function.</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 13, 2023 at 11:12=
=E2=80=AFAM &lt;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>=
Hi Rob,</p><p>Do you mean instead of doing it across the register_property =
as the set_int_property does, directly call the peek function?</p><p>Now I =
have this in the controller:<br><br></p><p><code>register_property(&amp;_te=
st_reg, [this]() {</code></p><p><code>            int test_reg =3D this-&gt=
;regs().peek32(REG_TEST_ADDR);</code></p><p><code>            this-&gt;_tes=
t_reg.set(test_reg);</code></p><p><code>        });</code></p><p>Do you sug=
gest changing it to something like this? (taken from uhd/host/lib/rfnoc/ddc=
_block_control.cpp)</p><p><br><code>double get_freq(const size_t chan) cons=
t</code></p><p><code>    {</code></p><p><code>        return _<a href=3D"ht=
tp://freq.at" target=3D"_blank">freq.at</a>(chan).get();</code></p><p><code=
>    }</code></p><p><br></p><p>=E2=80=9C_freq=E2=80=9D seems to be also a p=
roperty_t class as =E2=80=9C_test_reg=E2=80=9D is. What=E2=80=99s the diffe=
rence of doing it that way?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000011fcca060c66b040--

--===============0109662796927022668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0109662796927022668==--
