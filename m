Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id p8u4OR/PlmkZoQIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 09:51:43 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCE815D1E0
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 09:51:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87946380BDF
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 03:51:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771491102; bh=ey5imz9mlejcS9PkwZrRiC0JjasWLeIDRzTHa+oCIVo=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bBHGvt4hN2MtXL+I4yJmMD6jQmmcIe4rTFBjIe++i4QMd6gafvtq+b0t3fraqH6mY
	 5mGJq7seNvuSsapzSz9E6J0tLCV0UDq7xX8AJb5OQR+1bolJoRVc5CsZavz2WiIU7q
	 WihzC0kay9IovOEXW/DLKnQmgfDluo0ZvJMEvE6D8f3SzhVNpZvWPaq1bODVzwUfJD
	 2hUPcJexeDLrkt7nEl+z+kmUrVOpvJzY7YIyUCSHVNX+9Yojhvfi5r0YNUlSXIiQId
	 liWOyx0ZC/Co5RlNTt1LtOOYabfXuAsDJdIl9CCqPD0G6/zE2YzGq/8NtPapjOUnxA
	 ccTSHu5PL4Q0Q==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 305183800AE
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 03:51:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="HFe0dPP0";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-8947ddce09fso6082326d6.3
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 00:51:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771491078; cv=none;
        d=google.com; s=arc-20240605;
        b=Ru6HwprdjkMvdRY8EDRIfv2d0nhdxP17m6HWZKjD0xjpgrVhWPWfeo+gFFu7LCmZ2Z
         zZYDeunWf/6o82uSI8sCrLSr2V0E7wPsCHp8mGGQivODkA5pRvotgfa9qex+sCypD73M
         OswaGpRkwR0u7ghgryGTkHnnCvmYwcqbfEdV6F9w13ACFQJIv1ee2Bxf/YkxB+wZmix9
         /1deNWafMuwLbVN/EsxhuQ5l67Q5wZZCc/NfDj9NqjVOjrmWBJfvESH+wFA6PZuYj6bd
         zzX23tH3ySOITGzKhe7KozivQUecD++pfgPcbqJOwDxZ7Rz8LxungcHj4qkfkgD9z2i4
         RD2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=/vBNMmsA4lLTR8DiXeFB8gRcL31HJdjg/jyt3hbrVhA=;
        fh=Rni46yqVkxPnzoJaeasF2jRWS6SwffKhmhdmBaa8z1Q=;
        b=N2XykMVODqhG3LN+Wp5sFKno/EF7umuD2GRYkcWYmbk9rpohFigPKajwEZ/vBXXJN6
         mow6PDnMNEalYFmIdquITXS196yMjCclyN1M0vFhp893KDBLLMDKC7qcs8OW2AU2lpuc
         6TbYyMJTJqVBK8yZkzeCVuyR6cH1Kkuhr0nbjcXYo0LJNEClSzu2SoNXL78hcHyv1Rdd
         KUz99bC2CHLGB5yRebaLyU2Xm9wYPaAZAwOACbfcFkZlsOfhcPcGFgkRrv+F4zrB+4MO
         vDCEZmp9U9+8Gc9y1nfJMUbuGc9gZmUw8nhhsfm2xMKOk2YADjFEaQKihlmVoK5dG0mB
         gilA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771491078; x=1772095878; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/vBNMmsA4lLTR8DiXeFB8gRcL31HJdjg/jyt3hbrVhA=;
        b=HFe0dPP0wLAgzGOwVdnaNebp5DXbU6ukx+Ko9TQE8TwtthUciSMrxnjMiLG5pviV3V
         3Iz/ZlW6uGRhex9ntE5P/gpaPDYjaTP+nYolcUjgkkAEUquo/o+QanVeP/xoMBO09dI+
         uxPPWGaQMApN8Mf+nI19ZDJXwccKPES2csWk+KNmx5O/oHi6ijEoIa/EU0DZlk6dRAl3
         Srd1KntjX+u8HIjeWXH6Z76g0yOLy62FPTk5mJZ0az0VOfqt71Mh74GUdRn/Es4yny2w
         dGkX8haGQNjoAoD9uYxxOJjm7if0dcSA+HwFu2BuRxxq+6TaAIajCKbsSC5NRxSqS9no
         huRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771491078; x=1772095878;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/vBNMmsA4lLTR8DiXeFB8gRcL31HJdjg/jyt3hbrVhA=;
        b=rK+k6Xpi8T4YScM6Ku7NdzRkI3zqHTdG5eByeEMlHCeXrW4tZqmm0CVYA1sUspzsR/
         FLOzeI562jqyamFZHPPPdVMTAHwufYuJG2zhEVEtAwyXQYIPURaGQOcavgBwQkqtQesI
         k4yTsgbiH+nPWFS0hRGylPH50LGFaGkw/za7FpI6CAbgCI3OspUxLMdm+KchhFusghXn
         yUyR0r3Bx5E6HPnaOpFlqB3OdK2iqJrech3tLn7pEkhqGGtgSZLhO03mgOSKMcpQFizD
         kIHRWUvivhwXMlS3zXJdZZFqSzg+SIeOA/xOZn4Gw7rqdMPaWltq11nU4YR0zh8Q3BpH
         8rbQ==
