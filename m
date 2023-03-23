Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF43F6C68DD
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 13:52:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43CD038472B
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 08:52:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679575926; bh=nC9DI6UrM/HJWDxYXrWqlNoAD1j3Kt/46nvmzFdehG0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sNzC6eEZGCyCmIPS4itaZv70lMj9RXIWaer7BpruEwC+JJll937G9MQyei45fqnJU
	 yoURSslre6PVQSHOv+MbFSWkEQVdj39RX4GSxNsAIsxLODyIXz3TKdOOLdDurIKGvG
	 Cepjmv1fyxv5QwgIF2c928HkqQDOdZs+IFt27xe1W7iNhZ5F2sgieb74UBqn/QPNac
	 D51//qq0cj5XUQ4oCO07cUVW3+ZfRJqzvWQd4W9FCGO1a4a2AWv8a2N5B/p02bm8nK
	 R+Vlj+vq4bZJmcCgfsl9T12RqgOMx3GA4lXD8/pz433WUqTCAmtOzneS+3FoxDvkdd
	 kN3K2bSuxjRaw==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id C11793846F1
	for <usrp-users@lists.ettus.com>; Thu, 23 Mar 2023 08:51:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="PLX4g9ro";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id y4so86157049edo.2
        for <usrp-users@lists.ettus.com>; Thu, 23 Mar 2023 05:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1679575881;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mGSmgsypHfmAPGffV7dN8bZxa7HMPU5QJ1DwIysd1Cw=;
        b=PLX4g9rolhTNLLzdIvcrbQO+ts69pnkcNXEYKkSDXm/CF9NsFrjH/wlK7ex48sFNoT
         tRSIF7NhYaoQNuU7OsIwCWZNRn0W6rRg8niBWUWmdRiSssAWoRcyASo9LPD2eaX7Fg8g
         0Ht3FQrLbpJ6qR7QmjCt9YppJHh1p3M4G77OOn+pmqHd0d1DkQ+1yJMPVRH4VE6sUuez
         fT6Ffod+W86GFnps9wZR2SzTBABZaoE6EpAV5VRSQYmnvX3QdLVP0a75GeGTl5/c6Ofq
         UtVxLzF14yKo9nPsQmC8qjcYcDuFNsd3Q8SfOpb+m1ewlYLtd1/umd2miZXxdQ0Y37yy
         ovew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679575881;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mGSmgsypHfmAPGffV7dN8bZxa7HMPU5QJ1DwIysd1Cw=;
        b=GNMXvV4+bEYuBmDvvEL6R09QEl9nyehuDMuq8p3InEujj87qjUlnm9TUssOc4BWzah
         7kV3/PKLes+OK3UQ+311bs3ZfmuhrOHLEhycKpCRXVvWDlm9ekENT+7EWdl0VAaWCt64
         PE5E6hJ27vCtU0x+RaAWpcR6Kc6ysHWyXkSn1e/P0bnRo7DSQwx+Rf4zpBeJ7XI+u6eI
         33abDrrGLyLZPkIkse3SQD5DLUkDQ1je6SAawsMfOiDW1C0qwn1IzyiivNj9BSm2Jht6
         11rnLrNZekvThbjUH3tGKUnTum2DJeoHFQCZxGDlZpj30sNKGV3XEVwUIDD5by9fERcE
         mxfw==
X-Gm-Message-State: AO0yUKVV1pUzlKrQjVy3il5KzRnWeb63OvFe7KM41M/+MbdOCdpyfx6t
	7+AOQ6GZJL9Jjkdr4ezhHEmIEjxQHNlcC0eleWPMOU8f
X-Google-Smtp-Source: AK7set/lmQRFUBiXuUuKCQy3T/wgkNPSljWZvdvIYabI8OWWAhd0KqWdgCRbmXnGQHcP0+aLokXS5nxW0PR0QcT/2aI=
X-Received: by 2002:a50:cd8f:0:b0:501:d532:9224 with SMTP id
 p15-20020a50cd8f000000b00501d5329224mr5461817edi.8.1679575881644; Thu, 23 Mar
 2023 05:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4cuWzo5NfJRAsqKBeCdLZ=Un-X7NY=r0-aOGy=X3sSTA@mail.gmail.com>
 <CAFche=gS4BkrDn0SWJd3N_duQXgJ5qx5G=VsHwpFHQsi0s4r=w@mail.gmail.com> <CAEXYVK55_N3=T6XhTy6qL5pVgFkLfd6S0BL3FUZrPwu8iPP=oQ@mail.gmail.com>
