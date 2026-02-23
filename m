Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mF9+JWYXnGkq/gMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 23 Feb 2026 10:01:26 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 836B217367D
	for <lists+usrp-users@lfdr.de>; Mon, 23 Feb 2026 10:01:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81202385D7B
	for <lists+usrp-users@lfdr.de>; Mon, 23 Feb 2026 04:01:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771837273; bh=kUtRpiP2A8X4EK7nPoStUKWTViWozbcy8/M/aiI1waA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HUJ5jOa5tU+uaOTaO9GMRe0JgOKVM3wanExilIeiMIvyDFWvqO/27k0cGm/I4nYP7
	 G615DbQWGujgZQFEWD6635vtt9aGg46TrSZ+shvxfIk0RgeCAJiX+8rNqKAsLUI7ox
	 0GtzIeyIE2S9h9HMTboj/W1lj9Py5YJ20RG3VKfbkNC27wFXLj0q/m8tWo3rKqoAy3
	 39wheHQkBE0TJG0wjw/JUPge4vPcywUsvJNVF4TfyF23TF3WWyMdHDKUTT7UCJEYm8
	 z+rTdk6P04VTlNSEnUJ33rQQSBGijAN0bWbLJokY29BAmC7FXgp0bN09ShDaGuhT4b
	 gVcwqPwiqfmvQ==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id E3D2D383EB6
	for <usrp-users@lists.ettus.com>; Mon, 23 Feb 2026 04:01:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="PildCxFc";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-5062fc5d86aso39800731cf.1
        for <usrp-users@lists.ettus.com>; Mon, 23 Feb 2026 01:01:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771837262; cv=none;
        d=google.com; s=arc-20240605;
        b=XXHc9cnTMc6wD0VaAWqUjY3B8z2nhMEb3JIkhQZrFbU4nK5fpEhw7sCmBEqZ5oNfV5
         zJzkkzwYsXNIiN625NECZC8ahSj032DNSkz+rsckvkNlFDfYqulPy4AXQnMwutM2idKh
         3dXGRJRUx4F8ZhzpUEjcXWaKPjv9fbFH0b27mnWVD1ckmZ9IATXsIaqjUoQS2Xy96gMS
         V/yoejlb6LuNskPw30ZyleHuvGfpMC3qXjGi73mJ39qCmE2ay5Itg/62XHcaqYLSSO3A
         WtwxDZmemZBl0KA+p0rR6iYDtuArIXxIzJE70yASJIc4o2pXS43C92vRmbguTwVkX129
         qc/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=boZ1msnfUMreaHhZXqcqJ0asK2W2QETIBWqdREHiOEA=;
        fh=p7VlfDdZp+EpD6H9MeMQavN8IacX+oZG4K/LI1eE0ss=;
        b=Iaz+xZHrg1mH955MvQy3N7vwUQeXKxuINf9tlQE4m8/Azko3NLjiAtFz6SQOQJXfw8
         ncUvptF6En/0PyKNCqBLDQ0FgzyNkFnEYeakURIKQiZ6K6VlRzduCvznDlKnC7EuPRiv
         AjXfZ1Qc59SQJInTSTPjQ0Z3K9Ovv34G5pAivGcaCXcvExpIMi2lK81DAZjXkAmDZveo
         8FePk8+tyEXuwhJurwfETNrNnc5y5GbEbOFJTYfyBFL3aKnsQACUiLsvSqoKenSALdrT
         wW47Cl58tyRpOC8wkUKyWdwmammXGXg/71sVQTRElENYpmXcyqjPLwONNoFpPKbXPBU8
         CC1Q==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771837262; x=1772442062; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=boZ1msnfUMreaHhZXqcqJ0asK2W2QETIBWqdREHiOEA=;
        b=PildCxFcObfARDa/gtGvcgIhAh9Mzb1/4q/a26YDUUhYBSIbzPhngBOKVrFjWSBStQ
         6CQxOdptPsYkiE+lT+jBmPk7lNqC/bBxNrj3/TcVNO4+VhHlxhXLwZT6GnTAfbop83gb
         0Q1GjKVJWTGvJIjN/jbXoWzzOIOOa+xkjldGrdQDj+du/IPWnaXiCXQ5HtjZlILRaDgN
         Bf/exlPKBuagFE4mAWUK5xM2eDag8h+eTFAL2G0KWHlXBBY9kWm7fhI8B3PawR+9T6U6
         0bMUgr8KR2tK1Y4m2FupbnBfvoCU796nEGv+wOtCV9q62wBw5bP6az6X+mpjwdKn+D+h
         816A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771837262; x=1772442062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=boZ1msnfUMreaHhZXqcqJ0asK2W2QETIBWqdREHiOEA=;
        b=QOrZEM5dVOhQZVH07JeJs6QJSN1Z7Ma4p1ExEzl/mua7QuFBiSd6jm4vtNymupgnue
         aAwUlmGzr6hv73v7BBfWTju1s8o0JosaegWQ6wpLSGuOB91aAG9QVkmfYF70t5yLyGBa
         jBlLkjB+Ptwbv57nhTr2oa2tBe2XA1o/9Pbi1SZ9Wn+Q9aBptQyxjjhHDotOdCtewX5N
         mbGJuiaDe4C5k/c3ybHGLEAaGCKiYJZeQEvFlNkn2qg4E8HbjU5/fE8Cqcsqcy1c7b/X
         AmXmL/Wrjo3E5PgdN/Y3WiliOSkyIw9i2guDZdqNY5pMyU9FuDoW4GQ+4sdVciCExoya
         Z99g==
