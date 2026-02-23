Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDNeJ7cWnGkq/gMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 23 Feb 2026 09:58:31 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 993CD1735B1
	for <lists+usrp-users@lfdr.de>; Mon, 23 Feb 2026 09:58:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E407A385D10
	for <lists+usrp-users@lfdr.de>; Mon, 23 Feb 2026 03:58:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771837108; bh=sFMwjXolbm2exLMGMpAvf7S5aqZAKbmvVQNreeCQHV0=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pEK+4Wr/DRG3JSnn7KR2+k4Grw7sma8XQwIeml7tcKiEDjR9TVlsk5N/gt79heoDb
	 HQmJrfOnGC4lS7pgLoJXrjLWnRIqkVMSoggc3YfVoQLMyzgroDJY3AjANcR8g8unnB
	 oxvsPV1uIMyMfXn8mYSriQXUEJEB1XOTVR00pPwNWlIRL1jccyYVn5EOW56cUC8DLZ
	 lnWDSUlgmFcyjr5MnNvcCSj8Er0fJTPUiPFnW+H0CUUecKD+cUCjDJS1qy6FhqTSU0
	 pHiKQW53m7+Via6PRq2+HLQrCmzrOuFq5STbM/VG/ysN79O8xy370wXoy8c2SbJCQ1
	 p+DiRRAzGI9+A==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 1183B3855D0
	for <usrp-users@lists.ettus.com>; Mon, 23 Feb 2026 03:58:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="KNjaTACL";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-8954a050c19so50837476d6.3
        for <usrp-users@lists.ettus.com>; Mon, 23 Feb 2026 00:58:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771837100; cv=none;
        d=google.com; s=arc-20240605;
        b=clU0006OefTIo2/7InIP4fVvdnTvEZXy69Kdv2z0bLdNHUUg8swg4o/nqcLHRcteaA
         7Cqh/mve5/uNT70h+N4usV4z+fTCkGCuhaPLiDjNcxjk0z3IgEG7/J0kmmwRw14Rksae
         GBxIvyPbeVR6Zyf6mDpCNSELkRreqB4bGigV4f5VLWgwKSvk3vMxcipei0RfT3C0AeRH
         cAq4j2AouIspVsPm9ZsoDES1jlrm2O+CDk9vXIAdyOUXQLqEn43pZI9rGVpFicZ7srwg
         vJHFxUv4/S8G4oSk4TzgZJSsPJr45zBUR1zC+VQrSXpry8vyHqIIE5ktXl62AniWQ5Rr
         yirg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=UgLJ0JQOoGe17V82SeAf2DD3hqZ7SuOwIvcKZSJwHTQ=;
        fh=coLTCVRQ3oJxudDSCc+F10d+hsWal9fApncbsOLe8mQ=;
        b=bgZdTKVNoEAckhnUevVIZalAGiTf7L09J7Bltdyp1yFkCDpHuRQUL/1a1tbFOc25Au
         jevGOM43Aij+JmmaJnCdcIHau8ihNU6XGMPvcj1PwODAOsGERCVIr/sTEPS688MQXEDF
         nMpAvRIuUcyVHlXjgq1cmNR/rJFy/uQinebLfiaNUicufDVjKT2/DRajFY+j84TMXmvO
         UxPWUUkXobNhknG9fSTjM0BR3m425PdJpxqI8gNP4hcnoleKihGXYN7eyV/4Chk1BqqI
         piv47K6GSwLJMkl59xg5tVbpJiWkRtM5EqNkpDsnyp931WibTb6cOJDlWFOUBaWbSc88
         1jkg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771837100; x=1772441900; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UgLJ0JQOoGe17V82SeAf2DD3hqZ7SuOwIvcKZSJwHTQ=;
        b=KNjaTACL2oPZ2Gk02oqb3E/I2ffcB1SClm6SsqRpxeGAnoRNOXdjW6N5TVpK9RuwVL
         /w9DPon1euaHzEopcBAPXWtvMiZMekUtaznwNVAI9Hf11Sad6DlXMM46PdQ4aLZXEg+Y
         3lk6wyw0mbKdmvFmIjMFzR3mRlk9EuWQj1B/OV2bDRCiFIv99R4LkbilexSoy0sdGaZJ
         R9l2i+b5UmZtBZrNdrM9Z7dGRAMkz3uS48vFiQ5+KiCT4qXDZVjLICQSEIQx/Ouuc81O
         uBKsNk9M6Ei4RuCt0uk+WdADLfisxcCrxPxOd7bJMt+5Gq/WcFEPmAnqAtxdTRTX7mnL
         xexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771837100; x=1772441900;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UgLJ0JQOoGe17V82SeAf2DD3hqZ7SuOwIvcKZSJwHTQ=;
        b=lx8xdeuo0ptZU9oyi+FBtHPx8Zv3jAInM0INhwTnDIGWDuBUUyjAsFoRa2npucKd+C
         TNP7G0/DdrCmODYuQ2+t67WV6kL1VYm7Fx9+XSDEtQ7JObcKh5+llAzWifoKqFZjp9si
         MWjZLTGIJ8qM0ncE7qs0KXPV6KNV+xVoAVSHvpizl8rXpKhixa6FDOFs6QUHfHemdA76
         qCR0R6GZ7MBpoTA0tPsw1deHMdDvO0CKGSoJUBqz880601sOJL0gGj0N1QZ4HiykqZjl
         FuiSdDVXCULAm5RpkrxhG2DtQjPvRxbm3EGlzkcvaDHq1EIRCdOONChPktNhvgM4xeUj
         M2Pg==
