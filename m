Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMKVNacLl2lEuAIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 14:09:59 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3988F15EEE1
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 14:09:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31B71383681
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 08:09:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771506598; bh=9PBxXx8YNNxmKPVIn/XpmzYt92huG6JL0yHU4hA/LvE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OoEM0HUGjLK9+gjZN+dJjwh4BQpqpXA5V5Qz5K3+g2Uwbw7VUHCL66nnHS+XYe+Uk
	 Kh6Rl4gS6MDjV5w9t1g4SJ+OgKizWZPWoXqBsiKrXEymE/4bBrzVtKHLHtvGxA3Csr
	 3UlRIxl504lAipMfMp5IdQXH8gy5zwXU5peMoOxVT6F8vs4IZokIi1DlZDyJqQd3TQ
	 WW/t3QyyKUFNHVJ2Vq9Go3Yf6jv9XR+WAaXkjFweF0P8Hx+eOlC/62wK6zHQVi3xRE
	 Za1MJlm0vmbPhfmueSmLR6yUqGZlVcVGEy7OOfS12qXAL9n8SiYRCXMFJibzBmzt7Z
	 QKoJ4Ophp01lg==
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 83B3438558A
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 08:09:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NhL4lx2b";
	dkim-atps=neutral
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5662c2937fdso943518e0c.0
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 05:09:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771506559; cv=none;
        d=google.com; s=arc-20240605;
        b=F+5khfGcuJlzxjmBDZF2MaN3DNcOBkJ51obHB+qEFLp/VrWVconNJfBWMoCEtwR0/H
         HmtfGETNl3IHR9fMgrAut2tg8I6D3nvVNWrqLZ8IFUqj8po9KpkOPlE2aBy5YSThsA55
         zKgZn0Wh9s7Dmc3kd+MsnrlUBdioLATaE0tP5PujL0sa6wmyxIE3jyQkJir/oih7MY0t
         ZdCntadUdJKAtqTu+h8OnSGo/AnOpdHQ7Q54pikf0JIVEWRyMWKcdXDngl605b8xZ2cw
         yOPqg/Y8kcw3jAn692LryJVZHlDQnjVDDafN47OQx9ytlDrMBF4YIYwrcySJnTlZgR4/
         J/hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dpj0htRJX+y7FM4DAaxyGG/WiJSFRgrl2JtZLpPRwPI=;
        fh=x7UDagx2lyXljdsYDFOjF4R7YTS3zNeknQyznuHymcw=;
        b=Am/azRc+htkqzFUhCUby1w167BeMMZ4oEyK9WZwGRLnAnFsuHkA37/7bqCL73PFBwB
         I8wcLMD07IxN5dOD+azKL0aXRYnsBIXvYHkI6AxikUXRyYCJO96MEhCM/D9gLSfJ4PsZ
         ZWkresuJHu09ouiCQ9DgFdYJWK9nyNpHRcxTxXZlBc636NoUrmK+QgheXEDfJp+xukyJ
         C3fIaUE/M6l26Ee/sSWwdgIMa3a2FY4LuCc02aJdEt5JPKGeJHOF1Z9cf42Y5bOcrprm
         Mh+BsD4+Zef3ki0SBoSRQSzawBOfC8/TOU3BsHTWDsx1dH1H+C4cUhVK4LgXTUc8xnOF
         M9jw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771506559; x=1772111359; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dpj0htRJX+y7FM4DAaxyGG/WiJSFRgrl2JtZLpPRwPI=;
        b=NhL4lx2bKkDg28BD4k2F6FzefXxQWTpKfXeQMyDWBs1yg5SPEnkV5lUUzTdVjnaACD
         uWWZBhMgLIj5qOpXGlOpW8dTbLcwBgFtYuJz42nJDADg/8Ah9D6TD0XA4VcmCSTmivNQ
         pmlThExn29FWGvcBajd1OSVD64B3TKXVJ38+wbXjZPju+S+Qvse1lkxH3WQw+8yXLIp6
         g1tUthIWjOfo3gcNS5kWrIYMxtJvm7O0fKdipfuvC4QVxcpAc7mH8OSBV36MJ8gwfd30
         iwHVE2LWYIKaOu+tO5HKXGPok2Z8x2x/hvfcVB4EPALg7MulCdnqALbhRPQ77POwLNzr
         YC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771506559; x=1772111359;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dpj0htRJX+y7FM4DAaxyGG/WiJSFRgrl2JtZLpPRwPI=;
        b=PTLm6vOQPt2MininFlMr4CduFyLh/3p64h6SSnL07aCmedDPiDT08BwkLKgBLB8QeL
         wZb8Uxb7XT1hNkcKJkIv4p7Dh1tAxpNnKkbqmpHkBcy6P/KHWmIO1ssvt/8rECg5tCB6
         zB1oou7gOFdRU90g7V/AzSKgylSAljIpYqy0lGGyjvNzdqZ56GqFJTgjwVMELjlFCf2d
         JHA+hhJbwngTrnnYq4VSPse/lAHDScidOn8POD2C7SHTatZaXPHVQB25AF2qK+b1PBPt
         T1UIXovFiEj3htWfiR5swZq2f1N27BpbZhAb8ZRDqI7EfRLSd6uzxzu7OyRD2DNGNypJ
         rObw==