X-Gm-Message-State: AOJu0YxJ+Le66GYL6tM3X7swF9S621KW+6IPz9L52quUSESk4z3Wk+vz
	CzUYa2Zq9FwzKawmsW93Lt7F7K6AzgBllRUqmQ8eNjqPWXxdDXwP5+DMQWlOB8E2AAjd7fBb7bg
	P97VfRr8PXT0iC+JGD8YJBGyvvLZKZ9SLJpC9oWrKE9+qF1NOzf0ZKCY=
X-Gm-Gg: AZuq6aL4Ut/hywTr5Ke55RGyfbgm2EDp4SSI8pPJ/E0Rq4AKS7rAGMKVGWD27nNgGma
	P4tz2WARaqB8E+05P0YQOzSBhkqFM70OzCoB088CmYdOBXpgqRVg3lLVWoosbM/HnljC1lbX4CZ
	jazJJuHuQ1IyK4m6EZ9e/pu42NLALmX1kvPeA5Val8XwPGtLlANFF8ZJXpo9V0s3ZF3idUds62z
	LXEU0jblCegDIcfQxMZocydk90WtLq7iG6uLEsspUz5vKPsRe94IQMkRw7JJqGWPC8s7+4xW5uX
	7JuVAiFZdr0i6U81rR3C1/lG8P1c5mBxvr0JFLGY+SvD1uu2
X-Received: by 2002:ac8:7d82:0:b0:506:be2c:a96d with SMTP id
 d75a77b69052e-5070bb816ffmr120666631cf.3.1771837262122; Mon, 23 Feb 2026
 01:01:02 -0800 (PST)
MIME-Version: 1.0
References: <CABQiKjxzyMetFOQPRv-oEa+nm-jGbPEdtschXYA7eaP6e4tNcA@mail.gmail.com>
 <CAFOi1A4Sv9ajhuRnbcdD0aT8Znw6x0EC2Y1yXaAkP09w1g41kg@mail.gmail.com> <CABQiKjzhPkXoQ1H+OohWN5szSesSTW89=0s=Ggp-=ToZBUTUWQ@mail.gmail.com>
In-Reply-To: <CABQiKjzhPkXoQ1H+OohWN5szSesSTW89=0s=Ggp-=ToZBUTUWQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 23 Feb 2026 10:00:51 +0100
X-Gm-Features: AaiRm51448KP-hMmVNB7lm2wNtmHDbco0jTIusX0YLbHQLP20u-st1vbJ-Tjf7Q
Message-ID: <CAFOi1A7-Cf15DijMELLwhYd6BZbpr5P-vnswJpk9FV4rvD+7kQ@mail.gmail.com>
To: P S Vishwanath Koushik <koushikpsvishwanath@gmail.com>
Message-ID-Hash: RNAYX2WFTLWJK2XI7A7MM5OOHHJ46OFG
X-Message-ID-Hash: RNAYX2WFTLWJK2XI7A7MM5OOHHJ46OFG
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sample Rate Forcing to 184.32 MSps on USRP-2952R (X310) for 122.88 MSps Request and Buffer Overflow issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RNAYX2WFTLWJK2XI7A7MM5OOHHJ46OFG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4490742470521194183=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[ettus.com:query timed out,emwd.com:query timed out];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	RSPAMD_EMAILBL_FAIL(0.00)[koushikpsvishwanath.gmail.com:query timed out];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 836B217367D
X-Rspamd-Action: no action

--===============4490742470521194183==
Content-Type: multipart/alternative; boundary="0000000000009bdc28064b7a02af"

--0000000000009bdc28064b7a02af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Vishwanath,

The LLLLL sequence means that your Tx samples are reaching the device too
late. So, anything that affects processing latency on your host could be
the culprit.

