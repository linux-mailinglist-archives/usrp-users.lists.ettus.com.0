Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOeUC3/+lmmItQIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:13:51 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B22F615E83B
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:13:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00DE9385C21
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 07:13:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771503229; bh=rjGr25D0I8aUwJDDl3CyNAf6ioeNWBF34A2tvIFnStE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nhpFS0hKUZ51YFUzhy0FJvlX6gef/cvaagA8KBHBf2B+OCmYT2TqAONICbisZX7ct
	 7y7OlKAF1yIHAfZAKBOLb491h7qO0Eoe0LjTAY0wQ2KglCkBPjLxc3T+XHV1g1Hwb3
	 CHiHNdabvT/e53+egvvG+zFJz40ascRSZgvS9Fk9cc38M1qIZoTfxYP4WDFwBnk416
	 9LHAOhYLUSCNUs9dO/u3srMeZJ4yrT9k2kBciEQN7UdDZC+3AtXiWit5S66vDyXf8Z
	 8YeezUqKEhR4H8O1gtcmGfG0z1vXTkYezIv1K2GWh1uPzq8AtnTUCI2HT97pk73AJg
	 /5JYPNkg5rEdA==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id E5055384E6F
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 07:13:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="h8mSz+Px";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-506c00df428so7543371cf.3
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 04:13:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771503191; cv=none;
        d=google.com; s=arc-20240605;
        b=Gq8oenm/myuaq2mwuQfKHcCFtSnwzHu77o6+D7KEArSxyN9AUqon5nU/qtYZ7IdAsk
         2RjQkxgQOncNK9wl7YsP533Nv086bPoPlOfFm9dr7Zqul0DFGBxh7AQ6w3gw+JZVKZPx
         wSmynZToupyBOExMRxOJmR1ROPUC/pkluHDDhR8Nv7spy2yXweICVDOwJSXbGULGJGHP
         Ww32ELr5tyNGWpZf3VQuFSZnc1OWOlqHK59lqQMFDcgjktqjvZt+NOhiJ5AM6bvKDSKI
         C+aDIAqK12S0BvAcUSK057Wfhh2L5uJowjE6t7NogksBphrOpq09Jx3MkxaLvL+DC3mJ
         vLkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mf+tcGcjE4gs1/fN23Pj0QYAD4TuOatxzbixW64datM=;
        fh=p7VlfDdZp+EpD6H9MeMQavN8IacX+oZG4K/LI1eE0ss=;
        b=JA3mgalyVmWeXryplbcUs29PBpRTw0RU0Hziz3lfhIfjLpyJaMo87RHnJXI97uU+7F
         PLmwPCKDfkeI5WJvgLOmHK1DlcqyKJlcW6Nmw60LwgH0iN/M4dsj6w+nvcRdKVrc8X3P
         sLzh7Pew/ErtodXZO15XIE3mcN7u0eJ9pwaKdMbnwrzTYTAGBn1QArl/4FN3Be1XpRrH
         yClfA3hygrfHDkrVgwfkmyDDqzHMgi31iYAnNOlvZVRpO46KkpkBC4erhI3ZLx6I4Aeh
         KeqX0HlX1PC2bWv5ikHY1eYi1z/5RX3weISMcKHwsmUw3lnalCnkBGvGnqw9H9AkFugS
         xqOQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771503191; x=1772107991; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mf+tcGcjE4gs1/fN23Pj0QYAD4TuOatxzbixW64datM=;
        b=h8mSz+PxANELOngB7/DobcvhRqUCm5mwWunPCURzGUkbxf6G1O4TRamG5esxPwyCDa
         5w1EOQdjjBDDZH3aSuKN6gKA1zNuKY+Cy8zze9RBT57LmJ+pmqueOfz3CM/oq7Tyzk/J
         2ifGiUzVwwNd797Y4eGMcp9NAE/AFYOMFp3MdAjkenXQG0Jr4wnVAyZySryd7EjqoDYZ
         NGKMGM50PydCxap9NIu2MV2hRXGKSQx2ARTBK7aq81Gkdfm8sIchqVTUyDLcYnyI9Ayh
         LC2HtCpwf8S0TqFVcs3XZK1lpm4+fWYpSm66u3AnlZW0oIiMs5kG0SZY48CuI0ta7Z2c
         RsgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771503191; x=1772107991;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mf+tcGcjE4gs1/fN23Pj0QYAD4TuOatxzbixW64datM=;
        b=ql7CijUg6UstvLq0TPghZGrpkGkZuXRG/5MGbZavAx148ez/JdDeKtdVs1cCdg+4w5
         HcpdPaMtPCYWJy+7HWwZbxh6EJbpLdacbcyJk6zPHfsO4OPDHnBEaa0uI1nTrSNCt+QV
         sB/F1we+SNaWusIsf2BbdLwLVNHNDCEriOFN0Xv5mLyxPIk0QTSyce+9OMYO1pfdnQl8
         9oJLhy8IcRCnFZe0ivYAVgqaQya4rW2lhyzJrs8TRXZP2MYL25UAd1wpJvso240Hwxna
         C1J2dHw8MW0+z+AsjiiG56FlnVasr7WhLRwvsyvHGWIVDM36ALt5gSLv51nSd8aOTLiD
         TmGA==