X-Gm-Message-State: AOJu0YysnEQn8e1evU5scODQYB2L4oztviwMKJ9IZdK0Wo9k26fDU67h
	S2PNUx4eJxS3tukBmdS6+F9qxJ3fLUM2smM0RfQNUmoXhiw27Z6etnyRqRob5OdGay9ZwRhnPcE
	gxFZ8r4eCa3ZSfKdzCcabWvmaBV7fZT2VmiXWzNoWkwbX92P4KSQ/2V5IjA==
X-Gm-Gg: ATEYQzxXW/3O1crU8673JZA7kATWAVR0lsuFZQugbGHKmJTu25oKWN0D0M4lYZy8WtR
	esuK90fIkyq4NLD3KkqGam0zXo+RSIVIa1s3aF8NFnOcytdCLNEDH3rpMINpPI2PMRFi04MKBpV
	hLDCDXRzgvSDMJ4+PzchYjgF54Spg1pdzXlnLqa4MaFlo/CoOFRqQs+EBAFG6YjO/QRlzM2sg0L
	E53/Uc4oQ1pLFV0ApQcgXLESuwMVz9vDWb0P6rUBpbuC+WPZymTKov4WiSNlouwiPsvTDJGI+qk
	hjczPoGI/pVTz69nPDtA2LbiLsxfpGO68uAZvg==
X-Received: by 2002:ad4:5cab:0:b0:894:6e5d:eb8b with SMTP id
 6a1803df08f44-89979f6bd67mr128381756d6.62.1771837100274; Mon, 23 Feb 2026
 00:58:20 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTRGg_=E=WiULHMUYA6iMY1yvgFw5WexYw56NNyrz7nS8g@mail.gmail.com>
 <SA1PR09MB9130FE71184277820E79EAA8EC90A@SA1PR09MB9130.namprd09.prod.outlook.com>
 <CAFOi1A50oN_=rkq1NSsZT_YbfOV5NHaLpv5Tz+qxHFDL2niUvg@mail.gmail.com> <CAB__hTSD_3qWxWz2gVa_Ac4fkYCDwr_0-GB-p0oYJJmWt+7SGg@mail.gmail.com>
In-Reply-To: <CAB__hTSD_3qWxWz2gVa_Ac4fkYCDwr_0-GB-p0oYJJmWt+7SGg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 23 Feb 2026 09:58:09 +0100
X-Gm-Features: AaiRm51XwhDOGoV2mBfmcmAthb5Vli7tUdgNnzo_qfBzRW19MCSGjAaKZYlifo0
Message-ID: <CAFOi1A5yex6-WVvMiRFr1ThYsxF0pDD6_zA-gN9zoKdVh8OtDg@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YY6KYPVDBFMC7ZBUH3UQOGUPKI2IKYL2
X-Message-ID-Hash: YY6KYPVDBFMC7ZBUH3UQOGUPKI2IKYL2
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: TX DRAM buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YY6KYPVDBFMC7ZBUH3UQOGUPKI2IKYL2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2204184389166640656=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ettus.com];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 993CD1735B1
X-Rspamd-Action: no action

--===============2204184389166640656==
Content-Type: multipart/alternative; boundary="000000000000f6402a064b79f839"

--000000000000f6402a064b79f839
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, but the flow control loop operates on the smaller Tx buffers. The idea
is that the replay/DRAM will be able to always drain the Tx buffer, and
therefore improve throughput because unlike the radio, it can always
consume very quickly.