Since you are now running at 184.32 Msps, your required throughput is much
higher than before. Are you resampling on the host? If so, that could be
costing you.

--M

On Thu, Feb 19, 2026 at 2:09=E2=80=AFPM P S Vishwanath Koushik <
koushikpsvishwanath@gmail.com> wrote:

> Hi Martin,
> Thank you very much for precisely pointing out the solution for operating
> at 122.88Msps. Can you please suggest on how can i resolve this issue of
> "LLLLLLL" sequence? Is there any OS level tuning/configuration required?
>
> Regards,
> Vishwanath
>
> On Thu, 19 Feb 2026 at 17:43, Martin Braun <martin.braun@ettus.com> wrote=
:
>
>> 122.88 Msps is not supported on X310 out of the box. The N310 and N320
>> series can do this, and of course the X410.
>>
>> It is possible to create a 1.5x resampler as an RFNoC block, but such a
>> block is not available as a turnkey solution, so you would have to do FP=
GA
>> development to enable that. If you had such a block, you could run at
>> 184.32 MHz master clock rate and decimate by 1.5 giving you your desired
>> rate.
>>
>> --M
>>
>> On Thu, Feb 19, 2026 at 11:32=E2=80=AFAM P S Vishwanath Koushik <
>> koushikpsvishwanath@gmail.com> wrote:
>>
>>> Dear USRP Community,
>>>
>>> I am currently working with OpenAirInterface (OAI) 2026.w06 and using a
>>> NI/Ettus USRP-2952R (X310 class device, XG FPGA image, reported type as
>>> x300) for 5G NR gNB experiments.
>>>
>>> I am attempting to configure a 100 MHz NR carrier (273 PRB, 30 kHz SCS,
>>> band 77). Based on 3GPP numerology, the expected sampling rate is 122.8=
8
>>> MSps. However, when configuring the device, UHD reports:
>>>
>>> "[WARNING] [MULTI_USRP] Could not set RX rate to 122.880 MHz. Actual
>>> rate is 184.320 MHz"
>>> "[WARNING] [MULTI_USRP] Could not set TX rate to 122.880 MHz. Actual
>>> rate is 184.320 MHz"
>>>
>>> The device is therefore running at 184.32 MSps instead of the requested
>>> 122.88 MSps.
>>>
>>> System Details:
>>>
>>> =E2=80=A2 SDR: USRP-2952R (X310 class, XG FPGA image)
>>> =E2=80=A2 Master clock observed: 184.32 MHz
>>> =E2=80=A2 UHD version: 4.8.0
>>> =E2=80=A2 OAI version: 2026.w06
>>> =E2=80=A2 Host CPU: Intel i7-7700 (4 cores / 8 threads)
>>> =E2=80=A2 CPU governor: performance (all cores locked to max frequency)
>>> =E2=80=A2 NIC: Single 10G interface
>>> =E2=80=A2 MTU of 10G Interface : 9000
>>> =E2=80=A2 Network buffers configured as:
>>>
>>> net.core.wmem_max=3D33554432
>>> net.core.rmem_max=3D33554432
>>> net.core.wmem_default=3D33554432
>>> net.core.rmem_default=3D33554432
>>>
>>> =E2=80=A2 Using single 10G link
>>>
>>> Observed behavior:
>>>
>>> When operating at 273 PRB (100 MHz), I see continuous sequences of:
>>>
>>> *LLLLLLLLLLLL*
>>>
>>> along with:
>>>
>>> *L[HW]* *Buffer overflow, count_write =3D 10, start =3D 4 end =3D 4,
>>> resetting write package.*
>>>
>>> It appears that because 122.88 MSps does not satisfy the integer
>>> MCR/decimation requirement (184.32 / 122.88 =3D 1.5), UHD forces the sa=
mpling
>>> rate to 184.32 MSps (decimation =3D 1). This significantly increases ho=
st
>>> data throughput and processing load, possibly contributing to the buffe=
r
>>> overflows and late processing.
>>>
>>> I would appreciate clarification on the following:
>>>
>>>    1.
>>>
>>>    Is 122.88 MSps fundamentally unsupported with MCR =3D 184.32 MHz on
>>>    the X310 architecture?
>>>    2.
>>>
>>>    Is there a recommended master clock configuration for stable 100 MHz
>>>    NR operation?
>>>
>>> OAI gNB Logs are attached for your reference.
>>>
>>> Thank you for your guidance.
>>>
>>> Regards,
>>> Vishwanath
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000009bdc28064b7a02af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Vishwanath,<br><br>The LLLLL sequence means that your T=
x samples are reaching the device too late. So, anything that affects proce=
ssing latency on your host could be the culprit.<br><br>Since you are now r=
unning at 184.32 Msps, your required throughput is much higher than before.=
 Are you resampling on the host? If so, that could be costing you.<br><br>-=
