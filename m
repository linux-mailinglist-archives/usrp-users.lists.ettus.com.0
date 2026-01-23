Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id G9ayOj/5cmkPrgAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jan 2026 05:29:51 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F037049A
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jan 2026 05:29:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F66C38997F
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jan 2026 23:29:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769142589; bh=5xRsD0ngZM+Cp4G4TPkzKtzgQwlXHOnjmu0gWBnpIC8=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=ki2YnHi+GuGEY6jElBzLpY/w9oEgvjmvebTxV9bk7W9q/Jc/nqOZPd1E9+wtVxSYr
	 VLHha4F31TwAeIJpwKAHJCrXuYvEf1sub5qIl+A6Dglrr/j6H5tWOWvKZJGRWGi5r2
	 37suto+usP6CAPhQJzT4X+N221t3W43Yljgo2aBzRormc52XTQKe+fkIoM78x39TZc
	 v57w3dHvhCtEQHwH9s9nz6BPd9EBjRLPB3nOSgk52Bx+YI5/9R4nHpFTXu3k0ojD5U
	 qBbCdiczUxGYjh6XAyLXBtsJadMKQqhHkoJejZWtmDyLnTVE1M+Hc7b/4mH3AbreMA
	 0D07ydF62LC2Q==
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 23651389932
	for <usrp-users@lists.ettus.com>; Thu, 22 Jan 2026 23:28:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vvdntech.in header.i=@vvdntech.in header.b="MdqaYiUd";
	dkim-atps=neutral
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5eef115c781so687498137.2
        for <usrp-users@lists.ettus.com>; Thu, 22 Jan 2026 20:28:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769142520; cv=none;
        d=google.com; s=arc-20240605;
        b=YpbTxZkUSbTarpGD3d1Jvfpd9NcoyMdYVILvWOcxl/qEKYvslAyojf6h46pRai2pX9
         dct/rvUNyYPFZHstuEquxX5j5hL9CBDUcKv1Ll8cMMHMrOGw7TTvaTQWp/a0EoOYpbvx
         3cx+LW8z0YDzz4SmSmdsmixQBcXGBgZ9nF8DG0GlIqx4vLcg/IF7JoK7ppGLGLUPrpTx
         esgcUAoyFnKJRT6JjdtO+GQ72pIzt4x+a9CmitktcI5Su3VZDZ8L/ZRyWqrhB8qiueRf
         JgBJGg9cpw0dm+h2JTdnw7C8MFDsBIa0k0CTIuHVim9Pv7+60JBmHxXKJOPKxz0MV6Sd
         qaog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=l84Xe9Yjf1xGQ1VGxKtxttpwAdPCkEOKb1wfUiszWno=;
        fh=vj2MHvLR32WxuQprBUVL44zYYgIQJclnSJ8R0m0Tg2M=;
        b=Dn2I+D9WZG+e0Z9k3Y4gB+KYuSxa364hjG6ifzt8jQJlv+la0OfxblJQF95VWA1Jnx
         HSfRfqK2oY0hiZIls3Al641whkmVErV7qfNDDfrZKfEb7WlTKN1lmhadx++ISpfAX0ei
         d0AFhqDeaMIAws++BzJMHkPz33bbsi5fY0d0R2viTIp0i9iTaN4fpQoTZygpatduw6kp
         dvvsCzIcGFxvC3lFx4MBifq7O1fC8Vc4fsgG0fbfbOBZWsY4Q+2N52S3u2mREN6OfK/z
         2A7ZMXAJnk1AXgPb6j6cfrLXw0DXasIOu585ZUc4nEsrnQAHRo/5TFP57bQkhp653gFM
         M00w==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vvdntech.in; s=google; t=1769142520; x=1769747320; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l84Xe9Yjf1xGQ1VGxKtxttpwAdPCkEOKb1wfUiszWno=;
        b=MdqaYiUdvE1cbL6S3ESC0wJsjCDuzJxFOGjCGcgmAGSps/sOLhgDTO9tUzlAlvgIH4
         xEA2OcMD9LNK2J0zRbdlt730TSm/0KMMkeKAaiVg7vKGDhLRHP6KhtJRAW44JXgHLSt9
         OAA7ZppUAFuFObMPqyIcVAEFq30gYe2QalIkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769142520; x=1769747320;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l84Xe9Yjf1xGQ1VGxKtxttpwAdPCkEOKb1wfUiszWno=;
        b=Oi/kklTtPGOy8IFGXaWXrye7bJXyhi2rLrFi5c00TpA7b6TX+TTrUtXcZ3PGXXsdab
         LIdgd1J/d07j9Dq6NXtlXHYcOhvapmGwGr6eKYwCnrLxdGl1TUwsOfkR0tBL/xuSai2L
         y3FR1Tyjv3aHfJ1BtDIGu6V4okj4UMMYHeMvpDd3HvBDNc3w76DqXgbLnqcMEuqc1fpD
         YjIKTCL6kf/1nHaPsklP1Dpn4kDKE61N5VSnYrgwSmK/ZZ8r6H0x0pOzOCGUecLISI7n
         FZjb5dbytA0EXd/qny5213NFEvbL6zjEd6jGOrcbO7jcSDOQZpdio1pvHcT17ALqMPAv
         00ig==
