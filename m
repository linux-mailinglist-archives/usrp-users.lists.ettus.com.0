Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A7D24A855
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 23:17:32 +0200 (CEST)
Received: from [::1] (port=34266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8VSa-0002b6-KC; Wed, 19 Aug 2020 17:17:28 -0400
Received: from f507.i.mail.ru ([217.69.138.174]:60172)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <www2008_2@mail.ru>) id 1k8VSW-0002VN-1Q
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 17:17:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
 s=mail2; 
 h=References:In-Reply-To:Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:To:From;
 bh=bb5m1ma7kJmgrX/qN12M4AFOdC1WVYh0/NLAYgpCwcU=; 
 b=nekVMh8Gv8HQVNh/dC2AahrgaKMJtAw2IzHH2JdV/rEF11Cafn8e3gDWfNiVqyJGroKmSTCAMarGJvufbZSVnK74AqkGjjTWxRV8lP4Vhd+hQCmXaGnx2H3HWQFOuFkfVDke+LGfvvAe9cfIQOMaVBiR3lZvBHEs5KzDY4B1YWs=;
Received: by f507.i.mail.ru with local (envelope-from <www2008_2@mail.ru>)
 id 1k8VRp-0005xU-RJ
 for usrp-users@lists.ettus.com; Thu, 20 Aug 2020 00:16:42 +0300
Received: by e.mail.ru with HTTP;
	Thu, 20 Aug 2020 00:16:41 +0300
To: =?UTF-8?B?VXNycC11c2Vycw==?= <usrp-users@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: Mail.Ru Mailer 1.0
Date: Thu, 20 Aug 2020 00:16:41 +0300
X-Priority: 3 (Normal)
Message-ID: <1597871801.345803208@f507.i.mail.ru>
In-Reply-To: <368905191.454211.1541332691544@mail.yahoo.com>
References: <671230503.522433.1540951708415.ref@mail.yahoo.com>
 <671230503.522433.1540951708415@mail.yahoo.com>
 <368905191.454211.1541332691544@mail.yahoo.com>
Authentication-Results: f507.i.mail.ru; auth=pass smtp.auth=www2008_2@mail.ru
 smtp.mailfrom=www2008_2@mail.ru
X-7564579A: 646B95376F6C166E
X-77F55803: 119C1F4DF6A9251C486602A66260CCB913FA313F63E2685DF983AC222683DBE88FD872164937FA4CB9B6C260416EABFA78A5C7B25DD49857F1F402BCA9ABA4122B2F3CD5530AE98B
X-7FA49CB5: 70AAF3C13DB7016878DA827A17800CE7E5C1C4142CF34B82D82A6BABE6F325AC08BE7437D75B48FABCF491FFA38154B613377AFFFEAFD2691661749BA6B977357633BACAB33B9508C2099A533E45F2D0395957E7521B51C2CFCAF695D4D8E9FCEA1F7E6F0F101C6778DA827A17800CE73F300A97FDD4E158EA1F7E6F0F101C674E70A05D1297E1BBC6CDE5D1141D2B1C70C99C693046F3EBD7ECF32C1EEE8C3DCDC6D5C88BDA8B229FA2833FD35BB23D9E625A9149C048EE33AC447995A7AD18F04B652EEC242312D2E47CDBA5A96583BD4B6F7A4D31EC0BB23A54CFFDBC96A8389733CBF5DBD5E9D5E8D9A59859A8B6A50BD5087FBFCDAACC7F00164DA146DA6F5DAA56C3B73B235C65C28F1120AF1175ECD9A6C639B01BC09775C1D3CA48CFAA8C68A3574AB3B435872C767BF85DA22EF20D2F80756B5F40A5AABA2AD3711975ECD9A6C639B01B78DA827A17800CE73D56AD9F5B48EAD3731C566533BA786A40A5AABA2AD371193C9F3DD0FB1AF5EBDFC194086D65061027F269C8F02392CD5571747095F342E88FB05168BE4CE3AF
X-C8649E89: A5B00D488A95602564533ADF58B715EE3CC609DCFCB1C754124703FD8917C6716F1B393238F07461
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5+wYjsrrSY/u8Y3PrTqANeitKFiSd6Yd7yPpbiiZ/d5BsxIjK0jGQgCHUM3Ry2Lt2G3MDkMauH3h0dBdQGj+BB/iPzQYh7XS329fgu+/vnDhPwI5/tqAtJ2boCI4nWhInw==
X-Mailru-MI: 800
X-Mailru-Sender: 583F1D7ACE8F49BD7671DBB7CED1AAB8FD66072FF00DF87A045F1C474F924D5684673A115BE41EA35EBEBB3ABBC44E6C29380EAE0A631D0ECD2FA4CCF068B30C267B947D52855106093DA5C00B83CE84A70212A2C03D28072CDDAC3485C1FF9A0DA7A0AF5A3A8387
X-Mras: Ok
X-Spam: undefined
Subject: [USRP-users] =?utf-8?q?B200mini_vs_B205mini_-_is_there_any_perfo?=
 =?utf-8?q?rmance_difference=3F?=
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Vladimir via USRP-users <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?VmxhZGltaXI=?= <www2008_2@mail.ru>
Content-Type: multipart/mixed; boundary="===============1094815005093012256=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============1094815005093012256==
Content-Type: multipart/alternative;
	boundary="--ALT--b7Ae43263690313C7C4c9bDf1F63cDf41597871801"


