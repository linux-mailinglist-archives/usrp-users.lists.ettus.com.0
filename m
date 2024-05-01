Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 883128B8FEE
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 21:02:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 779C7385306
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 15:02:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714590139; bh=rJI6OHOEK+7L+9nQAmRQd70QAqWzzwne+80oBe7xYK0=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=j/AgmP2GURjoj/TNqEJNQdBtuJZ3+Me/FfCEto9Dq5LKvC1Ebx0cHF69C5tD5J7/h
	 01ymdWOB+U92vP36hSHdZ3h980IpS2SFZh7u1cSKKJcVoi/QYmvrV6dg4L6mTtYvph
	 hXU1reSRifMTUd+CYTDDGff9R/Xdujn6XsDRiMPuIkXd2gFD+eFoXRV8rFQH3wKYxO
	 BbyWJveY48SMoCZHc/f3RCFkHguP+qjw50Iue9bvjY9PWShSSfjyiKi/7agdFj11J3
	 13CLF/knZAyfQtHl9uTNi8XPXkmTH9z6cROMb5nSYlQVFaxpLvrObAbpLt9oppqQr2
	 983lXwILnGrEw==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id C92BC384B39
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 15:01:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bF+vcFfE";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-43ad398f164so19552721cf.2
        for <usrp-users@lists.ettus.com>; Wed, 01 May 2024 12:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714590100; x=1715194900; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qADDR1yI0ZzRmm2Ia/trPeq48IdIhcjxCj/tFZwlOA4=;
        b=bF+vcFfEmCZ1wocrcbNfQJ50mOekR09XP1oGKhLCA48qaORw/+Gle9IPIc/uG2EP4m
         AysZQeaLITeI2IwpDNKBpT4xBLoS2cp6gvtt1gt8+4oxIArZKRsuBjQWBOdBBJg8JBhX
         OW7MdtCHbmKOpyzFGzB32m9vvrGR7GBFbT3gZM46kMEhKiGADJxAz4D6Rpb5zYHfTjrw
         de/asruX1wKBZFStEHBg3b1KqRYv9fYWrMmIKRjE0PPFcRdIY2oJpebKxDJ23ErDJPLc
         74KTQ1LEcs9ukELr0D+0HJJrgxm/j+I0/WNFD34wfj/ihFzgWbvN/SA9Ar0tE5MhpyoM
         GX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714590100; x=1715194900;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qADDR1yI0ZzRmm2Ia/trPeq48IdIhcjxCj/tFZwlOA4=;
        b=C+RGB+nykfCRKr2DNSJ7yMDdaWQMWU9gLDcP39vovHfxYr3NmCvuCF2Svh5YXeWfpn
         4IAo0+MTK8k0tg7IsTWsz0HP6G624iOW/bND33Hr64xSs1TmnqvLG9/09VyklyIwfYZa
         jzkCg+aX4w1wdG9tjDLNMHTe8rSlkSUeYmuVyx9pZ6eds9JjbrnqUcD/9g0cQNy8p96S
         xEVRAyZ8UtTtKfwc6ZSitNVXPC5IVHeafhAACclBGz8Q+G/CtUSJM15j9nhRyBGqhlLR
         cwIv0EhHscZhaqCbyFWGvqI9ADK9LBfhTF9L1i3G7pzmJLSz+4mO1YCUR8jvlRybFelp
         sMZQ==
X-Gm-Message-State: AOJu0YwYGq7VbCFxuY2SHQ+jpq+wwcULUZFHoFHzurlSjrG+CExZOF9d
	FaoeQF8UL/VNIjLkGJsH4itBOIgZqaLD8Jk+DGCf7CnaJOutIKjH
X-Google-Smtp-Source: AGHT+IF0qrHqvJLzeymBHX7VrncTd/LhMK+TPDCGeTbsyw9uMhpELOxuKjqCqGkMT99INSywP+L25w==
X-Received: by 2002:ac8:7fc3:0:b0:43a:c243:8669 with SMTP id b3-20020ac87fc3000000b0043ac2438669mr3589893qtk.56.1714590099874;
        Wed, 01 May 2024 12:01:39 -0700 (PDT)
Received: from smtpclient.apple ([2605:b100:d46:76fc:35c9:69a4:49b5:692c])
        by smtp.gmail.com with ESMTPSA id x4-20020ac87304000000b00434c31fa60csm12489066qto.92.2024.05.01.12.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 12:01:39 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 1 May 2024 15:01:25 -0400