X-Gm-Message-State: AOJu0Yzo3yiCk4zL3nAN8PCNdYFyCV6GPEEdiiuBx1kQqBvnaBBEWyLP
	bRL3ef7uMX03poab7C3fCm7r2GUPsAnm2UPFaTQd06fdjgrTLYXg0POG6dbtl8/t23drMr2po6k
	GQTkWEsSiJn6LyPKuLLHcakvrY3OxVyg9bCnWT8TB7Q3nQuPwRBLzEks9dgznfnm/MwshFXWk17
	KVjqdxNQETNEqdTHvpS4JXd71j+jq65PBFmkS+qnnK9Ikh
X-Gm-Gg: AZuq6aJ6HHhxjBk3MTif89iWRcYQ5spAjaXNF1YsK9x37MqV1dMN5OAlaCKfn3wAMbN
	FUUmX1ZQpWN4TnXweqZ6HD7JkTopd6Bch9EVmAjLAbe8pXy8BwLc0SVv4+zVN+QnnauMK1A6CGJ
	Hg9yl0MLBZTNCCa8o+R6EYEUBU9H6WPsaGePt2O8+Q+CwKUJ4ew5DrlxtloKibqiFQPdzklKVQo
	VZENUpzQyidYEK6wRR/DUj6GMtwkkI2zxiK3sVrCGglEHJ2K3k285HVcl6As4pYRJwboA7grCiy
	0l5WPQ==
X-Received: by 2002:a05:6102:5125:b0:5f5:2a8e:f49d with SMTP id
 ada2fe7eead31-5f5585178d7mr21879137.16.1769142520145; Thu, 22 Jan 2026
 20:28:40 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 23 Jan 2026 09:58:03 +0530
X-Gm-Features: AZwV_QgDIYvj81GrVMzI1jPjPFDWDmLl7MK9V0Uc01tjvQ3_pYs-pZFFMoKt5ho
Message-ID: <CAPP35V-Y6Nr6du9kiQOg5hMG9xkDYDnQ8NaXUPGhatOK0pE10Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 3H3BLNKDGBR6THL4CDUQP4JAVGDUMLWQ
X-Message-ID-Hash: 3H3BLNKDGBR6THL4CDUQP4JAVGDUMLWQ
X-MailFrom: ravi.paswan@vvdntech.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N210 with LFTX / LFRX supported LabVIEW version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3H3BLNKDGBR6THL4CDUQP4JAVGDUMLWQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ravi Paswan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ravi Paswan <ravi.paswan@vvdntech.in>
Content-Type: multipart/mixed; boundary="===============9121438511636752814=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_MIXED(0.00)[];
	TO_EQ_FROM(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[vvdntech.in:s=google];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.304];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[ravi.paswan@vvdntech.in];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,vvdntech.in:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 04F037049A
X-Rspamd-Action: no action

--===============9121438511636752814==
Content-Type: multipart/alternative; boundary="000000000000787dbe0649069762"

--000000000000787dbe0649069762
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Community,

I am looking for information regarding which version of LabVIEW is
supported or recommended for use with the USRP N210, specifically when
using LFRX and LFTX daughterboards.

Could you please provide guidance on the most compatible version for this
hardware configuration?

Best regards,
Ravi Paswan

--=20

_Disclaimer:=C2=A0_=C2=A9 2026 VVDN Technologies Pvt. Ltd. This e-mail cont=
ains=20
PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for the use of the=
=20
addressee(s). If you are not the intended recipient, please notify the=20
sender by e-mail and delete the original message. Further, you are not to=
=20
copy, disclose, or distribute this e-mail or its contents to any other=20
person and any such actions are unlawful.__

--000000000000787dbe0649069762
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Community,</div><div><br></div><div>I am lookin=
g for information regarding which version of LabVIEW is supported or recomm=
ended for use with the USRP N210, specifically when using LFRX and LFTX dau=
ghterboards.</div><div><br></div><div>Could you please provide guidance on =
the most compatible version for this hardware configuration?</div><div><br>=
</div><div>Best regards,</div><div>Ravi Paswan</div><div><div dir=3D"ltr" c=
lass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr=
"><div><div><br></div></div></div></div></div></div>

<br>
<div style=3D"text-align:left"><img src=3D"https://vvdnnewdev.vvdncloud.com=
/images/it/vvdn_at_mwc.jpg"></div><div style=3D"text-align:left"><i style=
=3D"font-family:georgia,serif;font-size:small;color:rgb(80,0,80)">Disclaime=
r:=C2=A0</i><i style=3D"font-family:georgia,serif;color:rgb(80,0,80);font-s=
ize:12px;text-align:justify">=C2=A9 2026 VVDN Technologies Pvt. Ltd. This e=
-mail contains PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for =
the use of the addressee(s). If you are not the intended recipient, please =
notify the sender by e-mail and delete the original message. Further, you a=
re not to copy, disclose, or distribute this e-mail or its contents to any =
other person and any such actions are unlawful.</i></div>
--000000000000787dbe0649069762--

--===============9121438511636752814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9121438511636752814==--