X-Gm-Message-State: AOJu0YwmIXhxlgEP7qajQWY3DWuRIkWm8eqcY6a9IrloLsjJXbA+0X8D
	tVk7ME6F/P5+c9DEC9Bzo+nsARJvBUm+ZfcC3VuzsG1QHUaMSXhd7ifuycAOrtdbMHlHNsvZjkv
	Ks78ZmHJDOArhOhA3k+SkjpOUbEDtkcKBjJxL9RzQZYCnuxiSVgS1/RQ81g==
X-Gm-Gg: AZuq6aIsWc+Puj6PNmyAziVwLYkrtjpWzgsPSCvbjs1RXScxv+AkY6SIqmCT1PbwiHf
	wj5T7wpQzoq7gYoJOouP30O9QzCaFR32m62kEOoK5k3IgsjliJmUexwoMWRl6hUDznr+tEbusJW
	AaqzqqD7bG1t4/8wz28KaSmEkyJBKU5sBA26x6sVZS7n86wJi8mUhRHaQCQu1CnHjRYxL7aGqy2
	QHb+U4UzVVrwcLvDMtWXA0hM33CV7evN2aS3vm6tvnYNxqTO5+9h8QAsv0pNbhVfCJOkVIHsEb5
	vogPIxVppYGqPGnyYyffdLbuTVCB3p1eNNzFqg==
X-Received: by 2002:a05:6214:260e:b0:897:235:f058 with SMTP id
 6a1803df08f44-89957fd43b8mr58883776d6.17.1771491078434; Thu, 19 Feb 2026
 00:51:18 -0800 (PST)
MIME-Version: 1.0
References: <CAEZoMYMR5b=ZT8MQgkVQ4Z0OsZNzjvrLMhbf0RmoV66O7LYHKg@mail.gmail.com>
In-Reply-To: <CAEZoMYMR5b=ZT8MQgkVQ4Z0OsZNzjvrLMhbf0RmoV66O7LYHKg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 09:51:06 +0100
X-Gm-Features: AaiRm505BOREqdAl4OBUZbv5WnElhEJVI5h0NiDGdQn7RQRRlZY4KcHVFPQY1f8
Message-ID: <CAFOi1A4FvGkAxkgb9mtnT=htJnN=hzQvA7sp2HeCzcHLTmbKPQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ALNXCK7W63JJ2CRRW6LNEFTZ24YP7FT3
X-Message-ID-Hash: ALNXCK7W63JJ2CRRW6LNEFTZ24YP7FT3
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410/ZBX Session-to-Session Phase Coherence with multi_usrp API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALNXCK7W63JJ2CRRW6LNEFTZ24YP7FT3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5253167056774410046=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns,ettus.com:email,emwd.com:dkim]
X-Rspamd-Queue-Id: 6DCE815D1E0
X-Rspamd-Action: no action

--===============5253167056774410046==
Content-Type: multipart/alternative; boundary="00000000000073fce8064b2968c2"

--00000000000073fce8064b2968c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Chris,

I'm sorry to be the bearer of bad news, but the X410 does not have this
feature (and yes, the X440 does).

