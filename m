Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C12573CFEA
	for <lists+usrp-users@lfdr.de>; Sun, 25 Jun 2023 11:57:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3654384542
	for <lists+usrp-users@lfdr.de>; Sun, 25 Jun 2023 05:57:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687687033; bh=04EcEKhaL7s8BlqlKxkksmHIO7ekPlvMU/KYdWf5zko=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jSXGAgqaFtZBs3bslsDIlALAPuQdF0KzY/SV9+4r/AvM10q1DxexC3/ztL1+NzeKV
	 TwLQ1sLwI6N+0g3YRLFaQ9ujc61czDalHMBgVn+giVMdbJZV0ShjBZwQtZvbew4hm9
	 1JEZs+B9yEPnZqjvWRTwZjQ8lQqnilalpmELXr6z8ol+Vu1+WyNg9PrzlJgLux7qWN
	 7/qwPqLmFi3ZqN8VjNb96UaqewBFUfELvSGFJAZKn+WtoWZ4Q8HKMA4SXjTDIJwrTY
	 DVDhjXtTg/GU+eS2UXEltPxufzcndXhMLi2ojnxg24fG82VMSHtLkQFrA++Tb82Aaf
	 aFbbyOBbmjGVw==
Received: from m1365.mail.163.com (m1365.mail.163.com [220.181.13.65])
	by mm2.emwd.com (Postfix) with ESMTP id 6870B380DD8
	for <usrp-users@lists.ettus.com>; Sun, 25 Jun 2023 05:56:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=163.com header.i=@163.com header.b="cC8bbdRs";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=gE0oxWZtXXOoHAojEFkD1+/ihSBsw08pv429moFn0ws=; b=c
	C8bbdRswm04BzOM48fCUxTKGlNVPAjQ037rPJhw92z2vU3WJTwlT1+aH6gdbpfSI
	7L/uKHfyy14m7vbK0GC0Y66G8MAvgZP2QbSMsDn1q0tVbT/vc1lq5Cs2LJxiHOCw
	qYQQ8FIbQ+JtDv+YvxWE5y0GlnlEz81vhcytAKcb+g=
Received: from zht1012462014$163.com ( [113.200.174.123] ) by
 ajax-webmail-wmsvr65 (Coremail) ; Sun, 25 Jun 2023 17:56:09 +0800 (CST)
X-Originating-IP: [113.200.174.123]
Date: Sun, 25 Jun 2023 17:56:09 +0800 (CST)
From: zht1012462014 <zht1012462014@163.com>
To: h57jafari@gmail.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
In-Reply-To: <Wq4plbL4wpZjUgQVqCTsxEN8vLNTTtulfArjZgXs@lists.ettus.com>
References: <Wq4plbL4wpZjUgQVqCTsxEN8vLNTTtulfArjZgXs@lists.ettus.com>
MIME-Version: 1.0
Message-ID: <35bdf633.2dac.188f1fb78ce.Coremail.zht1012462014@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: QcGowAAXwPk5D5hkwEAVAA--.2648W
X-CM-SenderInfo: p2kwiiarsuljqqruqiywtou0bp/1tbiIAGXgF0TNXIGwgACs5
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Message-ID-Hash: MUS64KOWVSRSJ7SJ4WW4ECPDSC36FW6Y
X-Message-ID-Hash: MUS64KOWVSRSJ7SJ4WW4ECPDSC36FW6Y
X-MailFrom: zht1012462014@163.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK installation after installing UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MUS64KOWVSRSJ7SJ4WW4ECPDSC36FW6Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0525854238044274412=="

--===============0525854238044274412==
Content-Type: multipart/alternative;
	boundary="----=_Part_43597_1698119767.1687686969550"

------=_Part_43597_1698119767.1687686969550
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: base64

SGksCkkgdGhpbmsgeW91IG5lZWQgdG8gdW5pbnN0YWxsIFVIRCBmaXJzdGx5LHRoZW4gaW5zdGxs
IERQREssZmluaWFsbHkgaW5zdGFsbCBVSEQuCgoKCkF0IDIwMjMtMDYtMjQgMDQ6MTQ6MjcsIGg1
N2phZmFyaUBnbWFpbC5jb20gd3JvdGU6CgpIaSwKCgoKCkkgYWxyZWFkeSBpbnN0YWxsZWQgVUhE
LiBDYW4gSSBub3cgaW5zdGFsbCBEUERLPwoKT3IgZG8gSSBuZWVkIHRvIHVuaW5zdGFsbCB0aGUg
Y3VycmVudCBVSEQgZmlyc3QsIGFuZCB0aGVuIGluc3RhbGwgRFBESyBhbmQgdGhlbiBpbnN0YWxs
IFVIRD8=
------=_Part_43597_1698119767.1687686969550
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: base64

SGksPGJyPkkgdGhpbmsgeW91IG5lZWQgdG8gdW5pbnN0YWxsIFVIRCBmaXJzdGx5LHRoZW4gaW5z
dGxsIERQREssZmluaWFsbHkgaW5zdGFsbCBVSEQuPGJyPjxicj48cD5BdCAyMDIzLTA2LTI0IDA0
OjE0OjI3LCBoNTdqYWZhcmlAZ21haWwuY29tIHdyb3RlOjwvcD48YmxvY2txdW90ZSBpZD0iaXNS
ZXBseUNvbnRlbnQiIHN0eWxlPSJQQURESU5HLUxFRlQ6IDFleDsgTUFSR0lOOiAwcHggMHB4IDBw
eCAwLjhleDsgQk9SREVSLUxFRlQ6ICNjY2MgMXB4IHNvbGlkIj48cD5IaSw8L3A+PHA+PGJyPjwv
cD48cD5JIGFscmVhZHkgaW5zdGFsbGVkIFVIRC4gQ2FuIEkgbm93IGluc3RhbGwgRFBESz88L3A+
PHA+T3IgZG8gSSBuZWVkIHRvIHVuaW5zdGFsbCB0aGUgY3VycmVudCBVSEQgZmlyc3QsIGFuZCB0
aGVuIGluc3RhbGwgRFBESyBhbmQgdGhlbiBpbnN0YWxsIFVIRD88L3A+Cgo8L2Jsb2NrcXVvdGU+

------=_Part_43597_1698119767.1687686969550--

--===============0525854238044274412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0525854238044274412==--
