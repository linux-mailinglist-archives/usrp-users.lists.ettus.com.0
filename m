Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAY2B0seuWmbrQEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 17 Mar 2026 10:26:35 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C4A2A6A4B
	for <lists+usrp-users@lfdr.de>; Tue, 17 Mar 2026 10:26:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CED2F385E1F
	for <lists+usrp-users@lfdr.de>; Tue, 17 Mar 2026 05:26:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1773739592; bh=P4dhiKLZt7w9/WseKh2jGOrSeyfhuHsoHv5LIYTTcGM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bb+XAZbe+KxR7SIVO6lrCEUtKNz+bgnTicp3uy16cHZs7i7MKnhe+MaBTS/bN6N/V
	 ab0lblzpa9FWUDSIFLI6TE82UI5NUbtOeXUUCPd3WOH/Vwn/sdI13pIDiHZBjPCpil
	 Su42cQwefsT+CN4MapR/XNqBjneCvkAA6AKw9I1rvzBaAhVa0jmkTJlMg6AWeTSdPi
	 6XgN8EIIFyCCJpWXhM8HrIGA0nmHDnycCORIUV8NCbbiQzQ76Q2WTjqlgXGwL+Y5yi
	 6Kh54Sfm7BsGm5PJ/kvQzMtWrYE5c5+D/dUKyZ3Jux6XEghQOv16pMMmlJMx4lqpRV
	 frTiCHSLF8R1w==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 6BC0A38353A
	for <usrp-users@lists.ettus.com>; Tue, 17 Mar 2026 05:25:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="h8eoB7kE";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-89c5446f3caso20368176d6.2
        for <usrp-users@lists.ettus.com>; Tue, 17 Mar 2026 02:25:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773739551; cv=none;
        d=google.com; s=arc-20240605;
        b=d63Bc431SPmSiRRobu/rwCT5zrwBDP9CZ8ySCuvc+V1VrCIud3SXuK/q6UGIhQizbM
         AuwFe8UoRHhEiTMC+ELbK4sG1dVcWAPxlHtuGKA71kXTKXNLbTvB8DANLLwD0UJV4lz0
         xN/I3BfBZfhUZyCiG4sHkVYWVLUSWctwOGPc1RuymhkokxAZs7Fgl/0BENfxLbXPnVuq
         KxdnfM+lsxxSfkGiNvZ2lQ9AEzJnZikOq2Qi6gKSHBU8cPY/uK+jHsJfvUs/wu7AZPbB
         BeJZoSaAclBm0Jihz6MeSYKBvFeQSyBHux/qa7ZRUDmmw2uTYSGimfMB2mbQCJUto5nx
         KIOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=48pLXC7TuqSusf5qoX7tgOqfGkIUHgtlCvPeRFtGlT4=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=HZZffTyln72Ck8kj0IIwlDwMkqj1mr3JZ5XUzTQRF5auS2z5HdZ8F8iRGLIiaa1Hsx
         KGLx1K8yrP/fgWctOqrYeCCXdkLhqUhQxIrJde+gtZUP6PwU44N6Wm/0zEamFUoCs3GO
         QhQxI5PufrDSKLufgjCppJDKhxCLSfvCbl1cLxFn/U8Nq2x1gI51AmlmW0PbYDcskJwv
         syVXFamLgT/L6RKCJUqGsmSndNg67BaL9vk5uLZEkLT5qOSTBkp593YZw/lGb5d6H7uQ
         jXdl23QaD0oK0Fg2XK2DQ7u2co4fTr8nkTOaKsc5zdRonILg2q8wo4PEHRqIwfwzg2NU
         O/Qg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1773739551; x=1774344351; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=48pLXC7TuqSusf5qoX7tgOqfGkIUHgtlCvPeRFtGlT4=;
        b=h8eoB7kE23QMFOsyATfxDEAoQkjIqTrQGVPdTiQc5RGkfklzNeyZ0tSGlywa//v26+
         Zuf4SNykn4rNiTriL8LXU6uK5USVPNufaGdn+8ZEnZqNbLE6jwp3hvCY/pecBPzv2Qvx
         AMpozgyVIgXDBOPn7QkE30XFqvo812HckxKnmi7P+2VzAYu7AEGQXv5taHRk5XZiYdV1
         f9pYZwwFczVfUPHdJ1Frlrx9nuNqch9vMfPIK6LZb/9i2Q2I9h0ALxzkOyNLP3syfdga
         VAAOAFq91MXuF1QtNiK9zRgfNYruIZdwhOvNKvBuCO/N19rFi1XLxKLrfLylksEL3rwP
         HkVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739551; x=1774344351;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=48pLXC7TuqSusf5qoX7tgOqfGkIUHgtlCvPeRFtGlT4=;
        b=sNbDeRH98+JRbroVyOm7K4ptfegTkrINWJ7Ty6nRC/Yp7aIlYgcPSzgznJy9r9bmDD
         OMKh1gz5bONhv6mqwSjlsrW4OYucDyAc+mKdGLXqdJwBmiLJRJJpnE34VzzyVV2db0KR
         hr7RqxvNG8z35aTeK254K5od5R4EWW/8qykdD1zflljWJ1YYKCSkMp39tBQjYSGtfs/Z
         93NMeF2SptELV8ZB8bk3P5I6IV3ytogD7mkFvf39RvlbZE3VIRofyrG1t1HHdxP9kGEJ
         H698kWmDHVsvG2SJYFIH/jrka+mF1BCWgJJBLc8Vs0pytGwVYF8Vp+1BsYOtgLPRERoI
         uklQ==