X-Gm-Message-State: AOJu0YyPAM8adTCl+Hw7fXQu2KkzVDw2G9xpaUM5qcPQ31guH4PryZbt
	+sn7zotuGMxMwTV9MDONONa5q0XmcKMYCVahQLuYO+iDnSAyZG79iJ6QwmzT7XqlwWD2m6clJ/m
	ly+hFJVNkuGq04tyIj7PLtPQIV8UsBrFdHQ==
X-Gm-Gg: AZuq6aJ73gzxEnjYW6+mru95CHPnwbcakslcIc2SzL77er+HO+uxLKNt+BweIL0BM3k
	hD6aNGnTuDQv4tMjnwo7IOhsC3KpeNT1yyeM5dbZQ3U3OxlNUgGltBhxUP2RaCm3I21D5ngT+IU
	OqFJsg5TRbMkeNYeTQsILx3Cxn46GK9pFw6rt1hpBmdN5iC7y7qa99IJMiN61mJTjpYEyEf2v+n
	icPlFCD1xpmWLy57et4lAbU02NK6ko39K0Xq8JSiV5FVyytT40Sv8qkdtLBEVbC2shpZz+/AKNu
	Lrj918gfjPPh0Oh+JrZEPB3uJooVwEEQOn3lvA==
X-Received: by 2002:a05:6122:1dac:b0:567:fb8:c7ea with SMTP id
 71dfb90a1353d-568cdcff321mr832313e0c.8.1771506558574; Thu, 19 Feb 2026
 05:09:18 -0800 (PST)
MIME-Version: 1.0
References: <CABQiKjxzyMetFOQPRv-oEa+nm-jGbPEdtschXYA7eaP6e4tNcA@mail.gmail.com>
 <CAFOi1A4Sv9ajhuRnbcdD0aT8Znw6x0EC2Y1yXaAkP09w1g41kg@mail.gmail.com>
In-Reply-To: <CAFOi1A4Sv9ajhuRnbcdD0aT8Znw6x0EC2Y1yXaAkP09w1g41kg@mail.gmail.com>
From: P S Vishwanath Koushik <koushikpsvishwanath@gmail.com>
Date: Thu, 19 Feb 2026 18:39:05 +0530
X-Gm-Features: AaiRm50IZJk7oNOQ6Wxjfe5mAmTZ-8nqq6MTlIpwK4itaNgCnbwgg9cwEAdfWRU
Message-ID: <CABQiKjzhPkXoQ1H+OohWN5szSesSTW89=0s=Ggp-=ToZBUTUWQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: SWGL4U3RALR7UUW3RRLW4XGY5727HSY4
X-Message-ID-Hash: SWGL4U3RALR7UUW3RRLW4XGY5727HSY4
X-MailFrom: koushikpsvishwanath@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sample Rate Forcing to 184.32 MSps on USRP-2952R (X310) for 122.88 MSps Request and Buffer Overflow issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SWGL4U3RALR7UUW3RRLW4XGY5727HSY4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4742780443637427328=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[koushikpsvishwanath@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim]
X-Rspamd-Queue-Id: 3988F15EEE1
X-Rspamd-Action: no action