X-Gm-Message-State: AOJu0YxDn1EYcrhZwC4A6d2dbT31U7gcJFD0eZIpBYej+yl3PTSVKIqa
	qCs0+N83dyck69S0CiZ6sPcF6YJWB3Ybfq3JHQn7BLYWGjUxAv6sNFTbvtNkfgOWo/ExOys+yVk
	zVIUFCJi5bN9odOeITXoTlLO85OWUWhxGwQ2LYFy1GBur
X-Gm-Gg: AZuq6aLcVxRx4AX7GBJKcSxhaLG3lcPSOAD3FlUurlgQWow3mcTZREqQLdmhOdlyOL/
	AHolavDDtUecDDYCK70FrTEtKzXiHLUii5I1h8GGPORweVLbageCCzlc1xFRAZkTxWmcgDjGTd5
	6RSotuBExr4Xxoa8LI6lXHpAAj2nHQQ9NAfO4xArs0TcoAqZDTm3LuJ1lSNnUHPKMfqZeJYySsz
	N3ahfdxf7frG9zUmQbKIucFxkh6M9rDEZ9VyNLfqL7g8Kp1L4UtR1Mfd197apGHM2w2Dk+rDhES
	wkz85TGTvNZKNiYrOxWq2rGm4cUhkpfyXvyS2SvDRHOM1obo
X-Received: by 2002:a05:622a:11cb:b0:501:466b:5141 with SMTP id
 d75a77b69052e-506e91922f3mr66748351cf.18.1771503191155; Thu, 19 Feb 2026
 04:13:11 -0800 (PST)
MIME-Version: 1.0
References: <CABQiKjxzyMetFOQPRv-oEa+nm-jGbPEdtschXYA7eaP6e4tNcA@mail.gmail.com>
In-Reply-To: <CABQiKjxzyMetFOQPRv-oEa+nm-jGbPEdtschXYA7eaP6e4tNcA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 13:13:00 +0100
X-Gm-Features: AaiRm52wA-YvraS4XxbXI3xEZMKolluFW4jXEMhbNAugd176-5FPjmfDfQNqv_k
Message-ID: <CAFOi1A4Sv9ajhuRnbcdD0aT8Znw6x0EC2Y1yXaAkP09w1g41kg@mail.gmail.com>
To: P S Vishwanath Koushik <koushikpsvishwanath@gmail.com>
Message-ID-Hash: QVLI64OIC4A4RK3464LPQ7H32FDEPZFJ
X-Message-ID-Hash: QVLI64OIC4A4RK3464LPQ7H32FDEPZFJ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sample Rate Forcing to 184.32 MSps on USRP-2952R (X310) for 122.88 MSps Request and Buffer Overflow issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QVLI64OIC4A4RK3464LPQ7H32FDEPZFJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0958077575369020038=="
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
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim]
X-Rspamd-Queue-Id: B22F615E83B
X-Rspamd-Action: no action

