Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJ2kBNYJr2nXMQIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 09 Mar 2026 18:56:38 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD3023E0CC
	for <lists+usrp-users@lfdr.de>; Mon, 09 Mar 2026 18:56:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B27CF385368
	for <lists+usrp-users@lfdr.de>; Mon,  9 Mar 2026 13:56:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1773078995; bh=7CldU+pb4+AX8wF2BzTnKTZQ8Ud3mzE58zBFBACVjvA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PFBYzZ+Ufsm4E4m6Xr5ZWOf4MLKSpTCVKqE5cb+CoIR4EH1DRf4LjnaCu7uxYIk/S
	 HczxbjUVeLoC7FLG9uY+xZ11mTyff/0eR0tEUEdaSFW/rDln9s1yIGoBsTm4Un43Xj
	 KN5SgPe4qEmfGVPSgGeD/m93M3XivGSGju4yzezpgSE3Bpwe3lPj00u9MKYroLdhi+
	 ZRTG/0UN8zjLPsuV1KSTYXFzoqyUb0YBplT+4iAGDsEjRET2JSqXKYoD9WHmem+7D/
	 VvItnMdCxgsTmMHF48qUDoiRX+YeVrgUHf2HdhQIn5vgifwNL/lHOHqpg5Fj2rS5Hp
	 V1ASbB3FQH3bQ==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id BED1A380F4F
	for <usrp-users@lists.ettus.com>; Mon,  9 Mar 2026 13:56:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DRFQdIIo";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6611e4aefdcso8977600a12.3
        for <usrp-users@lists.ettus.com>; Mon, 09 Mar 2026 10:56:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773078961; cv=none;
        d=google.com; s=arc-20240605;
        b=LHEm6kTYXpFpa5qCiEW2541Erp6uUnM5s2eHTIWn+wvD/E1qIY47FxheND61hhrJUl
         Rva6pTQ8bLMWyetU9UyZFmuBL4EdAMjw3dhMKOkzdFBu3exziaErATUUoOQCzmh99BwI
         ahQvMCnNW1BRn4Z/JD4q2djuimdutfepS+9mxTQmy9mgRG9AGj9Y3itwc+EWM7t2Y6rm
         M4B3byEtBf65Fs1boVnVgZB83eTIkaq1lPloowVoRQ0+9C4BOp0xc7wKDZRIRPUkYQIm
         TTZFMYjViykEuQOlxYahKOxjazzArpWR39AOExsX5eUH3Yhq1L5DJ3v/JLymGoCFWccq
         Ut6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GxFSw061xPXSGxRvIgpy4vRCLDiaIFrEnY95d9yaOV0=;
        fh=O0etlQvQsp6+d7zCSX41ruDQeZhTk1t5HdeJlVDFIY0=;
        b=R331Iytu15MtTZqLwam52qfy5aRI1wjPvWz+Y6Q0MwkYlDZqF32ArnVPJEKpA2jm6l
         PLUgIneaOb6gf5+EY5vQb5B9z2eTnYdvF8RRw8afxf0c1hB4CtHXMeI3HlVHbAI5VzMg
         ZmFPJ/zZbYYvUmUIaMUVR2E11MZqJN14+YyMaurIXDaqH/ousCOXIW0LZwUDIbLL7OQB
         x5LGPsHnLy7E3M5X3bA+FHkZXg2Uz5ePkOUNlTUeICNb0hCqKGGpc6x/nsModN3bAOnf
         M3WYJGGfgtOBm80gQibqTN/LQwu/We9xCOD2F3ujSWnQPxLIi4qI3Ah6UwpG1QU+IZls
         sEBQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773078961; x=1773683761; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GxFSw061xPXSGxRvIgpy4vRCLDiaIFrEnY95d9yaOV0=;
        b=DRFQdIIo5m3gQSjD5/BORmMlvRyCr5zGpbv598tRJTCBIjdxNP6jlZuuRHvQjS9j6b
         1G+2Ku5g+61F58Z6a11KPfQcLsIONJs5dn5OnhO5ZXhCMOvIN6ugzr4z1YbZ6rzanJww
         +eWftDUZJyflIuZDbaGWrC0rA37HzUasQFPLDkIDNUIMM90KHUmsAlPiLrvyNExv7zXP
         r9maV8coIgXPEPTSyxSQAK7dLyFDl0RZm64xJT9uSZDEG46kW/hsUinns0rADUzXCapL
         NUe+ts/eZhW2Nuu4Yl7Hj4ZD4mvwA3oLzGJ4XG+Jmnt1FWawTzntAEa+nwKlsnXWwDCl
         lkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773078961; x=1773683761;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GxFSw061xPXSGxRvIgpy4vRCLDiaIFrEnY95d9yaOV0=;
        b=AdYpJEpgZDODP0e3FxYzgrn9bHYYHaJJOYbOMMm71fXyuyOBPmts/cIjaNq+aPvJL6
         RkoqY59oFuH9qbmoihSM5mn4JGXSU7eXMUt9P+gKf2RENF2X3eq+ezzLdCIpHHY6Wn5Q
         pjlNZucEMAmqdrKJ26dcsmaroqgA/9J2EbXqH898ydOqXKDM15PhWHQ2h1xSdyvjhcMQ
         k0PASZH7VPXOpLLQAkuvET3axSooVaEey/HNLeYFZECl9M5M1imBisFu5r8Dq8Ww0O4x
         XsXRUP0GdwtuKZus4ffYghc+7G1xnaHQHfLClt6CE4wPuLaJlaF1kd+fWqCXPtduQ34o
         h3iA==
