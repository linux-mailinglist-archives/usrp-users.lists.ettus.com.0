Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YL2eG+7PeGmNtQEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 15:47:10 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A895F95
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 15:47:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54EAB38C106
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 09:47:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769525228; bh=mjLNkcvSJYlVXu9izIZcElFNue9t7IWcDl28hYCtTYI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=I6K1HVLrxRhp7H1VSSen6F51hW5oWo0kY31UPkeR4kvCLyiwXUgH7dkjM1O3WwQct
	 eFd+YKtwiWU8V1YYSXIzuQXo3SeHwj48PKyQ5fbXkKmExF3SmULBwaQiujX8VYjrP2
	 WcVo7jLqZ9f0mNuX1Ari1xmbij2p4mNvXTEfuhNZjfZdNNIy6e6TKSOz5VYpAg42iT
	 +oID35kmmwj1x47bk4acI4TRdAT5c1Jkz/6y9osi3ogF4xSNJsmn6gE8Jv+U1OOcG/
	 KWE3VwYevV7WlK258XgmNug+JvFKnPEpOabiSWRm+SUcBPlsk3tChqJsjslhrlJGWo
	 nM0P3kJId4x+Q==
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id F2A0E389C1A
	for <usrp-users@lists.ettus.com>; Tue, 27 Jan 2026 09:45:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="RAejDTMr";
	dkim-atps=neutral
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-79478ec4cf1so7741067b3.3
        for <usrp-users@lists.ettus.com>; Tue, 27 Jan 2026 06:45:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769525154; cv=none;
        d=google.com; s=arc-20240605;
        b=f0ziMGohtgbfS7Pf2nb4yQOAHNevquiNcPqsPwlwxWmPAvwcPTK0/PfTpTlYsIQ+gh
         yfSrH9lL+CpkBz1aRV4wkuSINROjsLmAilxW8Fm4S6N/EmKgwVrP+acfKKhAPbSXRgA1
         MDtHPowrU5JZWM1BlvHtW9wKEgIPnyaQjRCD0OtIw1qcX2vREXYcdwJVOTyYyxy1P7mo
         FziVi3t97vUoPGNRNQ+uepi4YvpBnl/pBYrn4QLXLsfd4UDWmcv0LoYYOq5tisRpt+m9
         VGxRry2pXvsbas0gupbT2s0lTCcQpgnDtusQUEGd7PsYAlHmqBRzQDEcev8HhhwpLluy
         be6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sn/+38+HQ005mmh+CyvKgnkrVp5QpPzeglDfuHDcGS4=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=NovTNVZYkdP9IyRAQ6yw9qDhjDjWVMyC3H/eBmKO3p7BhR+J4yugqKB1rT9pRsH6Qc
         rwPDs/ziN6d8ffE2lDYWirCUThEccFLjfN0OVrW7EbCJ95aVM4DKSuhFQl+rZSe8EqTv
         KGBJQbZUIOtaGiHV2TWaMcxzQhI9o8phk350qcJ83MdzI+0E2lgTikIx/dmKhXvmB41U
         hgWhswvss9A5unvA6GaxP/Yj+4QFbFsanPCrB/HjGFKuTSr2vW2vtRNxLYGo176UNnuT
         e4nIUS/7qhY3/ZIs3eRjAgTuDmMq0Y4CUMPUIADKlf9PZbAov8naTq6ssrnabfb2oLb8
         3/0g==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1769525154; x=1770129954; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sn/+38+HQ005mmh+CyvKgnkrVp5QpPzeglDfuHDcGS4=;
        b=RAejDTMrfWULQu6fofZ5ClG+IK+Sf7HRtATHXcCBNx6EO4oAWVrpRJmVVZu4EUDTVu
         Pjz+1HdS2asK1x3Woj2mVqb+RwFN8bQGYX8V6Mj2+Jafc1rXWki2Mr8dxOnpCDhsa4qk
         hnXEFioKmtwXNNcPhn6Wns+WpZvKrr50iwHr1oblLQKQi1YC71t0lD1rn1kWwCsFL7Ks
         Nzdfv1IYPYRc5e91OZWizeIi7WeDbMDitYQrwXZ5rGnyPB5AluutsyD24h4h9nsTAye/
         v5IXqYav2ldao/w0ZgLryo0k4NQjnGz9Px0ZtLvIazsony/RZL39StKxv8p8bJ5SJ6GW
         1ixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769525154; x=1770129954;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sn/+38+HQ005mmh+CyvKgnkrVp5QpPzeglDfuHDcGS4=;
        b=VFUy/P29km4sfdkzzKcLgG50wttPyEs7KjWW9W5+A+yqNrtcDJi6AcD/7LVm7zXCQ1
         e/eDJaJRJLEdMZSA/vr43v8qVK9UFwBuHpzB/pwD6ZLInBbbkh/MhzBGXe4RL8Hsk31V
         XVDvHGt464DPaD06OV7e+wCUOtylj44OBHo8f8izSuvKikWs3cpt6M82qPk7iYwKNwKp
         EGZaaL7p0MxraRZrNkAN4dHn+OiNr0sJ/2HXQdB0r/8cbEcVm3S3S2cGcxc3f50Y83/D
         gD9TsepuNhz0gr+L1exLI8H9+6vKm9Jxl8NCu7bdePr3CUGryNNt7nWHgsPJBLQlfJyb
         SUMQ==