--M

On Thu, Feb 19, 2026 at 3:31=E2=80=AFAM Chris Wozny <woznych@gmail.com> wro=
te:

> We're working on a two-channel phase interferometry application using an
> X410 with two ZBX daughterboards and am having difficulty achieving
> consistent inter-channel phase measurements across application restarts.
> I'm hoping someone on the list has experience with this and can point me =
in
> the right direction. I've found quite a few emails on the mailing list fr=
om
> about a year ago on the topic, but they didn't seem to have a resolution
> (as far as I could tell).
>
> Here's my current configuration:
>
> NI USRP X410 (Rev 7)
> Two ZBX daughterboards
> MPM Version: 5.3
> FPGA Version: 8.3 (UC_200)
> FPGA git hash: c37b318.clean
>
> I'm using UHD 4.7.0.0 with the Multi_USRP API in C++. The ports I'm
> connected to are the RX1 SMA ports on the same daughterboard (A:0 and A:1=
).
> The X410 is also connected to an external 10 MHz + 1 PPS reference from a=
n
> Octoclock. I'm feeding these receive ports with a pulsed waveform from a
> signal generator connected via a splitter.
>
> Problem:
>
> Within a single execution of the application, the phase difference betwee=
n
> the two channels is extremely stable and consistent pulse-to-pulse.
> However, when the application is restarted the phase offset changes to an
> essentially arbitrary value. Across five consecutive runs we observed del=
ta
> phase values of approximately -25, -154, -25, 74, and -119 degrees at 305=
0
> MHz.
>
> The same code (timed command tune requests) and test equipment setup was
> working with an X310. The phase differences were consistent over a period
> of a few days of application restarts and power cycles. It seems like the=
re
> are some fundamental architectural differences between the X310 with two
> UBX-160s and the X410 with two ZBXs that prevent the same task from being
> accomplished.
>
> Here are the steps we've taken thus far to try and get the same initial
> phase on both channels from one run of the application to another:
>
> 1. Switched clock and time source to "external" to lock to the Octoclock'=
s
> 10 MHz and 1 PPS reference and polled the ref_locked sensor before
> proceeding.
> 2. Used set_time_next_pps() rather than set_time_now() to latch device
> time on a PPS edge, followed by a sleep longer than one second to guarant=
ee
> the latch has occurred.
> 3. Configured subdev spec (A:0 A:1), per-channel parameters (sample rate,
> bandwidth, gain, antenna), and get_rx_stream() all after the ref_locked
> wait and PPS latch.
> 4. Issued simultaneous tune commands to both channels using
> set_command_time() aligned to the next PPS edge
> (get_time_now().get_full_secs() + 1.0), followed by another sleep greater
> than 1 second to allow LO lock.
> 5. Attempted explicit LO sharing via set_rx_lo_source("internal",
> "LO1"/"LO2", chan) on both channels, however set_rx_lo_export_enabled() w=
as
> not supported on this radio so we abandoned that.
>
> The within-run phase stability is excellent (sub-degree variation
> pulse-to-pulse), which suggests the hardware is working correctly. The
> problem appears to be that something is initializing to an arbitrary phas=
e
> state on each UHD session that is not being reset by any of the above ste=
ps.
>
> The ultimate question we have: with an X410 and two ZBX daughterboards is
> multi-channel phase coherence across multiple UHD sessions possible? If s=
o,
> are there any steps we might be missing or out of order from what we trie=
d
> above? Feeding in a known signal every time we start a session is not an
> option.
>
> There was some chatter in the mailing list about newer versions of UHD
> resolving this, but other replies from March 2025 left it ambiguous (to m=
e
> at least) as to whether this was fixed for X410s or X440s or fixed at all=
.
>
> Any guidance you all might provide is greatly appreciated!
>
> Best,
> Chris
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000073fce8064b2968c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Chris,</div><div><br></div><div>I&#39;m sorry to b=
e the=C2=A0bearer of bad news, but the X410 does not have this feature (and=
 yes, the X440 does).</div><div><br></div><div>--M</div></div><br><div clas=
