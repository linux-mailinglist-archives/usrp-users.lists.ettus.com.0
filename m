Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 486FD15055D
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2020 12:37:35 +0100 (CET)
Received: from [::1] (port=42628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iya2m-0002rZ-8E; Mon, 03 Feb 2020 06:37:32 -0500
Received: from smtp12.smtpout.orange.fr ([80.12.242.134]:30440
 helo=smtp.smtpout.orange.fr)
 by mm2.emwd.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92) (envelope-from <olivier.ravard@novagrid.com>)
 id 1iya2i-0002hX-Bh
 for usrp-users@lists.ettus.com; Mon, 03 Feb 2020 06:37:28 -0500
Received: from pc114.home ([90.32.50.240]) by mwinf5d35 with ME
 id yBcm2100K5AwZbN03Bcmwr; Mon, 03 Feb 2020 12:36:47 +0100
X-ME-Helo: pc114.home
X-ME-Auth: Y2hyaXN0aWFuZS5yYXZhcmRAd2FuYWRvby5mcg==
X-ME-Date: Mon, 03 Feb 2020 12:36:47 +0100
X-ME-IP: 90.32.50.240
To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>,
 Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
References: <4964800f-842c-e3f0-4969-3e48b93b0975@novagrid.com>
 <3c5972f65acf079e9d16fbbfd39a169f79979d32.camel@ettus.com>
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
Message-ID: <7802e95a-d7eb-2c88-62e3-aae06d541b24@novagrid.com>
Date: Mon, 3 Feb 2020 12:36:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <3c5972f65acf079e9d16fbbfd39a169f79979d32.camel@ettus.com>
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
Content-Type: multipart/mixed; boundary="===============3066240061969025838=="
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
--===============3066240061969025838==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="aBfasWhaPhNn7VrPQBkMU9nklnPZseK50"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--aBfasWhaPhNn7VrPQBkMU9nklnPZseK50
Content-Type: multipart/mixed; boundary="6voLK6uNmzFnjvsAORc78LdwSIzcjJBCn"

--6voLK6uNmzFnjvsAORc78LdwSIzcjJBCn
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64
Content-Language: en-US