X-Forwarded-Encrypted: i=1; AJvYcCXGzgMc0QiDLJK1or1NalkiC1RWX3Zeblrixsit5bDhm4SbZtDpQ9yUbVa64ZdaNQP8aIrNKTOdLyfi@lists.ettus.com
X-Gm-Message-State: AOJu0YyKPLzHvXweWn84jfBj17SHtxxDRrOqmt+vqPwtpQHmAtCymd2y
	ebiUzyDGlFAE5uatBvj4PMYGyd0UK6LQU2mnX88nrRtuE+6qkPWApfkNf8Xbg5EgXtZLEX3cz/w
	BJCrlpAcEdc4VQYYLyABRp+o31q+An23G1NTv
X-Gm-Gg: ATEYQzwNbk2N1LRfngeDO8sOqhrUshsgHLA/4pytYf5wYvt055a7EvKJchQ501+HJbo
	SMKgawNQ7pOkuEjy6GtPd3QvFvoz0KH37Bksdlu0d700c+v/97iaY4Y7FGtGSWi8al5Mj+2zBmr
	c9XWaDAGvOazTUOUDNBAFW5hr4d0XtKpWTohYjNZ3IIHfLXAgiBEYaXEP5rV9pMO4Xj/AMNuhC1
	gjf55Sjpgq73kAFulr3qI1wYlCmE+1P+QH3Xn5Cw6IAplod6k0zsswefMrBPMgGA1pSl+xMYmSb
	Z+3e3g==
X-Received: by 2002:a05:6402:34cb:b0:658:17fb:4890 with SMTP id
 4fb4d7f45d1cf-6619d4c4118mr6637802a12.9.1773078960317; Mon, 09 Mar 2026
 10:56:00 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB912604328C9A23C7AD07A357EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB9126597BD93B0B0244260DF2EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAGNhwTN=Sd5uxnesHrBf6tEzVgpwh5NMiR3chUSmOspuj1B9rw@mail.gmail.com>
In-Reply-To: <CAGNhwTN=Sd5uxnesHrBf6tEzVgpwh5NMiR3chUSmOspuj1B9rw@mail.gmail.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Mon, 9 Mar 2026 13:55:48 -0400
X-Gm-Features: AaiRm530g20j10h9bevRAcN5vZyc9hFhh7TDFsgv6KyPDB0GxVTTpl5Ma3Ghj-Q
Message-ID: <CAOEzSFSoay6FQqSPq8SzZvnDdwXNjjz14EGCH1EnJDzuDb_3mg@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Message-ID-Hash: 4OMUULQZ6QBH6NM77IGFMU5R36LQS6MO
X-Message-ID-Hash: 4OMUULQZ6QBH6NM77IGFMU5R36LQS6MO
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Eugene Grayver <eugene.grayver@aero.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 X4_200 image TX underflows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4OMUULQZ6QBH6NM77IGFMU5R36LQS6MO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2088100602109598453=="
X-Rspamd-Queue-Id: 3CD3023E0CC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[c1337rogers@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,aero.org:email,emwd.com:dkim]
X-Rspamd-Action: no action

--===============2088100602109598453==
Content-Type: multipart/alternative; boundary="00000000000096a92e064c9b1dde"

--00000000000096a92e064c9b1dde
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This helped me with the periodic 1/sec underflow issue, granted IDK if
you're running with DPDK

Underruns Every Second with DPDK + Ubuntu