Message-Id: <9DBEF5A7-C5C5-410C-8020-5F5F43ECFCFD@gmail.com>
References: <rg_135JfFMqvTtC5sE6K7yKUL6MJLKmhinWi5RjjNnYPSMfbYjt6Pt9bgzpDhSC-ttGO7BYYZj4YH3y3luA5uROyruafHIjJSIoxmoOfteE=@protonmail.com>
In-Reply-To: <rg_135JfFMqvTtC5sE6K7yKUL6MJLKmhinWi5RjjNnYPSMfbYjt6Pt9bgzpDhSC-ttGO7BYYZj4YH3y3luA5uROyruafHIjJSIoxmoOfteE=@protonmail.com>
To: Olo <olo1618@protonmail.com>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: FVBBHIZU6ZNBTVFNWRZ6F3NZDWOJGPTL
X-Message-ID-Hash: FVBBHIZU6ZNBTVFNWRZ6F3NZDWOJGPTL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Quick question about tuning USRP B210 for sweep spectrum
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FVBBHIZU6ZNBTVFNWRZ6F3NZDWOJGPTL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8966661242158011615=="


--===============8966661242158011615==
Content-Type: multipart/alternative; boundary=Apple-Mail-AE40D9E7-C1C9-4C3C-B7D3-9E4AB9C28CC8
Content-Transfer-Encoding: 7bit


--Apple-Mail-AE40D9E7-C1C9-4C3C-B7D3-9E4AB9C28CC8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

How fast do you need to tune it?

No synthesizer that is optimized to reduce phase noise and frequency error c=
an tune instantly.=20

What is the scale of the goal?


Sent from my iPhone

> On May 1, 2024, at 2:42 PM, Olo via USRP-users <usrp-users@lists.ettus.com=
> wrote:
>=20
> =EF=BB=BF
> Would it be possible, with the USRP X310 with TwinRX (or two TwinRX units)=
, to achieve the mentioned goal? If so, could you please explain the approac=
h to accomplish this? Thank you.
>=20
>> On Tuesday, April 30th, 2024 at 9:20, Olo <olo1618@protonmail.com> wrote:=

>> Hi there,
>>=20
>> I'm USRP B210 for a project. I'm trying to make a sweep spectrum analyzer=
 that scans frequencies quickly. Currently, I'm tuning frequencies like this=
 (which is I think the main issue):
>>=20
>> tune_request =3D uhd.types.TuneRequest(self.steps[self.i], 1.0)
>> result =3D self.usrp_device.set_rx_freq(tune_request, self.rx_info.ch)
>>=20
>> I'm programming it in PyQt, and I've created a stream like this:=20
>> self.stream_cmd_start =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_do=
ne).=20
>> (Because I've noticed that for a continuous stream, it takes eternity to r=
etune.)
>> Do you have any tips on how to do this faster? Any advice or code example=
s would be really helpful.
>>=20
>> Thanks a lot,
>>=20
>> Olo.
>>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-AE40D9E7-C1C9-4C3C-B7D3-9E4AB9C28CC8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">How fast do you need to tune it?<div><br></=
div><div>No synthesizer that is optimized to reduce phase noise and frequenc=
y error can tune instantly.&nbsp;</div><div><br></div><div>What is the scale=
 of the goal?</div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On May 1, 2024, at 2:42 PM, Olo=
 via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div style=3D"fo=
nt-family: Arial, sans-serif; font-size: 14px;"><span>Would it be possible, w=
ith the USRP X310 with TwinRX (or two TwinRX units), to achieve the mentione=
d goal? If so, could you please explain the approach to accomplish this? Tha=
nk you.</span><br></div>
<div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br></div><d=
iv class=3D"protonmail_quote">
        On Tuesday, April 30th, 2024 at 9:20, Olo &lt;olo1618@protonmail.com=
&gt; wrote:<br>
        <blockquote class=3D"protonmail_quote" type=3D"cite">
            <div style=3D""><p style=3D"border: 0px solid rgb(227, 227, 227)=
; box-sizing: border-box; margin: 1.25em 0px;"><span style=3D"font-family: A=
rial, sans-serif; font-size: 14px; line-height: normal; font-weight: 400;">H=
i there,</span></p><p style=3D"border: 0px solid rgb(227, 227, 227); box-siz=
ing: border-box; margin: 1.25em 0px;"><span style=3D"font-family: Arial, san=
s-serif; font-size: 14px; line-height: normal; font-weight: 400;">I'm USRP B=
210 for a project. I'm trying to make a sweep spectrum analyzer that scans f=
requencies quickly. Currently, I'm tuning frequencies like this (which is I t=
hink the main issue):</span></p><div style=3D""><pre style=3D""><span style=3D=
"font-family: Arial, sans-serif; font-size: 14px; line-height: normal; font-=
weight: 400;">tune_request </span><span style=3D"font-family: Arial, sans-se=
rif; font-size: 14px; line-height: normal; font-weight: 400;">=3D </span><sp=
an style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">uhd.types.</span><span style=3D"font-family: Arial,=
 sans-serif; font-size: 14px; line-height: normal; font-weight: 400;">TuneRe=
