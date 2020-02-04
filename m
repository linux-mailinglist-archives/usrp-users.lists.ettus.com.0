Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B444C151709
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2020 09:27:43 +0100 (CET)
Received: from [::1] (port=37442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iytYZ-0008Nv-3K; Tue, 04 Feb 2020 03:27:39 -0500
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]:43658
 helo=smtp.smtpout.orange.fr)
 by mm2.emwd.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92) (envelope-from <olivier.ravard@novagrid.com>)
 id 1iytYU-0008JI-RT
 for usrp-users@lists.ettus.com; Tue, 04 Feb 2020 03:27:35 -0500
Received: from pc114.home ([90.32.50.240]) by mwinf5d58 with ME
 id yYSs2100F5AwZbN03YSse8; Tue, 04 Feb 2020 09:26:53 +0100
X-ME-Helo: pc114.home
X-ME-Auth: Y2hyaXN0aWFuZS5yYXZhcmRAd2FuYWRvby5mcg==
X-ME-Date: Tue, 04 Feb 2020 09:26:53 +0100
X-ME-IP: 90.32.50.240
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <4964800f-842c-e3f0-4969-3e48b93b0975@novagrid.com>
 <3c5972f65acf079e9d16fbbfd39a169f79979d32.camel@ettus.com>
 <7802e95a-d7eb-2c88-62e3-aae06d541b24@novagrid.com>
 <5E384E46.9070604@gmail.com>
Autocrypt: addr=olivier.ravard@novagrid.com; prefer-encrypt=mutual; keydata=
 mQENBFOZoNIBCACgxTvpz/Sw5h89QVOm048NN/oUpnQRhzEGH4l+ckDFY7v4h3wN43Dx8ami
 +Rc3JyqyOaQU0tTKFPesELckfm00NBLBv2FxbTcA05EI3zZRMHamEyigz2CK78Jolv/ydWFE
 HssruREi+ol7cswsKkoAxi6N5+OUmby6Bi6g3QuZkqQ3gVcpuaK7lNjd43rnF/V7keBfPfv+
 poqvfScPAE4PcgZ54uFEEBK+P7PaIs1j94Yn0C++LzA3s5g56Oad8U8ruoffLWSwZozY2C+i
 6iME3tD+QNHy08JWZlKIegL7nn74dRyvcjhOoT+yzur3Du7btw9qLjD6S/Cbk+SxpGYTABEB
 AAG0LE9saXZpZXIgUmF2YXJkIDxvbGl2aWVyLnJhdmFyZEBub3ZhZ3JpZC5jb20+iQE4BBMB
 AgAiAhsjBgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAUCV2k34AAKCRAQ4yLlBdy0jefHB/40
 uwjnt4PKpqFt29AhkG/u2DKmrwH837B7XLS3Ml03MmxB+F8EgmEAgZQElY9JNWMvZJGzlszz
 kFJ0dJMqIDp1+2v2Kv0gJwFG8HK5kXgFLwHR+T0WBJXzZ4YArgP7d4JZetoMZMEDHq7XyOTj
 HGUWDvhHdGIvgLPq+AabtMXXJCh9aALmPM8w/E8dQJ60SGRDE24kwUoJWm5p6xlsOx7DBj0v
 PpZcy2ows6eVgL8oyFFdyhQMkjlcbC51A3TlMdSRAphK2F/+HviqR/R/cGeKimHvQShbsD/7
 dwcT/Rxk9sm4oGSKVRr2/A9oJatmguQf92VhzohKlx0Kn/T6KJF3uQENBFOZoNIBCADAS/CX
 /9IegJKNtRZ1o5YDN+eCrQtdbXFJWIS4dPboyVTaJNv/G/1flQHbddKFjZ3UytxSB+mYVpuT
 t+z4ZFfoEp802RWlxo2K1wcQaSqf5kJ29AuX4PaT+/FdKkiABNUv9+kgN3vNhRyHqlhjCn8w
 RgvzbEzPiE5RFn0l7qf9zuc8z1qo8s/B/3WVbAKnJ8GmR7ODHJ4s9g95Ms4WwB+vhdN0dm5j
 /Rk2oOt4YIew3OsrsqaXQn4kPHc7L2eA87J6uuyxBisD4nuyakFzsHQN8Rim5di1g1QpXWPK
 VvSKFHlPNhVd1VZLPUY5WKCFOWZZiRNDQdI7kVKKa8WrRWc5ABEBAAGJAR8EGAECAAkCGwwF
 AldpN+AACgkQEOMi5QXctI1mfwf9F3a8HvD6oNmbOS4yOjBE2ZKp6oyKVOhU3W71hMab6Qcf
 OcdKGu4thm7EvfLE3lWjvaFS/nhPv8al9oLOfbin8nYLb88sHbKuxNdX6IRm4Gf4T88Ul6Ph
 k1zOO7G65uMXfCoA9XsxzwyM0cBZTApYR/bS5+iWlNh2+PhPYWI2ZfadA6eHwbKZ4dXibFuz
 l8Xcx9APaDmq3SZUNJElM/l3CiE6mURXjSpRDGN+MWBHFB9YKfC3A71Wd1cdvcf9sIsKDdDa
 F4CY4evZaWI1nUfSK27yr/wInKhZMbu7UHVf51dE8WLjLZAMi3hK+iG3yiTC4IgNYjR3y7yo
 rF52fiUwYA==
