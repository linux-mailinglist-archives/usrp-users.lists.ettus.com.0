Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOVRCbBgo2myBQUAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Sat, 28 Feb 2026 22:40:00 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 345CD1C9320
	for <lists+usrp-users@lfdr.de>; Sat, 28 Feb 2026 22:39:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9386386692
	for <lists+usrp-users@lfdr.de>; Sat, 28 Feb 2026 16:39:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772314797; bh=POPh11tQk79kXNkcYURGACktn+k0UMKy0yt0OxHgRfM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AHbDk2kwkb29R9IGidF0JF1tVmYWECaRWUOra3k2OC39txIQJ/ycKDaTqHhdrDTWE
	 bBZwYGBaqscs1Ury9hK4WoOI3PsTODoYX8iKAfG0/8TJoy6lT6Mv07+oQbEbBaaO63
	 aJBfdU7pl41VkfsxqypKqIds/vM9bnEB9KkUihb/+CnW+A2NBcM6im+jEfIBphRF9f
	 6N75Da21XVmewzKbR5SE/U7LwL6dr/w8cMSRTAnVm0umtqMrtdEM8CCVjFGhiK4ZWh
	 zQyJZ3a5t+Y75RBCCN2wgrSqWDNPAPYAPIn/xdN95aPTnNTNRZ8D8jLzrdV13yMULD
	 EoycdH1Mv0yOw==
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com [209.85.161.66])
	by mm2.emwd.com (Postfix) with ESMTPS id 16C483865A7
	for <usrp-users@lists.ettus.com>; Sat, 28 Feb 2026 16:39:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="gq3NSSuW";
	dkim-atps=neutral
Received: by mail-oo1-f66.google.com with SMTP id 006d021491bc7-679efb9eb0dso2529771eaf.2
        for <usrp-users@lists.ettus.com>; Sat, 28 Feb 2026 13:39:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772314765; cv=none;
        d=google.com; s=arc-20240605;
        b=VmhLcptC8tKJX2CFM8ARfvA0ZXhUclRy42GrVBtBr5PRa4no/5LovqDGRXzbPW+xyI
         nHRcdEYzmY6EO/mGwWR7gnO2+Wh4NjVGBquJLxLRVGC0PMzwe2MT+YC67qwKwZCCgRex
         y6QLJasxXa52ynpn2jkcVWNSkw6kLlHZHCcy0BBtRe9qiOJEuhfQy7RdZRDgldLEYcWu
         nguPjE/6azsKuMxgXjPd0mBEi77aYDe4zawAOOkQ1f4nNI/G+cv5qylqcc7c4zKg+PkP
         UZ8/TiIEefrbMda9s62VM4vyydJAOiuql+Fxr37AIDpwLnQqklMnDQ+Q8NRsqn/2hCSv
         VSwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=K+JzTcl8SwmEvM0dNJiS4ckk4rxWxtjYvNLDP2gpr/U=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=JKDnofpQAUF6pEIJmZ8Uut2ndg/Cv/WqqCQDP9IKBdpCrpanc4MCgKaQz01Xk3IZig
         Ds+IubFN/LEJrTsaGuO1rMJRyekjKbeNP1067lceZ7dbirxak1gP3zcOtFsFKQxlrIzr
         EdRvJ1TWvTq6/TDqZiZayp7ALzSXfqIp4CTQocnQVIJIm6yXueZmN+Mxkb5OePCQ3B8h
         4gxW7TkIZGUq0epY8FYDcWaaL5/y5oPBwB+RUAaAw1Ax27lL5irSg4ix+FLO70wMxxwh
         +kGpDzwhYG+GM32s2lnRr7lTOeSALltEjlaA2lPwBOmfv1rNTM20UOsweE3n8kA6rwoq
         wEQg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1772314765; x=1772919565; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=K+JzTcl8SwmEvM0dNJiS4ckk4rxWxtjYvNLDP2gpr/U=;
        b=gq3NSSuWUEp1bH1pTDj/xQNkCJ16H121Hjmae3XLDxsfrcFdxK95y70X0AEhv8SMGe
         g+fWgmUc8j8kRDOfgq0eR/62d4I56+cegpqIXN9f0AHW1qnS/kbzGQgYjLgjklIeMuVb
         fuqdP6jzp7Kl8pHyYYtdoqbAMEcb8WYxMkjgrC8B9l/prXKX9DIsO9Nzzb28jhomB1R5
         DCOMG2F/25DKCaLeTfxBi3Tb+XmoD2NlrehIvFCAYNGYMqR3pAXb9SwEEomo3msJssQz
         nzKUlgVMD+8XQr+e4D/WArV0YrTsqgVbe6izzeO0vsOe6DqJL499jn/VC9Cet8zXxXQ9
         Pi6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772314765; x=1772919565;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K+JzTcl8SwmEvM0dNJiS4ckk4rxWxtjYvNLDP2gpr/U=;
        b=AP7XOiYgdisFsPtg5EbN7WXli4FhCwXJCZ18TfMPCpQSGyQtUxjpmz+rW8aIqHxQbg
         C3eAleLMuCtZTPHUSJqrXrnI5qyPC+gxa4d6boF7sT3lq8kgHy9dyeOuMkZ3FUnHFr+N
         kf6QYiAk4hcQKu18ynrpL3//b19T6OBPFpwL7uiCR+fuNCvmqSbZIUfZ1YyxvbP99bbh
         y79IiDGjCYwhOseSDcGuRt3CaodXvcwSDCKHzYl+9bgjBZp4+MeTaTcWPk52fT+VedLV
         P+RutzUYFa+YKKaUf9CrLAN0Uh6mfo8dNpB+7E3qHweeJysAXld59XtlZfG3ux8+n1a+
         6GoA==