--===============0958077575369020038==
Content-Type: multipart/alternative; boundary="0000000000006d7238064b2c3a0a"

--0000000000006d7238064b2c3a0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

122.88 Msps is not supported on X310 out of the box. The N310 and N320
series can do this, and of course the X410.

It is possible to create a 1.5x resampler as an RFNoC block, but such a
block is not available as a turnkey solution, so you would have to do FPGA
development to enable that. If you had such a block, you could run at
184.32 MHz master clock rate and decimate by 1.5 giving you your desired
rate.

--M

On Thu, Feb 19, 2026 at 11:32=E2=80=AFAM P S Vishwanath Koushik <
koushikpsvishwanath@gmail.com> wrote:

> Dear USRP Community,
>
> I am currently working with OpenAirInterface (OAI) 2026.w06 and using a
> NI/Ettus USRP-2952R (X310 class device, XG FPGA image, reported type as
> x300) for 5G NR gNB experiments.
>
> I am attempting to configure a 100 MHz NR carrier (273 PRB, 30 kHz SCS,
> band 77). Based on 3GPP numerology, the expected sampling rate is 122.88
> MSps. However, when configuring the device, UHD reports:
>
> "[WARNING] [MULTI_USRP] Could not set RX rate to 122.880 MHz. Actual rate
> is 184.320 MHz"
> "[WARNING] [MULTI_USRP] Could not set TX rate to 122.880 MHz. Actual rate
> is 184.320 MHz"
>
> The device is therefore running at 184.32 MSps instead of the requested
> 122.88 MSps.
>
> System Details:
>
> =E2=80=A2 SDR: USRP-2952R (X310 class, XG FPGA image)
> =E2=80=A2 Master clock observed: 184.32 MHz
> =E2=80=A2 UHD version: 4.8.0
> =E2=80=A2 OAI version: 2026.w06
> =E2=80=A2 Host CPU: Intel i7-7700 (4 cores / 8 threads)
> =E2=80=A2 CPU governor: performance (all cores locked to max frequency)
> =E2=80=A2 NIC: Single 10G interface
> =E2=80=A2 MTU of 10G Interface : 9000
> =E2=80=A2 Network buffers configured as:
>
> net.core.wmem_max=3D33554432
> net.core.rmem_max=3D33554432
> net.core.wmem_default=3D33554432
> net.core.rmem_default=3D33554432
>
> =E2=80=A2 Using single 10G link
>
> Observed behavior:
>
> When operating at 273 PRB (100 MHz), I see continuous sequences of:
>
> *LLLLLLLLLLLL*
>
> along with:
>
> *L[HW]* *Buffer overflow, count_write =3D 10, start =3D 4 end =3D 4, rese=
tting
> write package.*
>
> It appears that because 122.88 MSps does not satisfy the integer
> MCR/decimation requirement (184.32 / 122.88 =3D 1.5), UHD forces the samp=
ling
> rate to 184.32 MSps (decimation =3D 1). This significantly increases host
> data throughput and processing load, possibly contributing to the buffer
> overflows and late processing.
>
> I would appreciate clarification on the following:
>
>    1.
>
>    Is 122.88 MSps fundamentally unsupported with MCR =3D 184.32 MHz on th=
e
>    X310 architecture?
>    2.
>
>    Is there a recommended master clock configuration for stable 100 MHz
>    NR operation?
>
> OAI gNB Logs are attached for your reference.
>
> Thank you for your guidance.
>
> Regards,
> Vishwanath
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006d7238064b2c3a0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>122.88 Msps is not supported on X310 out of the box. =
The N310 and N320 series can do this, and of course the X410.</div><div><br=
></div><div>It is possible to create a 1.5x resampler as an RFNoC block, bu=
t such a block is not available as a turnkey solution, so you would have to=
 do FPGA development to enable that. If you had such a block, you could run=
 at 184.32 MHz master clock rate and decimate by 1.5 giving you your desire=