Message-ID: <1a37b784-232a-1f7a-a1cd-6031ccc0f992@novagrid.com>
Date: Tue, 4 Feb 2020 09:26:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5E384E46.9070604@gmail.com>
Subject: Re: [USRP-users] X300 connecting 10Gb/s using baseT
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Olivier Ravard via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Olivier Ravard <olivier.ravard@novagrid.com>
Content-Type: multipart/mixed; boundary="===============5192379243290074378=="
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5192379243290074378==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="B4SgQG1ipY9FM5LSwz4YKp1UTjDG24dUa"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--B4SgQG1ipY9FM5LSwz4YKp1UTjDG24dUa
Content-Type: multipart/mixed; boundary="PthFfZUTQjejQj6EzaUtVM4Px85VrtooT"

--PthFfZUTQjejQj6EzaUtVM4Px85VrtooT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64
Content-Language: en-US

CkxlIDAzLzAyLzIwMjAgw6AgMTc6NDUsIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2Vy
cyBhIMOpY3JpdMKgOgo+IE9uIDAyLzAzLzIwMjAgMDY6MzYgQU0sIE9saXZpZXIgUmF2YXJk
IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+PiBUaGUgZ3JlZW4gbGVkIGF0IHRoZSBiYWNrIG9m
IHRoZSBkZXZpY2UgKHBvcnQgMSkgaXMgb24gYW5kIHRoZSBzZWNvbmQgb24gKG9yYW5nZSkg
YmxpbmsKPj4gc29tZSB0aW1lcy4KPj4gVGhlICJsaW5rIiBsZWQgYXQgdGhlIGZyb250IG9m
IHRoZSBkZXZpY2Ugbm90IGJsaW5rLgo+Pgo+PiBUaGUgcmVzdWx0IG9mIGV0aHRvb2wgb24g
dGhlIGxpbnV4IG1hY2hpbmUgZm9yIHRoaXMgaW50ZXJmYWNlIGlzIHRoZSBmb2xsb3dpbmc6
Cj4+Cj4+Cj4+IMKgwqDCoMKgwqDCoMKgwqAgU3VwcG9ydGVkIHBvcnRzOiBbIFRQIF0KPj4g
wqDCoMKgwqDCoMKgwqDCoCBTdXBwb3J0ZWQgbGluayBtb2RlczrCoMKgIDEwMDBiYXNlVC9G
dWxsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgMTAwMDBiYXNlVC9GdWxsCj4+IMKgwqDCoMKgwqDCoMKgwqAg
U3VwcG9ydGVkIHBhdXNlIGZyYW1lIHVzZTogU3ltbWV0cmljIFJlY2VpdmUtb25seQo+PiDC
oMKgwqDCoMKgwqDCoMKgIFN1cHBvcnRzIGF1dG8tbmVnb3RpYXRpb246IFllcwo+PiDCoMKg
wqDCoMKgwqDCoMKgIFN1cHBvcnRlZCBGRUMgbW9kZXM6IE5vdCByZXBvcnRlZAo+PiDCoMKg
wqDCoMKgwqDCoMKgIEFkdmVydGlzZWQgbGluayBtb2RlczrCoCAxMDAwYmFzZVQvRnVsbAo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDEwMDAwYmFzZVQvRnVsbAo+PiDCoMKgwqDCoMKgwqDCoMKgIEFkdmVy
dGlzZWQgcGF1c2UgZnJhbWUgdXNlOiBTeW1tZXRyaWMKPj4gwqDCoMKgwqDCoMKgwqDCoCBB
ZHZlcnRpc2VkIGF1dG8tbmVnb3RpYXRpb246IFllcwo+PiDCoMKgwqDCoMKgwqDCoMKgIEFk
dmVydGlzZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKPj4gwqDCoMKgwqDCoMKgwqDCoCBT
cGVlZDogMTAwME1iL3MKPj4gwqDCoMKgwqDCoMKgwqDCoCBEdXBsZXg6IEZ1bGwKPj4gwqDC
oMKgwqDCoMKgwqDCoCBQb3J0OiBUd2lzdGVkIFBhaXIKPj4gwqDCoMKgwqDCoMKgwqDCoCBQ
SFlBRDogMTIKPj4gwqDCoMKgwqDCoMKgwqDCoCBUcmFuc2NlaXZlcjogaW50ZXJuYWwKPj4g
wqDCoMKgwqDCoMKgwqDCoCBBdXRvLW5lZ290aWF0aW9uOiBvbgo+PiDCoMKgwqDCoMKgwqDC
oMKgIE1ESS1YOiBVbmtub3duCj4+IMKgwqDCoMKgwqDCoMKgwqAgU3VwcG9ydHMgV2FrZS1v
bjogZwo+PiDCoMKgwqDCoMKgwqDCoMKgIFdha2Utb246IGcKPj4gwqDCoMKgwqDCoMKgwqDC
oCBDdXJyZW50IG1lc3NhZ2UgbGV2ZWw6IDB4MDAwMDAwMDAgKDApCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKg
wqDCoMKgwqDCoMKgIExpbmsgZGV0ZWN0ZWQ6IHllcwo+Pgo+PiBJdCBzZWVtcyB0aGF0IG9u
bHkgMTAwMCBNYi9zIGlzIG5lZ29jaWF0ZWQuCj4+Cj4+IE9saXZpZXIgUmF2YXJkCj4+IE5v
dmFHcmlkIFMuQS5TLgo+Pgo+IFdoYXQgdHlwZSBvZiBTRlAtdG8tUko0NSBtb2R1bGUgZG8g
eW91IGhhdmU/wqAgQXJlIHlvdSBzdXJlIHRoYXQgaXQgaXMgZGVzaWduZWQgZm9yCj4gMTBH
QmFzZVQ/wqAgV2hhdCB0eXBlIG9mIGNhYmxlIGFyZSB5b3UgdXNpbmc/CkkgYW0gdXNpbmcg
dGhlIFNGUC10by1SSjQ1IG1vZHVsZSBwcm92aWRlZCBieSBldHR1cy4gSXQgc2VlbXMgdGhh
dCBpdCBpcyBzcGVjaWZpZWQgb25seQpmb3IgMUdCL3MuIEkgd2lsbCB0ZXN0IHdpdGgKYmV0
dGVyIGFkYXB0YXRvcnMuCj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==