With Linux kernels 5.10 and beyond, we have observed periodic underruns on
systems that otherwise have no issues. These Linux kernel versions are the
default for Ubuntu 20.04.3 LTS and later. The underrun issue is due to the
RT_RUNTIME_SHARE feature being disabled by default in these versions of the
Linux kernel (shown as NO_RT_RUNTIME_SHARE). The following procedure can be
used to enable this feature. This process was tested on Linux kernel
version 5.13; the procedure may be slightly different on other kernel
versions. To determine the Linux kernel version of your system, in a
terminal issue the command uname -r.

$ sudo -s
$ cd /sys/kernel/debug/sched
$ cat features | tr ' ' '\n' | grep RUNTIME_SHARE
NO_RT_RUNTIME_SHARE
$ echo RT_RUNTIME_SHARE > features
$ cat features | tr ' ' '\n' | grep RUNTIME_SHARE
RT_RUNTIME_SHARE



On Sat, Mar 7, 2026 at 12:18=E2=80=AFPM Michael Dickens <michael.dickens@et=
tus.com>
wrote:

> Hi Eugene - Which NIC(s) & NVM & OS driver version (default from system?
> from binary or source?)? If there are updates on any of these they might =
be
> worth trying.
>
> Can you try the UHD-4.9 branch and see if that helps? It contains some
> data transport / networking fixes that are not in a 4.9 release; that wil=
l
> be part of the 4.10 release.
>
> These are all useful to try to help debug the issue. Please let us know i=
f
> you have any success with these & if not we'll dig further.
> ---
> Michael L Dickens, PhD
> Emerson/NI/Ettus SDR RF Principal Application Engineer
> Teams: +1-512-683-5305
> Cell: +1-512-585-1391
> michael.l.dickens@emerson.com <michael.dickens@ni.com>
> michael.dickens@ettus.com
>
>
> On Fri, Mar 6, 2026 at 5:52=E2=80=AFPM Eugene Grayver <eugene.grayver@aer=
o.org>
> wrote:
>
>> I am also seeing this warning:
>> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from
>> 0/Radio#0:INPUT_EDGE:0, no neighbour found!
>> ------------------------------
>> *From:* Eugene Grayver <eugene.grayver@aero.org>
>> *Sent:* Friday, March 6, 2026 1:17 PM
>> *To:* usrp-users <usrp-users@lists.ettus.com>
>> *Subject:* X440 X4_200 image TX underflows
>>
>>
>>    - I am trying to send out 16 channels of 40 Msps data from two X440s.
>>    - Getting many underflows (~1/s or more)
>>    - As far as I can tell the X440 are synchronized correctly
>>    - Set time to 0 on next PPS (external)
>>       - Start TX at a future time (5s) using a time_spec in TX metadata
>>       - Each TX streamer is in a separate thread
>>    - Each thread pinned to a different core
>>       - CPU utilization is about 20%
>>       - I am *NOT *reading anything from disk =E2=80=94 just sending the=
 same
>>    buffer over and over
>>    - wmem_max size is 25 MB
>>    - MTU is 9000
>>    - UHD 4.9.0
>>
>>
>> What could be wrong?
>>
>>
>> Eugene Grayver, Ph.D.
>> Principal Engineer
>> 310-336-1274
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000096a92e064c9b1dde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This helped me with the periodic 1/sec underflow issue, gr=
anted IDK if you&#39;re running with DPDK<br><br>
<h3><span class=3D"gmail-mw-headline" id=3D"gmail-Underruns_Every_Second_wi=
th_DPDK_.2B_Ubuntu">Underruns Every Second with DPDK + Ubuntu</span></h3>
<p>With Linux kernels 5.10 and beyond, we have observed periodic=20
underruns on systems that otherwise have no issues. These Linux kernel=20
versions are the default for Ubuntu 20.04.3 LTS and later. The underrun=20
issue is due to the <code>RT_RUNTIME_SHARE</code> feature being disabled by=
 default in these versions of the Linux kernel (shown as <code>NO_RT_RUNTIM=
E_SHARE</code>).
 The following procedure can be used to enable this feature. This=20
process was tested on Linux kernel version 5.13; the procedure may be=20
slightly different on other kernel versions. To determine the Linux=20
kernel version of your system, in a terminal issue the command <code>uname =
-r</code>.
</p>
<pre>$ sudo -s
$ cd /sys/kernel/debug/sched
$ cat features | tr &#39; &#39; &#39;\n&#39; | grep RUNTIME_SHARE
NO_RT_RUNTIME_SHARE
$ echo RT_RUNTIME_SHARE &gt; features
$ cat features | tr &#39; &#39; &#39;\n&#39; | grep RUNTIME_SHARE
RT_RUNTIME_SHARE
</pre>

