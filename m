Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3D524B8F7
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 13:36:37 +0200 (CEST)
Received: from [::1] (port=40000 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8irz-0007Eb-5U; Thu, 20 Aug 2020 07:36:35 -0400
Received: from f704.i.mail.ru ([128.140.169.192]:45772)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <www2008_2@mail.ru>) id 1k8iru-000785-OD
 for usrp-users@lists.ettus.com; Thu, 20 Aug 2020 07:36:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
 s=mail2; 
 h=References:In-Reply-To:Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:Cc:To:From;
 bh=MpNdySvMKyLVkAA5NKtb5PMjiGgiK/5MWXxGel6Ns7A=; 
 b=YGpvoagwMghjsaRb8+Znk9zjjYw/nG3albRHUMJm/dVNSXP/ivxrfPrfUgnHpqmuHFXsQ7IRAZlwEzCX0pLIla5liE+QTiv6USxh72Ry3gW2vzsjRgCsbKM5MBOaZkihi6HYC1hCSyHn/GMdyTteiRynQshajUCFcqiz75PTDFc=;
Received: by f704.i.mail.ru with local (envelope-from <www2008_2@mail.ru>)
 id 1k8irE-0002YH-HR; Thu, 20 Aug 2020 14:35:48 +0300
Received: by e.mail.ru with HTTP;
	Thu, 20 Aug 2020 14:35:48 +0300
To: =?UTF-8?B?TWFyY3VzIEQgTGVlY2g=?= <patchvonbraun@gmail.com>
Cc: =?UTF-8?B?VXNycC11c2Vycw==?= <usrp-users@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: Mail.Ru Mailer 1.0
Date: Thu, 20 Aug 2020 14:35:48 +0300
X-Priority: 3 (Normal)
Message-ID: <1597923348.315197297@f704.i.mail.ru>
In-Reply-To: <A6BA5BE9-A672-4C5A-9759-FB800B28F264@gmail.com>
References: <1597871801.345803208@f507.i.mail.ru>
 <A6BA5BE9-A672-4C5A-9759-FB800B28F264@gmail.com>
Authentication-Results: f704.i.mail.ru; auth=pass smtp.auth=www2008_2@mail.ru
 smtp.mailfrom=www2008_2@mail.ru
X-7564579A: 646B95376F6C166E
X-77F55803: 119C1F4DF6A9251C486602A66260CCB9AFF384BFEA812471D736C5B2E97A73E38FD872164937FA4C35DAAAC89C4B35721C304DD3E1F95D6428720D1694D21C32D0ABD9575FFF631F
X-7FA49CB5: 70AAF3C13DB7016878DA827A17800CE792BE6E174CF8D759B5C8C57E37DE458B7ECB26F6F819F3F58638F802B75D45FFA18204E546F3947C093C2F12201C912AAC83A81C8FD4AD23E2E44EFD321A7F275571747095F342E85644E22E05AA81AEE6DE07D961CB05C20AC5B80A05675ACD6CEA61CADDE926D952120BFB3F63BC1840A5AABA2AD371197C6FB206A91F05B2944BCA4AF8996D02628578F2E5BD58883896EE2C32233946D2E47CDBA5A9658378DA827A17800CE709B92020B71E24959FA2833FD35BB23DF004C90652538430B5A2CE51C9BA1AE293EC92FD9297F6718AA50765F7900637F42730888E86278DA7F4EDE966BC389F395957E7521B51C24C7702A67D5C33162DBA43225CD8A89F890A246B268E114E42539A7722CA490CB5C8C57E37DE458B4C7702A67D5C3316FA3894348FB808DBA1CE242F1348D5363B503F486389A921A5CC5B56E945C8DA
X-C8649E89: E7F179E53ED6705CAE419691CD360B1681D4F26FA0834D8ADE3CA19DFEE582DB93144F7A503CD80B
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5+wYjsrrSY/u8Y3PrTqANeitKFiSd6Yd7yPpbiiZ/d5BsxIjK0jGQgCHUM3Ry2Lt2G3MDkMauH3h0dBdQGj+BB/iPzQYh7XS329fgu+/vnDhZqSVEcwWLKFpwx2KrjqGvg==
X-Mailru-MI: 800
X-Mailru-Sender: 52DCB9B128D398EB1BE0C6CEF6333CEC57595458A811E6A91C304DD3E1F95D64B47B10D461E40A577326B261E47C33357903AA853BEC14D6D848F695D5A7BE1BF6989F9D090B0B91560353A9654834529B9FE91371BF28445FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-Spam: undefined
Subject: Re: [USRP-users] 
 =?utf-8?q?B200mini_vs_B205mini_-_is_there_any_perfo?=
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
Content-Type: multipart/mixed; boundary="===============5637328892559189206=="
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