--PthFfZUTQjejQj6EzaUtVM4Px85VrtooT--

--B4SgQG1ipY9FM5LSwz4YKp1UTjDG24dUa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEo6IEs2M8HtVrgPe4EOMi5QXctI0FAl45KswACgkQEOMi5QXc
tI3diQf/WbLMMp2uGkV5xo5xp5gxV1eyl/1xJR1mYyVNXmDT6kBtkUZmCN0AH7jh
KHR+cblP7JVopi8rs8Ha7J5q4IFYZzEy2Np6gzmqQlTnBxPHsGboukn2IO0+jFhr
MsFzvkU4enLZB5fYtP/vIOHBmP9OJFwlxLaZt3boRPm9PeqXlPteTUOUEZuisJ6E
rsp1TAHvRjaHFPIDDd0NfKyifUSosw2R6w0QtzHOJ7zo1UqBLw+mQ5NESn9ZA819
lF29WKaLYYVIz+Y4iW/qkiyzSO2rSk9lQyTpUzTAYlsmBhPICeyvVf7qdVa4esH9
vyeaubAcNtQ+XxYyCXoHOmMDzQR6Aw==
=WwgT
-----END PGP SIGNATURE-----

--B4SgQG1ipY9FM5LSwz4YKp1UTjDG24dUa--


--===============5192379243290074378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5192379243290074378==--