In practice however, if the host sends out Tx buffer size data, it will
still wait to send more data until it receives flow control credits from
the FPGA. Because those have to come over the network, there might still be
a delay and that can add to the overall latency and cause issues with
throughput.

Also, when we say the "replay block is acting as a FIFO", it's really only
acting as if, like you say. The way this is implemented with
replay_buffered is by the host sending out lots of stream commands to the
replay block.

--M

On Thu, Feb 19, 2026 at 3:48=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> Hi Martin,
> For my own understanding,....  Although the endpoint buffers don't use
> DRAM as you pointed out, the replay block acting as a FIFO does, correct?
> So, if the first block on the FPGA side of the endpoint is the replay
> block, won't you achieve the goal of a large FIFO. In other words, in thi=
s
> scenario, isn't it basically guaranteed that the endpoint buffer will not
> fill up (prior to the replay DRAM filling up) since it will be able to du=
mp
> into the replay DRAM (and assuming that you don't exceed the DRAM
> bandwidth)?
> Rob
>
> On Thu, Feb 19, 2026 at 7:21=E2=80=AFAM Martin Braun <martin.braun@ettus.=
com>
> wrote:
>
>> One important thing to point out is that we do *not* use DRAM for the
>> buffers, we use BRAM (of which much less is available). The requirement =
for
>> an endpoint buffer is that we can write to it synchronously. This is not
>> possible with DRAM, you must go through a memory interface, and then wai=
t
>> for your write cycle, etc. The default Tx buffers are therefore already
>> close to the limit. If you want to increase it, you typically have to
>> change the design (e.g., take away the buffer from channel 1 and put it =
on
>> channel 0). But then you need to rebuild the image, which you're trying =
to
>> avoid.
>>
>> The 1 GiB of PL-DRAM memory included with the N320 is fantastic for
>> storing large amounts of memory, e.g., for capture/replay. The *average*
>> throughput of the DRAM is also fast enough to capture both channels at m=
ax
>> rate (it's just that average throughput is not the only requirement for =
an
>> endpoint buffer). So if you can do replay/capture, then you're good. You
>> can also try the replay_buffered stream arg, although it's not a silver
>> bullet. It helps in some scenarios but not others, YMMV.
>>
>> --M
>>
>> On Tue, Jan 27, 2026 at 8:01=E2=80=AFPM Eugene Grayver <eugene.grayver@a=
ero.org>
>> wrote:
>>
>>> Thanks.  I saw notes that seem to indicate that option. Anyone at
>>> Ettus/NI care to chime in as to how to do it?  I found an example for E=
320
>>> that shows an RFNoC .yml with a dram FIFO.  I could make one for N320, =
but
>>> it is not clear how to use it from gnuradio.
>>> ------------------------------
>>> *From:* Rob Kossler <rkossler@nd.edu>
>>> *Sent:* Tuesday, January 27, 2026 6:45 AM
>>> *To:* Eugene Grayver <eugene.grayver@aero.org>
>>> *Cc:* usrp-users <usrp-users@lists.ettus.com>
>>> *Subject:* [EXTERNAL] Re: [USRP-users] TX DRAM buffer
>>>
>>>
>>> *Do not open links or attachments unless you recognize the sender. If
>>> unsure, click the Report Phish button or forward the email to OPSEC. *
>>> Hi Eugene,
>>> I "think" that the replay block can act as a FIFO in recent UHD images.
>>> But, there is a possibility I am wrong such that there is a build-time
>>> parameter that is needed to config this.  Another option would be DPDK =
if
>>> you are not already using it.
>>> Rob
>>>
>>> On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver <eugene.grayver@=
aero.org>
>>> wrote:
>>>
>>> Hi,
>>>
>>> The default TX buffer for N32x is 128k samples =3D 512 kB.  The box has=
 1
>>> GB of DRAM.  I am getting occasional underflows when streaming at 200 M=
sps,
>>> even though the CPU is not very loaded and easily meets the average
>>> throughput.
>>>
>>> I have done all the usual stuff =E2=80=94 isolated cores, pin threads t=
o cores,
>>> etc.
>>>
>>> Is there a way to increase the default DRAM buffer size w/out rebuildin=
g
>>> the FPGA image?
>>>
>>> Thanks.
>>>
>>> Eugene Grayver, Ph.D.
>>> Principal Engineer
>>> 310-336-1274
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000f6402a064b79f839
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, but the flow control loop operates on the smalle=
r Tx buffers. The idea is that the replay/DRAM will be able to always drain=
 the Tx buffer, and therefore improve throughput because unlike the radio, =