--===============4742780443637427328==
Content-Type: multipart/alternative; boundary="000000000000242597064b2d03ba"

--000000000000242597064b2d03ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,
Thank you very much for precisely pointing out the solution for operating
at 122.88Msps. Can you please suggest on how can i resolve this issue of
"LLLLLLL" sequence? Is there any OS level tuning/configuration required?

Regards,
Vishwanath

On Thu, 19 Feb 2026 at 17:43, Martin Braun <martin.braun@ettus.com> wrote:

> 122.88 Msps is not supported on X310 out of the box. The N310 and N320
> series can do this, and of course the X410.
>
> It is possible to create a 1.5x resampler as an RFNoC block, but such a
> block is not available as a turnkey solution, so you would have to do FPG=
A
> development to enable that. If you had such a block, you could run at
> 184.32 MHz master clock rate and decimate by 1.5 giving you your desired
> rate.
>
> --M
>
> On Thu, Feb 19, 2026 at 11:32=E2=80=AFAM P S Vishwanath Koushik <
> koushikpsvishwanath@gmail.com> wrote:
>
>> Dear USRP Community,
>>
>> I am currently working with OpenAirInterface (OAI) 2026.w06 and using a
>> NI/Ettus USRP-2952R (X310 class device, XG FPGA image, reported type as
>> x300) for 5G NR gNB experiments.
>>
>> I am attempting to configure a 100 MHz NR carrier (273 PRB, 30 kHz SCS,
>> band 77). Based on 3GPP numerology, the expected sampling rate is 122.88
>> MSps. However, when configuring the device, UHD reports:
>>
>> "[WARNING] [MULTI_USRP] Could not set RX rate to 122.880 MHz. Actual rat=
e
>> is 184.320 MHz"
>> "[WARNING] [MULTI_USRP] Could not set TX rate to 122.880 MHz. Actual rat=
e
>> is 184.320 MHz"
>>
>> The device is therefore running at 184.32 MSps instead of the requested
>> 122.88 MSps.
>>
>> System Details:
>>
>> =E2=80=A2 SDR: USRP-2952R (X310 class, XG FPGA image)
>> =E2=80=A2 Master clock observed: 184.32 MHz
>> =E2=80=A2 UHD version: 4.8.0
>> =E2=80=A2 OAI version: 2026.w06
>> =E2=80=A2 Host CPU: Intel i7-7700 (4 cores / 8 threads)
>> =E2=80=A2 CPU governor: performance (all cores locked to max frequency)
>> =E2=80=A2 NIC: Single 10G interface
>> =E2=80=A2 MTU of 10G Interface : 9000
>> =E2=80=A2 Network buffers configured as:
>>
>> net.core.wmem_max=3D33554432
>> net.core.rmem_max=3D33554432
>> net.core.wmem_default=3D33554432
>> net.core.rmem_default=3D33554432
>>
>> =E2=80=A2 Using single 10G link
>>
>> Observed behavior:
>>
>> When operating at 273 PRB (100 MHz), I see continuous sequences of:
>>
>> *LLLLLLLLLLLL*
>>
>> along with:
>>
>> *L[HW]* *Buffer overflow, count_write =3D 10, start =3D 4 end =3D 4, res=
etting
>> write package.*
>>
>> It appears that because 122.88 MSps does not satisfy the integer
>> MCR/decimation requirement (184.32 / 122.88 =3D 1.5), UHD forces the sam=
pling
>> rate to 184.32 MSps (decimation =3D 1). This significantly increases hos=
t
>> data throughput and processing load, possibly contributing to the buffer
>> overflows and late processing.
>>
>> I would appreciate clarification on the following:
>>
>>    1.
>>
>>    Is 122.88 MSps fundamentally unsupported with MCR =3D 184.32 MHz on t=
he
>>    X310 architecture?
>>    2.
>>
>>    Is there a recommended master clock configuration for stable 100 MHz
>>    NR operation?
>>
>> OAI gNB Logs are attached for your reference.
>>
>> Thank you for your guidance.
>>
>> Regards,
>> Vishwanath
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000242597064b2d03ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Martin,<br></div>Thank you very much for=
 precisely pointing out the solution for operating at 122.88Msps. Can you p=
