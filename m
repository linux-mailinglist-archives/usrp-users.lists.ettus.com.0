Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPt/Grdv+mngOwMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 00:31:19 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD584D45CC
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 00:31:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4788438AD14
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2026 17:52:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778017943; bh=RnWMY8wIFL9Uohyt7qNk6DdVBAWsExQEFcyR8FEaiYs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PLukF6Ew777Fu05nVBQF09aTBsTIQjuBeO2n/qmExaFs1XnvvNKihZCWt03JMAUza
	 RZiqcD0LXAj0h+gvWTHEwpw0LLku0pbIT2BlH4n30bt5drUjBShpzETLNCNj0bEKu5
	 dBMWiHsRQmrSePDWRzRsj2KE95QJyad3VqNaxOrZ2ux1vaUvBZH6SolbgfcUlA5z0F
	 KF34d6HTuEAPQw7iZm+jv0FYgC8fjt57j/7nXtm6AA9NNyhR65bO03dnx3aodwFRmW
	 /l+xGqGF47rNj49utXtZcJcAisfjYt8BVZe23lIv8xYfNuU1taIqblHy1lDnxLw5mx
	 WyIFd22iBY1vA==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F12B38AD0A
	for <usrp-users@lists.ettus.com>; Tue,  5 May 2026 17:51:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KN0ogIA9";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-67c4aaf76ecso4706058a12.3
        for <usrp-users@lists.ettus.com>; Tue, 05 May 2026 14:51:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778017870; cv=none;
        d=google.com; s=arc-20240605;
        b=KQPipc+mEgb4Fs17N8ACIVPBUD5yvc4DRNj/YsO5kLAwBDgNvjA4wddBdkejGjoDJ4
         KOvVi6dmpcVnXJf3+7A4KO7KNVRy6e2/wkE8Eu2bzOjRSk68buTH5y13dDvdzQEmM7wK
         bBWWQQ5PWHzJOFDVPjDqnQt2PmGcDPKiDhPAw5eRvrEnAUanBQKFuMQ9f0tcnccaR71c
         hfe3OtczQnNyoKvKdfRqgG7zuryVr0SzL1RT9X/bhgAgx0l4xuLN2vVKlyd5PIuLYh2G
         Ijmsvyyv8joVK6Uv/68MSU6ZuIJ+Rc5OTXhh7iPtBDFUWftzAOpcsZnM+YUo5mKSn+n7
         dGSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AE/XLjFPf0sqQPf79Lbf5d0sZGy/iLuSuxbYqMPgycc=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=MCIQa7cOewBVQUm+axnOHkuEQBoeybeLyH6Pn1bMM+RlJv5tQRnxAazWSXBGq71L8e
         mhKayEhgK9J+G0KLrq4u9RYGqgxHNG8XTKq+63x7L+awQZ/caUa9qiG8BLU+GdXUOurp
         sbh4acJRuHN7vByArwRe4SRPE+pOcSa4/MIQr8CF7/+yQBE2oXbXijQOMtLXUshMCeBv
         IL8nWTZYb39CL17MXuO3Wz3BBzEaLvqrpkxkiL8IrKiw6iN+JGFBlZYkA3dJxZSheLLH
         Dg0QjeFo54jqTa58LVxUzppVrHfP5L0dhemIi1qzR+sZopEPN3D3gXcY/CP099yXDD/i
         oqZA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778017870; x=1778622670; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AE/XLjFPf0sqQPf79Lbf5d0sZGy/iLuSuxbYqMPgycc=;
        b=KN0ogIA9Wf+uG7aXtdI3oLT/cSvViiAzVCR3Y+1qJMCcFeQZerHzaubYk+2Ckm4DWV
         VriYMLle5f9q2tXa5joNRlaX38aByf43jRkDyPewdJko2TWZ5U5XxF4rCU0Drm+T7oUS
         wicLPQGyZNQEf2c9Uks2k0/vP5lhJKYCNGknXl6FZnG3IbrM0VmkjVSW3oGyK9zwQ2kc
         Ztb7tHWzFfTP+yxMn8acW3CqFz27eRqrNSV3I0YOhdYMB0pXc5HoJgxMBhXBUR6hA3VM
         LMcunUMQL+qbSkqz/ldGrTpCfkTQ0XT1cb5idzZWR/p0Kd96Zgedb8Ip04anJefF4n2+
         I0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778017870; x=1778622670;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AE/XLjFPf0sqQPf79Lbf5d0sZGy/iLuSuxbYqMPgycc=;
        b=F/q2u0em8r1i+ETB9yfRDYoniuUvfsJUfE2WCzvQjROgtqGe0C8ntZ1AmW7wC3nPuV
         KnmLaGBX+lnwEQSAuxB6Rnhux3if+lNMey1I9ka1ax/u53UhSv9elZm/NpNgYuNs/uLe
         /HBUG2YYG4A37BGM/VAKNTq1IJL45UY1UenuUni6JDkoxyQmkL43tef8NWUVL8xNg5pE
         mr8QocnULbSlbV9ifvRMGpgNnSYoRD8eSo3g6m0IndRa6W3CLcbmMVKsqhBfyVWVhaSf
         8UPmP0ppyn6erVjQkFJWmbAbbPRpwtxAHRiq/STpOuJuUFwao8iL0OqbtP7upcicW+Sg
         5aTA==