--===============5637328892559189206==
Content-Type: multipart/alternative;
	boundary="--ALT--4280cF6f33aCB40891Fc362dE04fE8aF1597923348"


----ALT--4280cF6f33aCB40891Fc362dE04fE8aF1597923348
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

Ck1hcmN1cywKwqAKVGhhbmtzIGZvciB0aGUgYW5zd2VyLiBJIGxvb2sgYXQgdGhlIHN0b2NrwqBG
UEdBIGltYWdlc8KgYW5kIEIyMDVtaW5p4oCZcyBmaWxlIGlzIGFsbW9zdCB0d2ljZSBsYXJnZXIu
IEFyZSB0aGV5wqBhY3R1YWxseSB0aGUgc2FtZSBieSBmdW5jdGlvbmFsaXR5L3Jlc291cmNlcyB1
c2VkIGJ5IHN0b2NrIGltYWdlLMKgb3LCoDIwNSBoYXMgc29tZSBtb3JlIGJ1ZmZlcnMgb3Igc29t
ZXRoaW5nIGxpa2UgdGhhdD8KwqAKVmxhZGltaXIKwqAgCj7Qp9C10YLQstC10YDQsywgMjAg0LDQ
stCz0YPRgdGC0LAgMjAyMCwgMDoyNCArMDM6MDAg0L7RgiBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2
b25icmF1bkBnbWFpbC5jb20+Ogo+wqAKPlRoZSBGUEdBIG9uIHRoZSBCMjA1IGlzIGxhcmdlciBh
bmQgYWxzbyBoYXMgdGhlIGV4dGVuZGVkIGluZHVzdHJpYWwgdGVtcGVyYXR1cmUgcmFuZ2UuIEJ1
dCBhcGFydCBmcm9tIHRoYXQgdGhleSBhcmUgaWRlbnRpY2FsLgo+Cj5TZW50IGZyb20gbXkgaVBo
b25lCj7CoAo+PiBPbiBBdWcgMTksIDIwMjAsIGF0IDU6MTcgUE0sIFZsYWRpbWlyIHZpYSBVU1JQ
LXVzZXJzIDwgdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPiB3cm90ZToKPj4KPj4KPj4gSGVs
bG8hCj4+Cj4+IElzIHRoZXJlIGFueSBwZXJmb3JtYW5jZSBkaWZmZXJlbmNlIGJldHdlZW4gc3Vi
amVjdHMgaWYgd2XigJlyZSBnb2luZyB0byB1c2Ugc3RvY2sgZnBnYSBmaXJtd2FyZT8gSSBzZWUg
dGhhdCBCMjA1bWluaSBoYXMgdHdpY2UgbGFyZ2VyIGZwZ2EsIGJ1dCBkb2VzIGl0IHJlYWxseSBp
bmZsdWVuY2UgcGVyZm9tYW5jZS9jYXBhYmlsaXRpZXMgYW5kIGhvdz8gQXJlIHRoZXJlIGFueSBv
dGhlciBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoZW0/IElzIEIyMDBtaW5pIGluIHNvbWUgd2F5IGxp
bWl0ZWQgaW4gY29tcGFyaXNvbiB0byBCMjA1bWluaSwgaWYgd2XigJlyZSBub3QgZ29pbmcgdG8g
Zm9yZ2Ugb3VyIG93biBmcGdhIGZ3IGZvciBpdD8gV2UgYXJlIHNwZWFraW5nIGFib3V0IHNvbWUg
cmVndWxhciBzdHJlYW0tYmFzZWQgc2RyIGFwcGxpY2F0aW9ucyBsaWtlIGV4cGVyaW1lbnRhbCBn
c20tdW10cy1sdGUgc2V0dXBzIHdpdGggc2FtcGxpbmcgcmF0ZXMgdXAgdG8gfjE1LTIwIE1TcHMu
IEN1cnJlbnRseSB3ZSBoYXZlIGRvbmUgc29tZSBleHBlcmltZW50cyB3aXRoIEIyMDVtaW5pLCBh
bmQgbmVlZCBtb3JlIGJvYXJkcywgc28gd2UgbmVlZCB0byB1bmRlcnN0YW5kIGlmIEIyMDBtaW5p
IHdvdWxkIHN1ZmZpY2UuCj4+Cj4+IFRoYW5rIHlvdSwKPj4gVmxhZGltaXIgUGF2bGVua28KPj4K
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4gIFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+
ICBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20gCsKgCsKgCsKgCsKg