X-Gm-Message-State: AOJu0YyhnQKAwiwRTWMPLsVMpNvfIzKV/gP5CIFQO9Zawb8+c+p94tbt
	6txToQfYXY5CIx6JQg3MJebIhI/LtJIX0XI18MgncZpbetkqA7K+0ap/RA5P1Svw7xmxy57ZgD2
	5lRg3zewcg6HEkXQz87UmjBVZA1q1C1VHuv76jsmAKWIca3NthFLFpTMMr66Ncfw=
X-Gm-Gg: ATEYQzyWXhOPHTc6GwuqKhgh0a7qi0gJ3qsmVEkGl+4TrMl0YSC/ZJ+ws/N/0R4g9Rl
	kTUBsmPAyzI1PuKxTRGJA9MOcYDFZJDHv8JNQ5IGMQ0YX11um7gPo3MFTwcavHmkdauQ5prLTgi
	L39LVpp3byuwwxgft0yoag3d+Cxo92ApDWMwpnWAE05TfkVsm32zvVFJsswaeU0bcD2vRJbyzXF
	aT0bbz2n/1RkA5qeRj2I+rIsc3H/dzAQX0sp98ul7JaO0BHiK3Jk0SszK7F0qNuyntr4WPVnvJT
	m2ix7PCu0WZU7PWvzjfX6Q5VrOrzfjtCmFO58dsn
X-Received: by 2002:a05:6820:1622:b0:679:dcb5:b84a with SMTP id
 006d021491bc7-679faf4da55mr4636097eaf.57.1772314764709; Sat, 28 Feb 2026
 13:39:24 -0800 (PST)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Sat, 28 Feb 2026 15:38:48 -0600
X-Gm-Features: AaiRm51S_sHgtGmveS-czvYm9eRX70cbuT5lYF0BpkWtQufweKR8Jj-mqJhtWeQ
Message-ID: <CACaXmv__wwR+LsJrq9osOPcsq_8H1f6tMJxCrDDEBz3yM95zXw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: I4KMSP4HR2XWPMQY3UTBA5VC3FGCFZR3
X-Message-ID-Hash: I4KMSP4HR2XWPMQY3UTBA5VC3FGCFZR3
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Save-the-Date: NEWSDR 2026 at WPI on June 4-5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I4KMSP4HR2XWPMQY3UTBA5VC3FGCFZR3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6766782130531976939=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[neel.pandeya@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 345CD1C9320
X-Rspamd-Action: no action

--===============6766782130531976939==
Content-Type: multipart/alternative; boundary="000000000000fb226a064be92f4f"

--000000000000fb226a064be92f4f
Content-Type: text/plain; charset="UTF-8"

Save-the-Date: NEWSDR 2026 at WPI on June 4-5

We would like to announce the 16th annual New England Workshop on Software
Defined Radio (NEWSDR) event on Friday June 5, to be hosted in-person at
Worcester Polytechnic Institute (WPI), in Worcester, Massachusetts, USA.
There will also be a set of tutorials and workshops on Thursday June 4.

Registration and the Call for Participation will open soon.

We will post the event page on our website soon.

We will be looking for poster presentations, exhibitors, and sponsors.

We look forward to seeing you all at the event!


*https://newsdr.org/ <https://newsdr.org/>*

--000000000000fb226a064be92f4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">Save-the-Date: NEWSDR 2026 at WPI on June 4-5</font></div>=
<font face=3D"verdana, sans-serif"><br>We would like to announce the 16th a=
nnual New England Workshop on Software Defined Radio (NEWSDR) event on Frid=
ay June 5, to be hosted in-person at Worcester Polytechnic Institute (WPI),=
 in Worcester, Massachusetts, USA. There will also be a set of tutorials an=
d workshops on Thursday June 4.<br><br>Registration and the Call for Partic=
ipation will open soon.<br><br><span class=3D"gmail_default" style=3D"font-=
family:verdana,sans-serif"></span>We will post the event page on our websit=
e soon.</font><div><font face=3D"verdana, sans-serif"><br></font></div><div=
><font face=3D"verdana, sans-serif">We will be looking for poster presentat=
ions, exhibitors, and sponsors.<br><br>We look forward to seeing you all at=
 the event!<br><br><b><span class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif"></span><a href=3D"https://newsdr.org/">https://newsdr.org=
/</a><br></b></font><br></div></div>

--000000000000fb226a064be92f4f--

--===============6766782130531976939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6766782130531976939==--