X-Gm-Message-State: AOJu0YwGX+4gaN6xTkBn4bNMLf+qXZvzBe3Eo+FhNEJ6L59cEreV7SmX
	ZsBYiktd8hzF3BGRHJ6kbZPo1rvJtbZOy4jH9imAcO128IVLIi5xl0kE8qmaVvQS4aQPUiF3cvF
	JjZQgWCGysraFD8zvP28+h1spAs78uKpMDA==
X-Gm-Gg: AeBDietj2L1gO2uWNcUHVrmVVxAUgtM7vCUqW7CJl0zXKWD/WgF34hMwba8/jiAzhEO
	sn4Q+LJ5mHBqA1EQXPla5pCX9lSMa7vEO5FieVW/+LKlavznVNeBg8X1WhBk8DJlXSCV4di/BPK
	zey99AW8gpykL/rdmX0LIhEWWvMF6qNXpQS+b0hmPuNcT1NDsX7yVFi8y0NE5fmGx3JXiWMSb0n
	nos4n4ajfaajGa1XRUlMFrUkI48cz2Juk8QMAobwtUXr8oWc3KPzjWmXOfKuH9oUnykq/hVwUhQ
	rhPJdjrHIR+zmASRgg==
X-Received: by 2002:a17:907:c13:b0:ba9:5e67:e755 with SMTP id
 a640c23a62f3a-bc56e8ff228mr13102366b.43.1778017869866; Tue, 05 May 2026
 14:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB912642069B69C9DBF1E66B70EC3E2@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB912642069B69C9DBF1E66B70EC3E2@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 5 May 2026 17:50:58 -0400
X-Gm-Features: AVHnY4KW7q7AXHo-WGSfeEJIRfzsKEZQEvzcZHMxOqCyRGyLN-nf1WIT2XeF0K4
Message-ID: <CAEXYVK7KqQNPBeBpycxGaCVV4osFCbfbSKXFhCpD1S5GGpD84Q@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: 6GCZUDUKJPA4VDM5ZNV35VIKRRZ43HBS
X-Message-ID-Hash: 6GCZUDUKJPA4VDM5ZNV35VIKRRZ43HBS
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extend X440 to 2 GHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6GCZUDUKJPA4VDM5ZNV35VIKRRZ43HBS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8562337522305907213=="
X-Rspamd-Queue-Id: EAD584D45CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bpadalino@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns,aero.org:email]

--===============8562337522305907213==
Content-Type: multipart/alternative; boundary="00000000000089ac330651190b1b"

--00000000000089ac330651190b1b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 5, 2026 at 5:42=E2=80=AFPM Eugene Grayver <eugene.grayver@aero.=
org>
wrote:

> Hi,
>
> I have an application that needs 2 GHz of bandwidth.  I only need one
> channel.  How hard would it be to change the max sample rate?  Is the FPG=
A
> barely meeting timing?
>

The RFDC is set up to output 8 samples/clock (the maximum that the core
supports). That would mean for 2 GHz of total samples coming out from the
core, you'll have to run with a 250 MHz clock - very doable in the RFSoC.
Note the DDR interface clock runs at 300 MHz, and there is a bus clock that
is 266.67 MHz somewhere in there, too. A current design I am working with
utilizes the DDR clock extensively and runs most of the DSP in that domain.

The bigger issue might be that the RF front end is set up to do real
sampling, and the maximum rate is 4.096 Msps for each ADC. You can set it
up to be a shifted/decimated 2 GHz of BW, but anything above that 2 GHz
Nyquist externally needs to be filtered extremely well to avoid any analog
aliases that come in.


>
> Also, do we need a license for the 100 GbE MAC core?  I saw a warning to
> that effect when building a custom image but as far as I know the 100 GbE
> MAC is free.
>

The 100Gbe Hard IP MAC is free but you may still need to request a license
from AMD.

Good luck.

Brian

--00000000000089ac330651190b1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 5, 2026 at 5:42=E2=80=AFPM Eu=
gene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@=
aero.org</a>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_containe=
r"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-4965=
69664684140887">




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
I have an application that needs 2 GHz of bandwidth.=C2=A0 I only need one =
channel.=C2=A0 How hard would it be to change the max sample rate?=C2=A0 Is=
 the FPGA barely meeting timing?</div></div></div></blockquote><div><br></d=
iv><div>The RFDC is set up to output 8 samples/clock (the maximum that the =
core supports). That would mean for 2 GHz of total samples coming out from =
the core, you&#39;ll have to run with a 250 MHz clock - very doable in the =
RFSoC. Note the DDR interface clock runs at 300 MHz, and there is a bus clo=
ck that is 266.67 MHz somewhere in there, too. A current design I am workin=
g with utilizes the DDR clock extensively and runs most of the DSP in that =
domain.</div><div><br></div><div>The bigger issue might be that the RF fron=
t end is set up to do real sampling, and the maximum rate is 4.096 Msps for=
 each ADC. You can set it up to be a shifted/decimated 2 GHz of BW, but any=
thing above that 2 GHz Nyquist externally needs to be filtered extremely we=
ll to avoid any analog aliases that come in.</div><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-496569664684140=
887"><div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Also, do we need a license for the 100 GbE MAC core?=C2=A0 I saw a warning =
to that effect when building a custom image but as far as I know the 100 Gb=
E MAC is free.</div></div></div></blockquote><div><br></div><div>The 100Gbe=
 Hard IP MAC is free but you may still need to request a license from AMD.<=
/div><div><br></div><div>Good luck.</div><div><br></div><div>Brian</div></d=
iv></div>

--00000000000089ac330651190b1b--

--===============8562337522305907213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8562337522305907213==--