----ALT--4280cF6f33aCB40891Fc362dE04fE8aF1597923348
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

CjxIVE1MPjxCT0RZPjxkaXY+PGRpdj5NYXJjdXMsPC9kaXY+PGRpdj4mbmJzcDs8L2Rpdj48ZGl2
PlRoYW5rcyBmb3IgdGhlIGFuc3dlci4gSSBsb29rIGF0IHRoZSBzdG9jayZuYnNwO0ZQR0EgaW1h
Z2VzJm5ic3A7YW5kIEIyMDVtaW5p4oCZcyBmaWxlIGlzIGFsbW9zdCB0d2ljZSBsYXJnZXIuIEFy
ZSB0aGV5Jm5ic3A7YWN0dWFsbHkgdGhlIHNhbWUgYnkgZnVuY3Rpb25hbGl0eS9yZXNvdXJjZXMg
dXNlZCBieSBzdG9jayBpbWFnZSwmbmJzcDtvciZuYnNwOzIwNSBoYXMgc29tZSBtb3JlIGJ1ZmZl
cnMgb3Igc29tZXRoaW5nIGxpa2UgdGhhdD88L2Rpdj48ZGl2PiZuYnNwOzwvZGl2PjxkaXY+Vmxh
ZGltaXI8YnI+Jm5ic3A7PC9kaXY+PGJsb2NrcXVvdGUgc3R5bGU9ImJvcmRlci1sZWZ0OjFweCBz
b2xpZCAjMDg1N0E2OyBtYXJnaW46MTBweDsgcGFkZGluZzowIDAgMCAxMHB4OyI+0KfQtdGC0LLQ
tdGA0LMsIDIwINCw0LLQs9GD0YHRgtCwIDIwMjAsIDA6MjQgKzAzOjAwINC+0YIgTWFyY3VzIEQg
TGVlY2ggJmx0O3BhdGNodm9uYnJhdW5AZ21haWwuY29tJmd0Ozo8YnI+Jm5ic3A7PGRpdiBpZD0i
Ij48ZGl2IGNsYXNzPSJqcy1oZWxwZXIganMtcmVhZG1zZy1tc2ciPjxzdHlsZSB0eXBlPSJ0ZXh0
L2NzcyI+PC9zdHlsZT48ZGl2PjxkaXYgaWQ9InN0eWxlXzE1OTc4NzIyNzYyMDA2NjAyNzgwX0JP
RFkiPlRoZSBGUEdBIG9uIHRoZSBCMjA1IGlzIGxhcmdlciBhbmQgYWxzbyBoYXMgdGhlIGV4dGVu
ZGVkIGluZHVzdHJpYWwgdGVtcGVyYXR1cmUgcmFuZ2UuIEJ1dCBhcGFydCBmcm9tIHRoYXQgdGhl
eSBhcmUgaWRlbnRpY2FsLjxicj48YnI+U2VudCBmcm9tIG15IGlQaG9uZTxicj4mbmJzcDs8ZGl2
IGNsYXNzPSJtYWlsLXF1b3RlLWNvbGxhcHNlIj4mZ3Q7IE9uIEF1ZyAxOSwgMjAyMCwgYXQgNTox
NyBQTSwgVmxhZGltaXIgdmlhIFVTUlAtdXNlcnMgJmx0OzxhIGhyZWY9Ii9jb21wb3NlP1RvPXVz
cnAlMmR1c2Vyc0BsaXN0cy5ldHR1cy5jb20iPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9h
PiZndDsgd3JvdGU6PGJyPiZndDs8YnI+Jmd0Ozxicj4mZ3Q7IEhlbGxvITxicj4mZ3Q7PGJyPiZn
dDsgSXMgdGhlcmUgYW55IHBlcmZvcm1hbmNlIGRpZmZlcmVuY2UgYmV0d2VlbiBzdWJqZWN0cyBp
ZiB3ZeKAmXJlIGdvaW5nIHRvIHVzZSBzdG9jayBmcGdhIGZpcm13YXJlPyBJIHNlZSB0aGF0IEIy
MDVtaW5pIGhhcyB0d2ljZSBsYXJnZXIgZnBnYSwgYnV0IGRvZXMgaXQgcmVhbGx5IGluZmx1ZW5j
ZSBwZXJmb21hbmNlL2NhcGFiaWxpdGllcyBhbmQgaG93PyBBcmUgdGhlcmUgYW55IG90aGVyIGRp
ZmZlcmVuY2VzIGJldHdlZW4gdGhlbT8gSXMgQjIwMG1pbmkgaW4gc29tZSB3YXkgbGltaXRlZCBp
biBjb21wYXJpc29uIHRvIEIyMDVtaW5pLCBpZiB3ZeKAmXJlIG5vdCBnb2luZyB0byBmb3JnZSBv
dXIgb3duIGZwZ2EgZncgZm9yIGl0PyBXZSBhcmUgc3BlYWtpbmcgYWJvdXQgc29tZSByZWd1bGFy
IHN0cmVhbS1iYXNlZCBzZHIgYXBwbGljYXRpb25zIGxpa2UgZXhwZXJpbWVudGFsIGdzbS11bXRz
LWx0ZSBzZXR1cHMgd2l0aCBzYW1wbGluZyByYXRlcyB1cCB0byB+MTUtMjAgTVNwcy4gQ3VycmVu
dGx5IHdlIGhhdmUgZG9uZSBzb21lIGV4cGVyaW1lbnRzIHdpdGggQjIwNW1pbmksIGFuZCBuZWVk
IG1vcmUgYm9hcmRzLCBzbyB3ZSBuZWVkIHRvIHVuZGVyc3RhbmQgaWYgQjIwMG1pbmkgd291bGQg
c3VmZmljZS48YnI+Jmd0Ozxicj4mZ3Q7IFRoYW5rIHlvdSw8YnI+Jmd0OyBWbGFkaW1pciBQYXZs
ZW5rbzxicj4mZ3Q7PGJyPiZndDs8YnI+Jmd0OyBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXzxicj4mZ3Q7IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0PGJyPiZn
dDsgPGEgaHJlZj0iL2NvbXBvc2U/VG89VVNSUCUyZHVzZXJzQGxpc3RzLmV0dHVzLmNvbSI+VVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPiZndDsgPGEgaHJlZj0iaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tPC9hPjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2
PjwvYmxvY2txdW90ZT4mbmJzcDs8ZGl2PiZuYnNwOzwvZGl2PjxkaXYgZGF0YS1zaWduYXR1cmUt
d2lkZ2V0PSJjb250YWluZXIiPjxkaXYgZGF0YS1zaWduYXR1cmUtd2lkZ2V0PSJjb250ZW50Ij48
ZGl2PiZuYnNwOzwvZGl2PjwvZGl2PjwvZGl2PjxkaXY+Jm5ic3A7PC9kaXY+PC9kaXY+PC9CT0RZ
PjwvSFRNTD4K

----ALT--4280cF6f33aCB40891Fc362dE04fE8aF1597923348--


--===============5637328892559189206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5637328892559189206==--