s=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Feb 19, 2026 at 3:31=E2=80=AFAM Chris Wozny &lt;<a href=3D"mailt=
o:woznych@gmail.com">woznych@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">We&#39;re working on=
 a two-channel phase interferometry application using an X410 with two ZBX =
daughterboards and am having difficulty achieving consistent inter-channel =
phase measurements across application restarts. I&#39;m hoping someone on t=
he list has experience with this and can point me in the right direction. I=
&#39;ve found quite a few emails on the mailing list from about a year ago =
on the topic, but they didn&#39;t seem to have a resolution (as far as I co=
uld tell).<div><br></div><div>Here&#39;s my current configuration:<br><br><=
/div><div>NI USRP X410 (Rev 7)</div><div>Two ZBX daughterboards<br></div><d=
iv>MPM Version: 5.3<br>FPGA Version: 8.3 (UC_200)<br>FPGA git hash: c37b318=
.clean</div><div><br></div><div>I&#39;m using UHD 4.7.0.0 with the Multi_US=
RP API in C++. The ports I&#39;m connected to are the RX1 SMA ports on the =
same daughterboard (A:0 and A:1). The X410 is also connected to an external=
 10 MHz + 1 PPS reference from an Octoclock. I&#39;m feeding these receive =
ports with a pulsed waveform from a signal generator connected via a splitt=
er.</div><div><br>Problem:</div><div><br>Within a single execution of the a=
pplication, the phase difference between the two channels is extremely stab=
le and consistent pulse-to-pulse. However, when the application is restarte=
d the phase offset changes to an essentially arbitrary value. Across five c=
onsecutive runs we observed delta phase values of approximately -25, -154, =
-25, 74, and -119 degrees at 3050 MHz.</div><div><br></div><div>The same co=
de (timed command tune requests) and test equipment setup was working with =
an X310. The phase differences were consistent over a period of a few days =
of application restarts and power cycles. It seems like there are some fund=
amental architectural differences between the X310 with two UBX-160s and th=
e X410 with two ZBXs that prevent the same task from being accomplished.</d=
iv><div><br></div><div>Here are the steps we&#39;ve taken thus far to try a=
nd get the same initial phase on both channels from one run of the applicat=
ion to another:<br><br>1. Switched clock and time source to &quot;external&=
quot; to lock to the Octoclock&#39;s 10 MHz and 1 PPS reference and polled =
the ref_locked sensor before proceeding.<br>2. Used set_time_next_pps() rat=
her than set_time_now() to latch device time on a PPS edge, followed by a s=
leep longer than one second to guarantee the latch has occurred.<br>3. Conf=
igured subdev spec (A:0 A:1), per-channel parameters (sample rate, bandwidt=
h, gain, antenna), and get_rx_stream() all after the ref_locked wait and PP=
S latch.<br>4. Issued simultaneous tune commands to both channels using set=
_command_time() aligned to the next PPS edge (get_time_now().get_full_secs(=
) + 1.0), followed by another sleep greater than 1 second to allow LO lock.=
<br>5. Attempted explicit LO sharing via set_rx_lo_source(&quot;internal&qu=
ot;, &quot;LO1&quot;/&quot;LO2&quot;, chan) on both channels, however set_r=
x_lo_export_enabled() was not supported on this radio so we abandoned that.=
<br><br>The within-run phase stability is excellent (sub-degree variation p=
ulse-to-pulse), which suggests the hardware is working correctly. The probl=
em appears to be that something is initializing to an arbitrary phase state=
 on each UHD session that is not being reset by any of the above steps.<br>=
<br>The ultimate question we have: with an X410 and two ZBX daughterboards =
is multi-channel phase coherence across multiple UHD sessions possible? If =
so, are there any steps we might be missing or out of order from what we tr=
ied above? Feeding in a known signal every time we start a session is not a=
n option.</div><div><br></div><div>There was some chatter in the mailing li=
st about newer versions of UHD resolving this, but other replies from March=
 2025 left it ambiguous (to me at least) as to whether this was fixed for X=
410s or X440s or fixed at all.</div><div><br></div><div>Any guidance you al=
l might provide is greatly appreciated!</div><div><br></div><div>Best,</div=
><div>Chris</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000073fce8064b2968c2--

--===============5253167056774410046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5253167056774410046==--