lease suggest on how can i resolve this issue of &quot;LLLLLLL&quot; sequen=
ce? Is there any OS level tuning/configuration required?=C2=A0<br><br></div=
>Regards,<br></div>Vishwanath</div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 19 Feb 2026 at 1=
7:43, Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">martin.bra=
un@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>122.88 Msps is not supported on X310 out =
of the box. The N310 and N320 series can do this, and of course the X410.</=
div><div><br></div><div>It is possible to create a 1.5x resampler as an RFN=
oC block, but such a block is not available as a turnkey solution, so you w=
ould have to do FPGA development to enable that. If you had such a block, y=
ou could run at 184.32 MHz master clock rate and decimate by 1.5 giving you=
 your desired rate.</div><div><br></div><div>--M</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 19, 2026=
 at 11:32=E2=80=AFAM P S Vishwanath Koushik &lt;<a href=3D"mailto:koushikps=
vishwanath@gmail.com" target=3D"_blank">koushikpsvishwanath@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><p>Dear USRP Community,</p><p>I am currently working with OpenAi=
rInterface (OAI) 2026.w06 and using a NI/Ettus USRP-2952R (X310 class devic=
e, XG FPGA image, reported type as x300) for 5G NR gNB experiments.</p><p>I=
 am attempting to configure a 100 MHz NR carrier (273 PRB, 30 kHz SCS, band=
 77). Based on 3GPP numerology, the expected sampling rate is 122.88 MSps. =
However, when configuring the device, UHD reports:</p><p>&quot;[WARNING] [M=
ULTI_USRP] Could not set RX rate to 122.880 MHz. Actual rate is 184.320 MHz=
&quot;<br>&quot;[WARNING] [MULTI_USRP] Could not set TX rate to 122.880 MHz=
. Actual rate is 184.320 MHz&quot;</p><p>The device is therefore running at=
 184.32 MSps instead of the requested 122.88 MSps.</p><p>System Details:</p=
><p>=E2=80=A2 SDR: USRP-2952R (X310 class, XG FPGA image)<br>=E2=80=A2 Mast=
er clock observed: 184.32 MHz<br>=E2=80=A2 UHD version: 4.8.0<br>=E2=80=A2 =
OAI version: 2026.w06<br>=E2=80=A2 Host CPU: Intel i7-7700 (4 cores / 8 thr=
eads)<br>=E2=80=A2 CPU governor: performance (all cores locked to max frequ=
ency)<br>=E2=80=A2 NIC: Single 10G interface<br>=E2=80=A2 MTU of 10G Interf=
ace : 9000=C2=A0<br>=E2=80=A2 Network buffers configured as:</p><p>net.core=
.wmem_max=3D33554432<br>net.core.rmem_max=3D33554432<br>net.core.wmem_defau=
lt=3D33554432<br>net.core.rmem_default=3D33554432</p><p>=E2=80=A2 Using sin=
gle 10G link</p><p>Observed behavior:</p><p>When operating at 273 PRB (100 =
MHz), I see continuous sequences of:</p><p><b>LLLLLLLLLLLL</b></p><p>along =
with:</p><p><b>L[HW]</b> <b>Buffer overflow, count_write =3D 10, start =3D =
4 end =3D 4, resetting write package.</b></p><p>It appears that because 122=
.88 MSps does not satisfy the integer MCR/decimation requirement (184.32 / =
122.88 =3D 1.5), UHD forces the sampling rate to 184.32 MSps (decimation =
=3D 1). This significantly increases host data throughput and processing lo=
ad, possibly contributing to the buffer overflows and late processing.</p><=
p>I would appreciate clarification on the following:</p><ol><li><p>Is 122.8=
8 MSps fundamentally unsupported with MCR =3D 184.32 MHz on the X310 archit=
ecture?</p></li><li><p>Is there a recommended master clock configuration fo=
r stable 100 MHz NR operation?</p></li></ol><p>OAI gNB Logs are attached fo=
r your reference.</p><p>Thank you for your guidance.</p><p>Regards,<br>Vish=
wanath</p><br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000242597064b2d03ba--

--===============4742780443637427328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4742780443637427328==--