quest</span><span style=3D"font-family: Arial, sans-serif; font-size: 14px; l=
ine-height: normal; font-weight: 400;">(</span><span style=3D"font-family: A=
rial, sans-serif; font-size: 14px; line-height: normal; font-weight: 400;">s=
elf</span><span style=3D"font-family: Arial, sans-serif; font-size: 14px; li=
ne-height: normal; font-weight: 400;">.steps</span><span style=3D"font-famil=
y: Arial, sans-serif; font-size: 14px; line-height: normal; font-weight: 400=
;">[</span><span style=3D"font-family: Arial, sans-serif; font-size: 14px; l=
ine-height: normal; font-weight: 400;">self</span><span style=3D"font-family=
: Arial, sans-serif; font-size: 14px; line-height: normal; font-weight: 400;=
">.i</span><span style=3D"font-family: Arial, sans-serif; font-size: 14px; l=
ine-height: normal; font-weight: 400;">]</span><span style=3D"font-family: A=
rial, sans-serif; font-size: 14px; line-height: normal; font-weight: 400;">,=
 </span><span style=3D"font-family: Arial, sans-serif; font-size: 14px; line=
-height: normal; font-weight: 400;">1.0</span><span style=3D"font-family: Ar=
ial, sans-serif; font-size: 14px; line-height: normal; font-weight: 400;">)<=
/span><br><span style=3D"font-family: Arial, sans-serif; font-size: 14px; li=
ne-height: normal; font-weight: 400;">result </span><span style=3D"font-fami=
ly: Arial, sans-serif; font-size: 14px; line-height: normal; font-weight: 40=
0;">=3D </span><span style=3D"font-family: Arial, sans-serif; font-size: 14p=
x; line-height: normal; font-weight: 400;">self</span><span style=3D"font-fa=
mily: Arial, sans-serif; font-size: 14px; line-height: normal; font-weight: 4=
00;">.usrp_device.</span><span style=3D"font-family: Arial, sans-serif; font=
-size: 14px; line-height: normal; font-weight: 400;">set_rx_freq</span><span=
 style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: norm=
al; font-weight: 400;">(</span><span style=3D"font-family: Arial, sans-serif=
; font-size: 14px; line-height: normal; font-weight: 400;">tune_request</spa=
n><span style=3D"font-family: Arial, sans-serif; font-size: 14px; line-heigh=
t: normal; font-weight: 400;">, </span><span style=3D"font-family: Arial, sa=
ns-serif; font-size: 14px; line-height: normal; font-weight: 400;">self</spa=
n><span style=3D"font-family: Arial, sans-serif; font-size: 14px; line-heigh=
t: normal; font-weight: 400;">.rx_info.ch</span><span style=3D"line-height: n=
ormal;"><font face=3D"Arial, sans-serif">)

</font><span style=3D"display: inline !important; font-family: Arial, sans-s=
erif; font-size: 14px; font-weight: 400;">I'm programming it in PyQt, and I'=
ve created a stream like this: </span></span></pre><pre style=3D""><span sty=
le=3D"line-height: normal;"><span style=3D"border-style: solid; border-color=
: rgb(227, 227, 227); border-image: initial; box-sizing: border-box; font-fa=
mily: Arial, sans-serif; font-size: 14px; font-weight: 400;">self.stream_cmd=
_start =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)</span><span st=
yle=3D"display: inline !important; font-family: Arial, sans-serif; font-size=
: 14px; font-weight: 400;">. </span></span></pre><pre style=3D""><span style=
=3D"line-height: normal;"><span style=3D"display: inline !important; font-fa=
mily: Arial, sans-serif; font-size: 14px; font-weight: 400;">(Because <span>=
I've noticed that for a continuous stream, it takes eternity to retune.)</sp=
an></span></span></pre><pre style=3D""><span style=3D"line-height: normal;">=
<span style=3D"display: inline !important; font-family: Arial, sans-serif; f=
ont-size: 14px; font-weight: 400;">Do you have any tips on how to do this fa=
ster? Any advice or code examples would be really helpful.</span>
</span></pre></div><span style=3D"display: inline !important; font-family: A=
rial, sans-serif; font-size: 14px; line-height: normal; font-weight: 400;"><=
div style=3D""><span style=3D"display: inline !important; font-family: Arial=
, sans-serif; font-size: 14px; line-height: normal; font-weight: 400;"><br><=
/span></div>Thanks a lot,<br></span><br>Olo.</div><div style=3D"font-family:=
 Arial, sans-serif; font-size: 14px;"><br></div><div style=3D"font-family: A=
rial, sans-serif; font-size: 14px;" class=3D"protonmail_signature_block">
</div>

        </blockquote><br>
    </div><span>_______________________________________________</span><br><s=
pan>USRP-users mailing list -- usrp-users@lists.ettus.com</span><br><span>To=
 unsubscribe send an email to usrp-users-leave@lists.ettus.com</span><br></d=
iv></blockquote></div></body></html>=

--Apple-Mail-AE40D9E7-C1C9-4C3C-B7D3-9E4AB9C28CC8--

--===============8966661242158011615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8966661242158011615==--