X-Gm-Message-State: AOJu0Yy84p9XR44xuhX8RCM4wVCxHl9VCL9iv0htZok/Rn5lRaS234sp
	+36EJ5bjcL4agn7fBW+HZIaSUMPYvyv6R0eNpZlI+TAE+hoyBYK+BS8/zGT0OUKBVcm2nqQ5us3
	7t0F+pTsMktzIdtvLn1U2/0u/+nJkWM3vXir5HM2sJQziygFCMUQKWk0=
X-Gm-Gg: ATEYQzxLLqpOm690AH1gvsMAvdmFLaUnxBBnXz5uHI2pU8VbRxyNdoU3M2Gf4cWi5xr
	3JlKb/Z6EZWd/dXJldJTIcd6fHUiReEQ+NqJt3kx13h318gQh/lIgr/UBjyitOdxIkGxxt3q2un
	HCiq9mevTrzvUEd5LJZfB+f9HeiGrGSeSUHWSWRg/cVlAqw+BXF4RLYtal2O+a9tZpQAvPXw98W
	zz0j3XLTYTtBhMkq9QaPdRe++uFPEqPsFHXk8lU9/SaDKskln4SJWUCrrEFiF3E6ks7jcmjBfjR
	pp9ekYR4hwnRPx1704IQPw2npSmU0dxCEuHUEeY=
X-Received: by 2002:a05:6214:29e5:b0:89a:107a:5b8 with SMTP id
 6a1803df08f44-89a81f8c6d0mr233751726d6.36.1773739550745; Tue, 17 Mar 2026
 02:25:50 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB9126E3D60E0DBA1C8304723FEC40A@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126E3D60E0DBA1C8304723FEC40A@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 17 Mar 2026 10:25:39 +0100
X-Gm-Features: AaiRm52jiqUBqVS2zv2hUPCJdUH2keqq9geeGV86FcmZpwq4ALN_aj5pYJsZb38
Message-ID: <CAFOi1A4_y0KYEUDqjaDhaCxzPfFHsaqV0pFOLC4FcOQCxSkDQg@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: MT5PUA3F5RH232C5IL4VVTX27HUMLNM4
X-Message-ID-Hash: MT5PUA3F5RH232C5IL4VVTX27HUMLNM4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFNoC rebuild
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MT5PUA3F5RH232C5IL4VVTX27HUMLNM4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1145731236354031247=="
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim]
X-Rspamd-Queue-Id: 21C4A2A6A4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============1145731236354031247==
Content-Type: multipart/alternative; boundary="000000000000d8b824064d34ebe2"

--000000000000d8b824064d34ebe2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Huh. This error is one of those we put in as good practice, so that
problems don't cause crashes or uncommented exceptions, but I've never
actually seen it occur in real life (especially not with a default image).

Are you sure you've check this is a valid connection? I.e., 192.168.1.10 is
the device you're expecting and so on? Otherwise, I'm a bit baffled. Is
this the RJ45 address, or a QSFP address?

--M

On Mon, Mar 16, 2026 at 7:48=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Sorry about spamming this list :)
>
> I just rebuilt the clean/unmodified X4_200 image on the X440 just to make
> sure the build process worked.  I loaded the created .bit file and am now
> getting the following error:
>
> Specified destination address is unreachable: 1:0.
>
> What could be the problem?  Google says it's a mismatch between the UHD
> and FPGA versions, but I can't see how that would happen.
>
> --------------------------
> ~/uhd-git/host/build$ uhd_usrp_probe --args addr=3D192.168.1.10
> [INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
> UHD_4.9.0.0-290-gcfb98407
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.1.10,type=3Dx4xx,product=3Dx440,serial=3D344FF6B,name=
=3Dni-x4xx-344FF6B,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.1.10
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_200,mgmt_addr=3D192.168.1.10,name=3Dni-x4xx-344FF6B,product=3D=
x440,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: Specified destination address is unreachable: 1:0
> Error: RuntimeError: Failure to create rfnoc_graph.
> -------------------
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d8b824064d34ebe2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Huh. This error is one of those we put in as good pra=
ctice, so that problems don&#39;t cause crashes or uncommented exceptions, =
but I&#39;ve never actually seen it occur in real life (especially not with=
 a default image).</div><div><br></div><div>Are you sure you&#39;ve check t=
his is a valid connection? I.e., 192.168.1.10 is the device you&#39;re expe=
cting and so on? Otherwise, I&#39;m a bit baffled. Is this the RJ45 address=
, or a QSFP address?</div><div><br></div><div>--M</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Mar 16, 2026 at 7:48=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mai=
lto:eugene.grayver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg214802=
8004986708545">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Sorry about spamming this list :)</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I just rebuilt the clean/unmodified X4_200 image on the X440 just to make s=
ure the build process worked.=C2=A0 I loaded the created .bit file and am n=
ow getting the following error:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Specified destination address is unreachable: 1:0.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
What could be the problem?=C2=A0 Google says it&#39;s a mismatch between th=
e UHD and FPGA versions, but I can&#39;t see how that would happen.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
~/uhd-git/host/build$ uhd_usrp_probe --args addr=3D192.168.1.10</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.9.0.0-290-g=
cfb98407</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.1.10,type=3Dx4xx,product=3Dx440,serial=3D344FF6B,name=3Dni-x4xx-344F=
F6B,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.1.10</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_200,mg=
mt_addr=3D192.168.1.10,name=3Dni-x4xx-344FF6B,product=3Dx440,clock_source=
=3Dinternal,time_source=3Dinternal,initializing=3DTrue&#39;.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Error: RuntimeError: Failure to create rfnoc_graph.</div>
<div id=3D"m_2148028004986708545Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
-------------------</div>
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
</div></blockquote></div>

--000000000000d8b824064d34ebe2--

--===============1145731236354031247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1145731236354031247==--