In-Reply-To: <CAEXYVK55_N3=T6XhTy6qL5pVgFkLfd6S0BL3FUZrPwu8iPP=oQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 23 Mar 2023 07:51:05 -0500
Message-ID: <CAFche=inurZt7FDWbNL3WOupvvctXRAcezGQwS4dR-bJDTE_NQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: VPE42A6ASYXXCMBLTMAQASWBPJMYCMJJ
X-Message-ID-Hash: VPE42A6ASYXXCMBLTMAQASWBPJMYCMJJ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Overflow with Custom FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VPE42A6ASYXXCMBLTMAQASWBPJMYCMJJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6834518123013565501=="

--===============6834518123013565501==
Content-Type: multipart/alternative; boundary="000000000000cc8d2e05f790bb76"

--000000000000cc8d2e05f790bb76
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, for the 200 MHz bitstreams there is a 2x decimation filter in
rf_core_200:
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/rf/200=
m/rf_core_200m.v#L184

There's also a 3x decimation filter in adc_400m_bd.tcl:
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/ip/adc=
_400m_bd/adc_400m_bd.tcl#L339

You could potentially reuse/modify these to get the decimation you need.

Regarding the clocks needing to be faster than the sample rate, generally
that is the case. But in the DDC/DUC, the headers are dealt with in
parallel to the payload, so the data rate can match the clock rate.

Wade



On Wed, Mar 22, 2023 at 10:00=E2=80=AFPM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> On Wed, Mar 22, 2023 at 10:40=E2=80=AFPM Wade Fife <wade.fife@ettus.com> =
wrote:
>
>> Hi Brian,
>>
>> Unfortunately, the DSP inside the current RFNoC DDC block processes one
>> sample per clock cycle. So the maximum sample rate through the DDC is th=
e
>> same as the rate of the clock you provide to the ce clock input. With th=
e
>> 400 MHz bitstreams, radio_2x is 245.76 MHz. Because this is below the
>> 491.52 Msps input rate, you're getting overflows.
>>
>
> Got it.  Thanks for the clarification.
>
> So is there a filter instantiated in the BD of the 200 MHz design which
> does the first initial decimation by 2 that is missing in the 400 MHz ima=
ge?
>
> Also, don't the clocks need to be slightly faster than the sample rate to
> also include the CHDR header information in stream, or is that handled so=
me
> other way in the X410 designs?
>
> Thanks,
> Brian
>

--000000000000cc8d2e05f790bb76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, for the 200 MHz bitstreams there is a 2x decimat=
ion filter in rf_core_200:<br></div><div><a href=3D"https://github.com/Ettu=
sResearch/uhd/blob/master/fpga/usrp3/top/x400/rf/200m/rf_core_200m.v#L184">=
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/rf/200=
m/rf_core_200m.v#L184</a></div><div><br></div><div>There&#39;s also a 3x de=
cimation filter in adc_400m_bd.tcl:</div><div><a href=3D"https://github.com=
/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/ip/adc_400m_bd/adc_400m_=
bd.tcl#L339">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/to=
p/x400/ip/adc_400m_bd/adc_400m_bd.tcl#L339</a></div><div><br></div><div>You=
 could potentially reuse/modify these to get the decimation you need.</div>=
<div><br></div><div>Regarding the clocks needing to be faster than the samp=
le rate, generally that is the case. But in the DDC/DUC, the headers are de=
alt with in parallel to the payload, so the data rate can match the clock r=
ate.<br></div><div><br></div><div>Wade<br></div><div><br></div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Mar 22, 2023 at 10:00=E2=80=AFPM Brian Padalino &lt;<a href=3D"m=
ailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"=
ltr">On Wed, Mar 22, 2023 at 10:40=E2=80=AFPM Wade Fife &lt;<a href=3D"mail=
to:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote=
:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>Hi Brian,</div><div><br></div><div>Unfor=
tunately, the DSP inside the current RFNoC DDC block processes one sample p=
er clock cycle. So the maximum sample rate through the DDC is the same as t=
he rate of the clock you provide to the ce clock input. With the 400 MHz bi=
tstreams, radio_2x is 245.76 MHz. Because this is below the 491.52 Msps inp=
ut rate, you&#39;re getting overflows.</div></div></blockquote><div><br></d=
iv><div>Got it.=C2=A0 Thanks for the clarification.</div><div><br></div><di=
v>So is there a filter instantiated in the BD of the 200 MHz design which d=
oes the first initial decimation by 2 that is missing in the 400 MHz image?=
</div><div><br></div><div>Also, don&#39;t the clocks need to be slightly fa=
ster than the sample rate to also include the CHDR header information in st=
ream, or is that handled some other way in the X410 designs?</div><div><br>=
</div><div>Thanks,</div><div>Brian</div></div></div>
</blockquote></div>

--000000000000cc8d2e05f790bb76--

--===============6834518123013565501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6834518123013565501==--