X-Gm-Message-State: AOJu0YyJfZW9K+WLcWJI6SYSuEBCx6qzyHI+LES1KghkubmT5XZd0Dl4
	OkmwbraYo1NaLWHHQDf1v5dbdbtPdrW4Z2OIhol20708SH2OV4titz3lAxunPTvN+YUaBe+4UyI
	7jJs9uHF7XcyAF+ERWFz4HGC7dURSAQC4sCvGLUFK
X-Gm-Gg: AZuq6aITiC82ECbKWGKCRTV0jHatFbpSMlx2k5TnWPICHcogjQ+D0tQe6Fp8zcf2BGb
	LB/eIqpdgpRjHdQCjVkaS967eOrMcbBQYnA5N8hbJ/UsSaxN+Fl6fWp4YmnfdagIyzAIb6l5OqD
	b8GK0drEGmNUNpX4zMffHXH2+vXgWyeSXC9HxFBbKLnAq7TTbPnOePRsxHTa7uu0C+MRl4jwHgZ
	nPXHiK638QPnBhqkKptJBSNS4J9u+ND78F04+VQ41iqs8vAYoJVRPOfwM14zl6q0EYvDsYPyCC5
	yNMPpEuetoM5QATcPDloC99yZ6c=
X-Received: by 2002:a05:690c:3608:b0:794:7348:e626 with SMTP id
 00721157ae682-7947ac944f7mr15197237b3.64.1769525154274; Tue, 27 Jan 2026
 06:45:54 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
Date: Tue, 27 Jan 2026 09:45:44 -0500
X-Gm-Features: AZwV_QhAlluT2Ft_OgWMayg1QuDF_LfW88WalBngrkSTXb_WLh4gH-cbjaZE7Uo
Message-ID: <CAB__hTRGg_=E=WiULHMUYA6iMY1yvgFw5WexYw56NNyrz7nS8g@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: ZLEQL3WRKBGCUDTG3V5XDGJM2GWGTWEJ
X-Message-ID-Hash: ZLEQL3WRKBGCUDTG3V5XDGJM2GWGTWEJ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX DRAM buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZLEQL3WRKBGCUDTG3V5XDGJM2GWGTWEJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4828300149593138121=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[ettus.com];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,aero.org:email,nd.edu:replyto,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: A71A895F95
X-Rspamd-Action: no action

--===============4828300149593138121==
Content-Type: multipart/alternative; boundary="0000000000003e5dc506495fae0a"

--0000000000003e5dc506495fae0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,
I "think" that the replay block can act as a FIFO in recent UHD images.
But, there is a possibility I am wrong such that there is a build-time
parameter that is needed to config this.  Another option would be DPDK if
you are not already using it.
Rob

On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Hi,
>
> The default TX buffer for N32x is 128k samples =3D 512 kB.  The box has 1=
 GB
> of DRAM.  I am getting occasional underflows when streaming at 200 Msps,
> even though the CPU is not very loaded and easily meets the average
> throughput.
>
> I have done all the usual stuff =E2=80=94 isolated cores, pin threads to =
cores,
> etc.
>
> Is there a way to increase the default DRAM buffer size w/out rebuilding
> the FPGA image?
>
> Thanks.
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003e5dc506495fae0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Eugene,<div>I &quot;think&quot; that t=
he replay block can act as a FIFO in recent UHD images.=C2=A0 But, there is=
 a possibility I am wrong such that there is a build-time parameter that is=
 needed to config this.=C2=A0 Another option would be DPDK if you are not a=
lready using it.</div><div>Rob</div></div><br><div class=3D"gmail_quote gma=
il_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 26, 2=
026 at 7:00=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@=
aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div class=3D"msg-3089665877190443603">




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
<div id=3D"m_-8211984150526382119Signature">
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
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--0000000000003e5dc506495fae0a--

--===============4828300149593138121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4828300149593138121==--