VGhlIGdyZWVuIGxlZCBhdCB0aGUgYmFjayBvZiB0aGUgZGV2aWNlIChwb3J0IDEpIGlzIG9u
IGFuZCB0aGUgc2Vjb25kIG9uIChvcmFuZ2UpIGJsaW5rCnNvbWUgdGltZXMuClRoZSAibGlu
ayIgbGVkIGF0IHRoZSBmcm9udCBvZiB0aGUgZGV2aWNlIG5vdCBibGluay4KClRoZSByZXN1
bHQgb2YgZXRodG9vbCBvbiB0aGUgbGludXggbWFjaGluZSBmb3IgdGhpcyBpbnRlcmZhY2Ug
aXMgdGhlIGZvbGxvd2luZzoKCgrCoMKgwqDCoMKgwqDCoCBTdXBwb3J0ZWQgcG9ydHM6IFsg
VFAgXQrCoMKgwqDCoMKgwqDCoCBTdXBwb3J0ZWQgbGluayBtb2RlczrCoMKgIDEwMDBiYXNl
VC9GdWxsCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDEwMDAwYmFzZVQvRnVsbArCoMKgwqDCoMKgwqDCoCBTdXBwb3J0
ZWQgcGF1c2UgZnJhbWUgdXNlOiBTeW1tZXRyaWMgUmVjZWl2ZS1vbmx5CsKgwqDCoMKgwqDC
oMKgIFN1cHBvcnRzIGF1dG8tbmVnb3RpYXRpb246IFllcwrCoMKgwqDCoMKgwqDCoCBTdXBw
b3J0ZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKwqDCoMKgwqDCoMKgwqAgQWR2ZXJ0aXNl
ZCBsaW5rIG1vZGVzOsKgIDEwMDBiYXNlVC9GdWxsCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEwMDAwYmFzZVQvRnVs
bArCoMKgwqDCoMKgwqDCoCBBZHZlcnRpc2VkIHBhdXNlIGZyYW1lIHVzZTogU3ltbWV0cmlj
CsKgwqDCoMKgwqDCoMKgIEFkdmVydGlzZWQgYXV0by1uZWdvdGlhdGlvbjogWWVzCsKgwqDC
oMKgwqDCoMKgIEFkdmVydGlzZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKwqDCoMKgwqDC
oMKgwqAgU3BlZWQ6IDEwMDBNYi9zCsKgwqDCoMKgwqDCoMKgIER1cGxleDogRnVsbArCoMKg
wqDCoMKgwqDCoCBQb3J0OiBUd2lzdGVkIFBhaXIKwqDCoMKgwqDCoMKgwqAgUEhZQUQ6IDEy
CsKgwqDCoMKgwqDCoMKgIFRyYW5zY2VpdmVyOiBpbnRlcm5hbArCoMKgwqDCoMKgwqDCoCBB
dXRvLW5lZ290aWF0aW9uOiBvbgrCoMKgwqDCoMKgwqDCoCBNREktWDogVW5rbm93bgrCoMKg
wqDCoMKgwqDCoCBTdXBwb3J0cyBXYWtlLW9uOiBnCsKgwqDCoMKgwqDCoMKgIFdha2Utb246
IGcKwqDCoMKgwqDCoMKgwqAgQ3VycmVudCBtZXNzYWdlIGxldmVsOiAweDAwMDAwMDAwICgw
KQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAKwqDCoMKgwqDCoMKgwqAgTGluayBkZXRlY3RlZDogeWVzCgpJdCBzZWVtcyB0
aGF0IG9ubHkgMTAwMCBNYi9zIGlzIG5lZ29jaWF0ZWQuCgpPbGl2aWVyIFJhdmFyZApOb3Zh
R3JpZCBTLkEuUy4KCkxlIDAzLzAyLzIwMjAgw6AgMTI6MjAsIE1hcmN1cyBNw7xsbGVyIGEg
w6ljcml0wqA6Cj4gSGkgT2xpdmllciwKPgo+IGFsbCB0aGlzIGlzIGJhc2ljYWxseSBzdGFu
ZGFyZCBFdGhlcm5ldCwgc28gaXQgKnNob3VsZCogd29yay4KPiBEbyB0aGUgbGluayBpbmRp
Y2F0b3IgTEVEcyBvbiB0aGUgVVNSUCBibGluaz8KPgo+IEJlc3QgcmVnYXJkcywKPiBNYXJj
dXMKPiBPbiBNb24sIDIwMjAtMDItMDMgYXQgMTI6MTQgKzAxMDAsIE9saXZpZXIgUmF2YXJk
IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+PiBIZWxsbywKPj4KPj4gSXMgaXQgcG9zc2libGUg
dG8gY29ubmVjdCBhIFgzMDAgZGV2aWNlIHRvIGEgMTBHYi9zIEJhc2VUIG5ldHdvcmsKPj4g
dXNpbmcgdGhlIFNGUCsgdG8gUko0NQo+PiBhZGFwdGF0b3IgPwo+Pgo+PiBJIGRvIHRoaXMg
dGVzdCBidXQgSSBhbSB1bmFibG1lIHRvIHBpbmcgdGhlIGRldmljZSAodXNpbmcKPj4gMTky
LjE2OC40MC4yIGlwIG9uIHBvcnQgMSkKPj4KPj4gcmVnYXJkcywKPj4KPj4gT2xpdmllcgo+
Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20K

--6voLK6uNmzFnjvsAORc78LdwSIzcjJBCn--

--aBfasWhaPhNn7VrPQBkMU9nklnPZseK50
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEo6IEs2M8HtVrgPe4EOMi5QXctI0FAl44Bc4ACgkQEOMi5QXc
tI1i/gf+NRytpTo27nFG6KCRM8w5zGpS2eaRKpSVAjzlCVKh+NF3lGGMa83lWSue
rMCjj8hUIUg6pInq6dXuvX0THuaUVNLeS7JVh9OpDS+MBgHErcSt+VEl4ysuwNaU
RjM2c37XFgj+urr33NiGb/c20mwYNboVeM/Syj4Rf+6O+vXeSnNIAc6Wt+6LXh6z
Vk3r+Ek08sRE6EyY4sFWb/E3/9z149b63boYfXtOme9T0/mfH0V5fFIUO8ZlVtar
YfptXCPFO689kU7F5WIPCKhw1GiMjl5sP4+xl5lQZbVjTMGpog0Huapz4kgEXGid
TvxzYLWE2UtV9GzSiD0wcBeSnC96zg==
=Uk82
-----END PGP SIGNATURE-----

--aBfasWhaPhNn7VrPQBkMU9nklnPZseK50--


--===============3066240061969025838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3066240061969025838==--

