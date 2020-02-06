Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E116154066
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2020 09:37:53 +0100 (CET)
Received: from [::1] (port=60038 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izcfT-0005mL-Ux; Thu, 06 Feb 2020 03:37:47 -0500
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]:57304
 helo=smtp.smtpout.orange.fr)
 by mm2.emwd.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92) (envelope-from <olivier.ravard@novagrid.com>)
 id 1izcfQ-0005iX-3e
 for usrp-users@lists.ettus.com; Thu, 06 Feb 2020 03:37:44 -0500
Received: from localhost.localdomain ([81.250.184.13]) by mwinf5d62 with ME
 id zLd12100R0HlroZ03Ld2Ju; Thu, 06 Feb 2020 09:37:02 +0100
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0aWFuZS5yYXZhcmRAd2FuYWRvby5mcg==
X-ME-Date: Thu, 06 Feb 2020 09:37:02 +0100
X-ME-IP: 81.250.184.13
To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>,
 "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <4964800f-842c-e3f0-4969-3e48b93b0975@novagrid.com>
 <3c5972f65acf079e9d16fbbfd39a169f79979d32.camel@ettus.com>
 <7802e95a-d7eb-2c88-62e3-aae06d541b24@novagrid.com>
 <5E384E46.9070604@gmail.com>
 <1a37b784-232a-1f7a-a1cd-6031ccc0f992@novagrid.com>
 <f6e720011a181b21ee3d95ca843ec5cb497c1f6f.camel@ettus.com>
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
Message-ID: <ef75ded2-16d0-603f-b098-640d78a54373@novagrid.com>
Date: Thu, 6 Feb 2020 09:37:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <f6e720011a181b21ee3d95ca843ec5cb497c1f6f.camel@ettus.com>
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
Content-Type: multipart/mixed; boundary="===============0889975637218045423=="
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
--===============0889975637218045423==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="nO0ZPhdHLjcUs6tBZXcGe6bAzrtSz4gQ9"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--nO0ZPhdHLjcUs6tBZXcGe6bAzrtSz4gQ9
Content-Type: multipart/mixed; boundary="G1wV5qk9KFjfxB23CRJYZSP5PASFHoEmV"

--G1wV5qk9KFjfxB23CRJYZSP5PASFHoEmV
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

an information: using a 10Gb/s SFP+ to RJ45 module,=C2=A0 it works.

Thanks for your help.

Olivier

Le 04/02/2020 =C3=A0 11:20, Marcus M=C3=BCller a =C3=A9crit=C2=A0:
> Ah, my bad, I was assuming you had a 10GBase-T SFP+ module. Sorry for
> the confusion.
> On Tue, 2020-02-04 at 09:26 +0100, Olivier Ravard via USRP-users wrote:=

>> Le 03/02/2020 =C3=A0 17:45, Marcus D. Leech via USRP-users a =C3=A9cri=
t :
>>> On 02/03/2020 06:36 AM, Olivier Ravard via USRP-users wrote:
>>>> The green led at the back of the device (port 1) is on and the
>>>> second on (orange) blink
>>>> some times.
>>>> The "link" led at the front of the device not blink.
>>>>
>>>> The result of ethtool on the linux machine for this interface is
>>>> the following:
>>>>
>>>>
>>>>          Supported ports: [ TP ]
>>>>          Supported link modes:   1000baseT/Full
>>>>                                  10000baseT/Full
>>>>          Supported pause frame use: Symmetric Receive-only
>>>>          Supports auto-negotiation: Yes
>>>>          Supported FEC modes: Not reported
>>>>          Advertised link modes:  1000baseT/Full
>>>>                                  10000baseT/Full
>>>>          Advertised pause frame use: Symmetric
>>>>          Advertised auto-negotiation: Yes
>>>>          Advertised FEC modes: Not reported
>>>>          Speed: 1000Mb/s
>>>>          Duplex: Full
>>>>          Port: Twisted Pair
>>>>          PHYAD: 12
>>>>          Transceiver: internal
>>>>          Auto-negotiation: on
>>>>          MDI-X: Unknown
>>>>          Supports Wake-on: g
>>>>          Wake-on: g
>>>>          Current message level: 0x00000000 (0)
>>>>                                         Link detected: yes
>>>>
>>>> It seems that only 1000 Mb/s is negociated.
>>>>
>>>> Olivier Ravard
>>>> NovaGrid S.A.S.
>>>>
>>> What type of SFP-to-RJ45 module do you have?  Are you sure that it
>>> is designed for
>>> 10GBaseT?  What type of cable are you using?
>> I am using the SFP-to-RJ45 module provided by ettus. It seems that it
>> is specified only
>> for 1GB/s. I will test with
>> better adaptators.
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--G1wV5qk9KFjfxB23CRJYZSP5PASFHoEmV--

--nO0ZPhdHLjcUs6tBZXcGe6bAzrtSz4gQ9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEo6IEs2M8HtVrgPe4EOMi5QXctI0FAl470C0ACgkQEOMi5QXc
tI2Y9ggAgEfN772WTl61NUZV/ijfVCXoUwDQrBhnpSmDbbrtJzfDZNT6PLmnPHwP
yyi3OZDqLHRa1f3Z4OCv+qKlE1qlw8L8f665aSGet6Bj0+sxmyAXTMlZlSF03pXQ
FTHIlcoyFXdGO0BVoaHdOqLu1ppAxOlbE/8IH4JHaT9xcKaaact3vjINT8uzc5FL
gT2vfutQdNkkswBB3xda9n57lN+IxlR2+uInEQo7w5gvSBH3b5l46wFyrmJZuMNm
ltS7k0+47nZy6Sh3P8eVul14yc6mldyeHXI+gTWLzbh8W/3jSoyaKMBQn4VlTawq
S0C7KsvZ6AesYlRAe1i+AE/CJZ3f9Q==
=YQOe
-----END PGP SIGNATURE-----

--nO0ZPhdHLjcUs6tBZXcGe6bAzrtSz4gQ9--


--===============0889975637218045423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0889975637218045423==--