<br></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"=
ltr" class=3D"gmail_attr">On Sat, Mar 7, 2026 at 12:18=E2=80=AFPM Michael D=
ickens &lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>Hi Eugene - Which NIC(s) &amp; NVM &amp; OS dri=
ver version (default from system? from binary or source?)? If there are upd=
ates on any of these they might be worth trying.</div><div><br></div><div>C=
an you try the UHD-4.9 branch and see if that helps? It contains some data =
transport / networking fixes that are not in a 4.9 release; that will be pa=
rt of the 4.10 release.</div><div><br></div><div>These are all useful to tr=
y to help debug the issue. Please let us know if you have any success with =
these &amp; if not we&#39;ll dig further.</div><div><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"border=
:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;vertic=
al-align:baseline;color:rgb(0,0,0)"><div style=3D"border:0px;font-stretch:i=
nherit;line-height:inherit;margin:0px;padding:0px;vertical-align:baseline">=
<div style=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0p=
x;padding:0px;vertical-align:baseline"><font face=3D"arial, sans-serif">---=
</font></div><div style=3D"border:0px;font-stretch:inherit;line-height:inhe=
rit;margin:0px;padding:0px;vertical-align:baseline"><font face=3D"arial, sa=
ns-serif">Michael L Dickens, PhD</font></div><div style=3D"border:0px;font-=
stretch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-align:b=
aseline"><font face=3D"arial, sans-serif">Emerson/NI/Ettus SDR RF=C2=A0</fo=
nt><span style=3D"font-family:arial,sans-serif">Principal</span><font face=
=3D"arial, sans-serif">=C2=A0Application Engineer</font><br></div><div styl=
e=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding=
:0px;vertical-align:baseline"><span style=3D"font-family:arial,sans-serif">=
Teams: +1-512-683-5305</span></div><div style=3D"border:0px;font-stretch:in=
herit;line-height:inherit;margin:0px;padding:0px;vertical-align:baseline"><=
font face=3D"arial, sans-serif">Cell: +1-512-585-1391</font></div><div styl=
e=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding=
:0px;vertical-align:baseline"><a href=3D"mailto:michael.dickens@ni.com" sty=
le=3D"color:rgb(17,85,204);font-family:arial,sans-serif" target=3D"_blank">=
michael.l.dickens@emerson.com</a></div><div style=3D"border:0px;font-stretc=
h:inherit;line-height:inherit;margin:0px;padding:0px;vertical-align:baselin=
e"><font face=3D"arial, sans-serif"><a href=3D"mailto:michael.dickens@ettus=
.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">michael.dickens@ettu=
s.com</a></font></div></div></div></div></div></div></div><br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 6=
, 2026 at 5:52=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene.grayv=
er@aero.org" target=3D"_blank">eugene.grayver@aero.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am also seeing this warning:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from 0/Radi=
o#0:INPUT_EDGE:0, no neighbour found!</div>
<div id=3D"m_-6817657387280171119m_2014709715583823344m_-491745061722306225=
5appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-6817657387280171119m_2014709715583823344m_-491745061722306225=
5divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" style=3D"fon=
t-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver &lt;<a href=3D"m=
ailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayver@aero.org</a=
>&gt;<br>
<b>Sent:</b> Friday, March 6, 2026 1:17 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> X440 X4_200 image TX underflows</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">I am trying to send out 16 channels of 40 Msps d=
ata from two X440s.</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Getting many underflows (~1/s or more)</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">As far as I can tell the X440 are synchronized c=
orrectly</div>
</li><ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Set time to 0 on next PPS (external)</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Start TX at a future time (5s) using a time_spec=
 in TX metadata</div>
</li></ul>
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Each TX streamer is in a separate thread</div>
</li><ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Each thread pinned to a different core</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">CPU utilization is about 20%</div>
</li></ul>
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">I am <b>NOT </b>reading anything from disk =E2=
=80=94 just sending the same buffer over and over</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">wmem_max size is 25 MB</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">MTU is 9000</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">UHD 4.9.0</div>
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
What could be wrong?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-6817657387280171119m_2014709715583823344m_-491745061722306225=
5x_Signature">
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

--00000000000096a92e064c9b1dde--

--===============2088100602109598453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2088100602109598453==--