-M</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Feb 19, 2026 at 2:09=E2=80=AFPM P S Vishwan=
ath Koushik &lt;<a href=3D"mailto:koushikpsvishwanath@gmail.com">koushikpsv=
ishwanath@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hi Martin,<br></div>Than=
k you very much for precisely pointing out the solution for operating at 12=
2.88Msps. Can you please suggest on how can i resolve this issue of &quot;L=
LLLLLL&quot; sequence? Is there any OS level tuning/configuration required?=
=C2=A0<br><br></div>Regards,<br></div>Vishwanath</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 19 Feb 2026 at 17:4=
3, Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_bl=
ank">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div>122.88 Msps is not support=
ed on X310 out of the box. The N310 and N320 series can do this, and of cou=
rse the X410.</div><div><br></div><div>It is possible to create a 1.5x resa=
mpler as an RFNoC block, but such a block is not available as a turnkey sol=
ution, so you would have to do FPGA development to enable that. If you had =
such a block, you could run at 184.32 MHz master clock rate and decimate by=
 1.5 giving you your desired rate.</div><div><br></div><div>--M</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Feb 19, 2026 at 11:32=E2=80=AFAM P S Vishwanath Koushik &lt;<a href=3D"ma=
ilto:koushikpsvishwanath@gmail.com" target=3D"_blank">koushikpsvishwanath@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><p>Dear USRP Community,</p><p>I am currently worki=
ng with OpenAirInterface (OAI) 2026.w06 and using a NI/Ettus USRP-2952R (X3=
10 class device, XG FPGA image, reported type as x300) for 5G NR gNB experi=
ments.</p><p>I am attempting to configure a 100 MHz NR carrier (273 PRB, 30=
 kHz SCS, band 77). Based on 3GPP numerology, the expected sampling rate is=
 122.88 MSps. However, when configuring the device, UHD reports:</p><p>&quo=
t;[WARNING] [MULTI_USRP] Could not set RX rate to 122.880 MHz. Actual rate =
is 184.320 MHz&quot;<br>&quot;[WARNING] [MULTI_USRP] Could not set TX rate =
to 122.880 MHz. Actual rate is 184.320 MHz&quot;</p><p>The device is theref=
ore running at 184.32 MSps instead of the requested 122.88 MSps.</p><p>Syst=
em Details:</p><p>=E2=80=A2 SDR: USRP-2952R (X310 class, XG FPGA image)<br>=
=E2=80=A2 Master clock observed: 184.32 MHz<br>=E2=80=A2 UHD version: 4.8.0=
<br>=E2=80=A2 OAI version: 2026.w06<br>=E2=80=A2 Host CPU: Intel i7-7700 (4=
 cores / 8 threads)<br>=E2=80=A2 CPU governor: performance (all cores locke=
d to max frequency)<br>=E2=80=A2 NIC: Single 10G interface<br>=E2=80=A2 MTU=
 of 10G Interface : 9000=C2=A0<br>=E2=80=A2 Network buffers configured as:<=
/p><p>net.core.wmem_max=3D33554432<br>net.core.rmem_max=3D33554432<br>net.c=
ore.wmem_default=3D33554432<br>net.core.rmem_default=3D33554432</p><p>=E2=
=80=A2 Using single 10G link</p><p>Observed behavior:</p><p>When operating =
at 273 PRB (100 MHz), I see continuous sequences of:</p><p><b>LLLLLLLLLLLL<=
/b></p><p>along with:</p><p><b>L[HW]</b> <b>Buffer overflow, count_write =
=3D 10, start =3D 4 end =3D 4, resetting write package.</b></p><p>It appear=
s that because 122.88 MSps does not satisfy the integer MCR/decimation requ=
irement (184.32 / 122.88 =3D 1.5), UHD forces the sampling rate to 184.32 M=
Sps (decimation =3D 1). This significantly increases host data throughput a=
nd processing load, possibly contributing to the buffer overflows and late =
processing.</p><p>I would appreciate clarification on the following:</p><ol=
><li><p>Is 122.88 MSps fundamentally unsupported with MCR =3D 184.32 MHz on=
 the X310 architecture?</p></li><li><p>Is there a recommended master clock =
configuration for stable 100 MHz NR operation?</p></li></ol><p>OAI gNB Logs=
 are attached for your reference.</p><p>Thank you for your guidance.</p><p>=
Regards,<br>Vishwanath</p><br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000009bdc28064b7a02af--

--===============4490742470521194183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4490742470521194183==--
