Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3109F6C5CF8
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 04:01:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41BCA383EC4
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 23:01:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679540466; bh=NKpsbnJVY2TF4KpBwIjbxTr1ZBsR6wELEkwMFucWZZ8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BX5t3OS+2EQwApQHYMAxikiIxdgJ5grk3L6zlqya3/lt37bGTAhTpL5zSRzJuzG1O
	 B79YjWAB0GU5S/OpMrJuarMGQc3//rMHPD4QPcVqH/iIGAnWkwu/d+Xm4/2A4wKFCS
	 DUHR8Ynt7FFaNoZXSkyF9LHwciJU+1dNNOvgDOxqks7K2egocjUapbcKTREfVs0RVc
	 x+pihZzgFKPqGpg6mNC+g4q8ikNpnh9adJQrBQZsuEr5xr0BNKuWn8W5O55Tc5TsLZ
	 2PAEUQwfr+W+NxZFHOmHlgP6OdCIJnZIR39TjBuEzL4tiy0EifjITQ0QLBy/4yLx5h
	 be5EMI1Lg/v8g==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id E0BE8380A36
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 23:00:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OLQnlcEl";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id o12so80946872edb.9
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 20:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679540427;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F2VKWvWtvbXGZn6rfHpsXsEdWiMzeQiRMQK92sZkBrA=;
        b=OLQnlcEl1vcFU5oo/D2GcqxLXEmEldUnk6jkB2cHSv3Zl/YArt4GZKgXzMZjY68Lm9
         0FF7YkYVCQDIf1vtX3IGuKZVobUZ35KO2PPCNVI6VHYhWrt7Im+SbwDFbFtbLzpiOf/q
         SziScO7EWda87ihfAIJfa6a3t++r4MSIqsQKuwNxmfAfKfOMF2i5TZlXzoPiwu86ciUp
         scaSiXJWALrdXn5D/VngxFUaiWJRNBEHWY5/EoJtTjZV7IybnR1WBnbjdjNKGhtYwRQz
         rqevsKmAN2oOmAXwotuh0/9xQRsetTX6UYuMwH4AqeBNHRrY+PclVhW/pvReyIxgvwMs
         Nzsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679540427;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2VKWvWtvbXGZn6rfHpsXsEdWiMzeQiRMQK92sZkBrA=;
        b=FBrq91USQvLhUKfR5/QRy5w6TQRCSFYggJ+v0JUaHn50qDrCPB6N5I50a+53q9Zb57
         By5e1uGDAddbZkS878whGG0wFS/PuE+QqoZNuhj92WHzCu6HfQiuD1xRQ5cYnMdQ+V7/
         8pxZT2zQLMjfaGv5JpJxB4y1LbPy92pXpyixQlbtJIWFzpe9MWL5ha7zcUL0RJNKbOVY
         qK5XgDHmFM3L9BGps+Ij4PTn/gtg00QeuC4v81MOJty3hi1gJ+NgWbIfXYdIek0W3KM/
         bkl/RYMo03GvEFzm++nx6M7dRQlcd9Jcs2v5bcJZFa2010doHKRD+C+aiuMNf8tl0pga
         Q+jw==
X-Gm-Message-State: AO0yUKWaqnTahcXZ2lLtZve1Uau3IMWNnqj802F61o/26dHaKfr5lDC8
	BmVm0W8bIT5/QTvbddLEDkGPKEEaAjbeum14O5EYmJ3b
X-Google-Smtp-Source: AK7set8xIO280QG7+Lxc2coUGRWPXaS5vdK31PX4vIOHFxQAR0ojfzF0xC4BSHFlSy/4Mfe1PXmZmHxVEz5AT95cs94=
X-Received: by 2002:a50:9ecb:0:b0:501:d489:f797 with SMTP id
 a69-20020a509ecb000000b00501d489f797mr4702955edf.1.1679540426740; Wed, 22 Mar
 2023 20:00:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4cuWzo5NfJRAsqKBeCdLZ=Un-X7NY=r0-aOGy=X3sSTA@mail.gmail.com>
 <CAFche=gS4BkrDn0SWJd3N_duQXgJ5qx5G=VsHwpFHQsi0s4r=w@mail.gmail.com>
In-Reply-To: <CAFche=gS4BkrDn0SWJd3N_duQXgJ5qx5G=VsHwpFHQsi0s4r=w@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 22 Mar 2023 23:00:15 -0400
Message-ID: <CAEXYVK55_N3=T6XhTy6qL5pVgFkLfd6S0BL3FUZrPwu8iPP=oQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: HN6IGHHGJYATVU6IFYATSFWQ2FK36VDL
X-Message-ID-Hash: HN6IGHHGJYATVU6IFYATSFWQ2FK36VDL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Overflow with Custom FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HN6IGHHGJYATVU6IFYATSFWQ2FK36VDL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9117808088931803633=="

--===============9117808088931803633==
Content-Type: multipart/alternative; boundary="000000000000859df605f7887ae1"

--000000000000859df605f7887ae1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 22, 2023 at 10:40=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wr=
ote:

> Hi Brian,
>
> Unfortunately, the DSP inside the current RFNoC DDC block processes one
> sample per clock cycle. So the maximum sample rate through the DDC is the
> same as the rate of the clock you provide to the ce clock input. With the
> 400 MHz bitstreams, radio_2x is 245.76 MHz. Because this is below the
> 491.52 Msps input rate, you're getting overflows.
>

Got it.  Thanks for the clarification.

So is there a filter instantiated in the BD of the 200 MHz design which
does the first initial decimation by 2 that is missing in the 400 MHz image=
?

Also, don't the clocks need to be slightly faster than the sample rate to
also include the CHDR header information in stream, or is that handled some
other way in the X410 designs?

Thanks,
Brian

--000000000000859df605f7887ae1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 22, 2023 at 10:40=E2=80=AFPM =
Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a=
>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Brian,</div><div><br></div=
><div>Unfortunately, the DSP inside the current RFNoC DDC block processes o=
ne sample per clock cycle. So the maximum sample rate through the DDC is th=
e same as the rate of the clock you provide to the ce clock input. With the=
 400 MHz bitstreams, radio_2x is 245.76 MHz. Because this is below the 491.=
52 Msps input rate, you&#39;re getting overflows.</div></div></blockquote><=
div><br></div><div>Got it.=C2=A0 Thanks for the clarification.</div><div><b=
r></div><div>So is there a filter instantiated in the BD of the 200 MHz des=
ign which does the first initial decimation by 2 that is missing in the 400=
 MHz image?</div><div><br></div><div>Also, don&#39;t the clocks need to be =
slightly faster than the sample rate to also include the CHDR header inform=
ation in stream, or is that handled some other way in the X410 designs?</di=
v><div><br></div><div>Thanks,</div><div>Brian</div></div></div>

--000000000000859df605f7887ae1--

--===============9117808088931803633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9117808088931803633==--