it can always consume very quickly.</div><div><br></div><div>In practice ho=
wever, if the host sends out Tx buffer size data, it will still wait to sen=
d more data until it receives flow control credits from the=C2=A0FPGA. Beca=
use those have to come over the network, there might still be a delay and t=
hat can add to the overall latency and cause issues with throughput.</div><=
div><br></div><div>Also, when we say the &quot;replay block is acting as a =
FIFO&quot;, it&#39;s really only acting as if, like you say. The way this i=
s implemented with replay_buffered is by the host sending out lots of strea=
m commands to the replay block.</div><div><br></div><div>--M</div></div><br=
><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Feb 19, 2026 at 3:48=E2=80=AFPM Rob Kossler &lt;<a hre=
f=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Martin,<div=
>For my own understanding,....=C2=A0 Although the endpoint buffers don&#39;=
t use DRAM as you pointed out, the replay=C2=A0block acting as a FIFO does,=
 correct?=C2=A0 So, if the first block on the FPGA side of the endpoint is =
the replay block, won&#39;t you achieve the goal of a large FIFO. In other =
words, in this scenario, isn&#39;t it basically guaranteed that the endpoin=
t buffer will not fill up (prior to the replay DRAM filling up) since it wi=
ll be able to dump into the replay DRAM (and assuming that you don&#39;t ex=
ceed the DRAM bandwidth)?</div><div>Rob</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 19, 2026 at 7:21=
=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" targ=
et=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>One important thi=
ng to point out is that we do *not* use DRAM for the buffers, we use BRAM (=
of which much less is available). The requirement for an endpoint buffer is=
 that we can write to it synchronously. This is not possible with DRAM, you=
 must go through a memory interface, and then wait for your write cycle, et=
c. The default Tx buffers are therefore already close to the limit. If you =
want to increase it, you typically have to change the design (e.g., take aw=
ay the buffer from channel 1 and put it on channel 0). But then you need to=
 rebuild the image, which you&#39;re trying=C2=A0to avoid.</div><div><br></=
div><div>The 1 GiB of PL-DRAM memory included with the=C2=A0N320 is fantast=
ic for storing large amounts of memory, e.g., for capture/replay. The *aver=
age* throughput of the DRAM is also fast enough to capture both channels at=
 max rate (it&#39;s just that average throughput is not the only requiremen=
t for an endpoint buffer). So if you can do replay/capture, then you&#39;re=
 good. You can also try the replay_buffered stream arg, although it&#39;s n=
ot a silver bullet. It helps in some scenarios but not others, YMMV.</div><=
div><br></div><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jan 27, 2026 at 8:01=E2=80=AFPM Eugen=
e Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">=
eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.=C2=A0 I saw notes that seem to indicate that option. Anyone at Ettu=
s/NI care to chime in as to how to do it?=C2=A0 I found an example for E320=
 that shows an RFNoC .yml with a dram FIFO.=C2=A0 I could make one for N320=
, but it is not clear how to use it from gnuradio.</div>
<div id=3D"m_826674893284886320m_-1825515750492054494m_-4152883299313261974=
appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_826674893284886320m_-1825515750492054494m_-4152883299313261974=
divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" style=3D"font=
-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;<a href=3D"mailt=
o:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 27, 2026 6:45 AM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] TX DRAM buffer</font>
<div>=C2=A0</div>
</div>
<div>
<p style=3D"background-color:rgb(94,138,180);color:rgb(255,255,255);font-si=
ze:10pt;padding:1em">
<strong>Do not open links or attachments unless you recognize the sender. I=
f unsure, click the Report Phish button or forward the email to OPSEC.
</strong></p>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Eugene,
<div>I &quot;think&quot; that the replay block can act as a FIFO in recent =
UHD images.=C2=A0 But, there is a possibility I am wrong such that there is=
 a build-time parameter that is needed to config this.=C2=A0 Another option=
 would be DPDK if you are not already using it.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
The default TX buffer for N32x is 128k samples =3D 512 kB.=C2=A0 The box ha=
s 1 GB of DRAM.=C2=A0 I am getting occasional underflows when streaming at =
200 Msps, even though the CPU is not very loaded and easily meets the avera=
ge throughput.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have done all the usual stuff =E2=80=94 isolated cores, pin threads to co=
res, etc.=C2=A0=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Is there a way to increase the default DRAM buffer size w/out rebuilding th=
e FPGA image?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.</div>
<div id=3D"m_826674893284886320m_-1825515750492054494m_-4152883299313261974=
x_m_-8211984150526382119Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000f6402a064b79f839--

--===============2204184389166640656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2204184389166640656==--