----ALT--b7Ae43263690313C7C4c9bDf1F63cDf41597871801
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

CkhlbGxvIQrCoApJcyB0aGVyZSBhbnnCoHBlcmZvcm1hbmNlIGRpZmZlcmVuY2UgYmV0d2VlbiBz
dWJqZWN0cyBpZiB3ZeKAmXJlwqBnb2luZyB0byB1c2Ugc3RvY2sgZnBnYSBmaXJtd2FyZT8gSSBz
ZWUgdGhhdCBCMjA1bWluaSBoYXMgdHdpY2XCoGxhcmdlciBmcGdhLCBidXQgZG9lcyBpdCByZWFs
bHkgaW5mbHVlbmNlIHBlcmZvbWFuY2UvY2FwYWJpbGl0aWVzwqBhbmQgaG93PyBBcmUgdGhlcmUg
YW55IG90aGVyIGRpZmZlcmVuY2VzIGJldHdlZW4gdGhlbT8gSXMgQjIwMG1pbmkgaW4gc29tZSB3
YXkgbGltaXRlZCBpbiBjb21wYXJpc29uIHRvIEIyMDVtaW5pLCBpZiB3ZeKAmXJlwqBub3QgZ29p
bmcgdG8gZm9yZ2Ugb3VywqBvd24gZnBnYSBmdyBmb3IgaXQ/wqBXZSBhcmUgc3BlYWtpbmcgYWJv
dXQgc29tZcKgcmVndWxhciBzdHJlYW0tYmFzZWTCoHNkcsKgYXBwbGljYXRpb25zwqBsaWtlIGV4
cGVyaW1lbnRhbMKgZ3NtLXVtdHMtbHRlIHNldHVwcyB3aXRoIHNhbXBsaW5nIHJhdGVzIHVwIHRv
IH4xNS0yMMKgTVNwcy4gQ3VycmVudGx5IHdlIGhhdmUgZG9uZSBzb21lIGV4cGVyaW1lbnRzIHdp
dGjCoEIyMDVtaW5pLCBhbmQgbmVlZCBtb3JlIGJvYXJkcywgc28gd2UgbmVlZCB0byB1bmRlcnN0
YW5kIGlmwqBCMjAwbWluaSB3b3VsZCBzdWZmaWNlLgrCoApUaGFuayB5b3UsClZsYWRpbWlyIFBh
dmxlbmtvCsKgCsKg

----ALT--b7Ae43263690313C7C4c9bDf1F63cDf41597871801
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

CjxIVE1MPjxCT0RZPjxkaXY+PGRpdj5IZWxsbyE8L2Rpdj48ZGl2PiZuYnNwOzwvZGl2PjxkaXY+
SXMgdGhlcmUgYW55Jm5ic3A7cGVyZm9ybWFuY2UgZGlmZmVyZW5jZSBiZXR3ZWVuIHN1YmplY3Rz
IGlmIHdl4oCZcmUmbmJzcDtnb2luZyB0byB1c2Ugc3RvY2sgZnBnYSBmaXJtd2FyZT8gSSBzZWUg
dGhhdCBCMjA1bWluaSBoYXMgdHdpY2UmbmJzcDtsYXJnZXIgZnBnYSwgYnV0IGRvZXMgaXQgcmVh
bGx5IGluZmx1ZW5jZSBwZXJmb21hbmNlL2NhcGFiaWxpdGllcyZuYnNwO2FuZCBob3c/IEFyZSB0
aGVyZSBhbnkgb3RoZXIgZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGVtPyBJcyBCMjAwbWluaSBpbiBz
b21lIHdheSBsaW1pdGVkIGluIGNvbXBhcmlzb24gdG8gQjIwNW1pbmksIGlmIHdl4oCZcmUmbmJz
cDtub3QgZ29pbmcgdG8gZm9yZ2Ugb3VyJm5ic3A7b3duIGZwZ2EgZncgZm9yIGl0PyZuYnNwO1dl
IGFyZSBzcGVha2luZyBhYm91dCBzb21lJm5ic3A7cmVndWxhciBzdHJlYW0tYmFzZWQmbmJzcDtz
ZHImbmJzcDthcHBsaWNhdGlvbnMmbmJzcDtsaWtlIGV4cGVyaW1lbnRhbCZuYnNwO2dzbS11bXRz
LWx0ZSBzZXR1cHMgd2l0aCBzYW1wbGluZyByYXRlcyB1cCB0byB+MTUtMjAmbmJzcDtNU3BzLiBD
dXJyZW50bHkgd2UgaGF2ZSBkb25lIHNvbWUgZXhwZXJpbWVudHMgd2l0aCZuYnNwO0IyMDVtaW5p
LCBhbmQgbmVlZCBtb3JlIGJvYXJkcywgc28gd2UgbmVlZCB0byB1bmRlcnN0YW5kIGlmJm5ic3A7
QjIwMG1pbmkgd291bGQgc3VmZmljZS48L2Rpdj48ZGl2PiZuYnNwOzwvZGl2PjxkaXY+VGhhbmsg
eW91LDwvZGl2PjxkaXY+VmxhZGltaXIgUGF2bGVua288L2Rpdj48ZGl2PiZuYnNwOzwvZGl2Pjxk
aXY+Jm5ic3A7PC9kaXY+PC9kaXY+PC9CT0RZPjwvSFRNTD4K

----ALT--b7Ae43263690313C7C4c9bDf1F63cDf41597871801--


--===============1094815005093012256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1094815005093012256==--