d rate.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb=
 19, 2026 at 11:32=E2=80=AFAM P S Vishwanath Koushik &lt;<a href=3D"mailto:=
koushikpsvishwanath@gmail.com">koushikpsvishwanath@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><p>Dear USRP Community,</p><p>I am currently working with OpenAirInterfac=
e (OAI) 2026.w06 and using a NI/Ettus USRP-2952R (X310 class device, XG FPG=
A image, reported type as x300) for 5G NR gNB experiments.</p><p>I am attem=
pting to configure a 100 MHz NR carrier (273 PRB, 30 kHz SCS, band 77). Bas=
ed on 3GPP numerology, the expected sampling rate is 122.88 MSps. However, =
when configuring the device, UHD reports:</p><p>&quot;[WARNING] [MULTI_USRP=
] Could not set RX rate to 122.880 MHz. Actual rate is 184.320 MHz&quot;<br=
>&quot;[WARNING] [MULTI_USRP] Could not set TX rate to 122.880 MHz. Actual =
rate is 184.320 MHz&quot;</p><p>The device is therefore running at 184.32 M=
Sps instead of the requested 122.88 MSps.</p><p>System Details:</p><p>=E2=
=80=A2 SDR: USRP-2952R (X310 class, XG FPGA image)<br>=E2=80=A2 Master cloc=
k observed: 184.32 MHz<br>=E2=80=A2 UHD version: 4.8.0<br>=E2=80=A2 OAI ver=
sion: 2026.w06<br>=E2=80=A2 Host CPU: Intel i7-7700 (4 cores / 8 threads)<b=
r>=E2=80=A2 CPU governor: performance (all cores locked to max frequency)<b=
r>=E2=80=A2 NIC: Single 10G interface<br>=E2=80=A2 MTU of 10G Interface : 9=
000=C2=A0<br>=E2=80=A2 Network buffers configured as:</p><p>net.core.wmem_m=
ax=3D33554432<br>net.core.rmem_max=3D33554432<br>net.core.wmem_default=3D33=
554432<br>net.core.rmem_default=3D33554432</p><p>=E2=80=A2 Using single 10G=
 link</p><p>Observed behavior:</p><p>When operating at 273 PRB (100 MHz), I=
 see continuous sequences of:</p><p><b>LLLLLLLLLLLL</b></p><p>along with:</=
p><p><b>L[HW]</b> <b>Buffer overflow, count_write =3D 10, start =3D 4 end =
=3D 4, resetting write package.</b></p><p>It appears that because 122.88 MS=
ps does not satisfy the integer MCR/decimation requirement (184.32 / 122.88=
 =3D 1.5), UHD forces the sampling rate to 184.32 MSps (decimation =3D 1). =
This significantly increases host data throughput and processing load, poss=
ibly contributing to the buffer overflows and late processing.</p><p>I woul=
d appreciate clarification on the following:</p><ol><li><p>Is 122.88 MSps f=
undamentally unsupported with MCR =3D 184.32 MHz on the X310 architecture?<=
/p></li><li><p>Is there a recommended master clock configuration for stable=
 100 MHz NR operation?</p></li></ol><p>OAI gNB Logs are attached for your r=
eference.</p><p>Thank you for your guidance.</p><p>Regards,<br>Vishwanath</=
p><br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006d7238064b2c3a0a--

--===============0958077575369020038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0958077575369020038==--
