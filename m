Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD821504F9
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2020 12:14:57 +0100 (CET)
Received: from [::1] (port=39130 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyZgt-0001lw-Qh; Mon, 03 Feb 2020 06:14:55 -0500
Received: from smtp12.smtpout.orange.fr ([80.12.242.134]:43346
 helo=smtp.smtpout.orange.fr)
 by mm2.emwd.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92) (envelope-from <olivier.ravard@novagrid.com>)
 id 1iyZgp-0001ey-HZ
 for usrp-users@lists.ettus.com; Mon, 03 Feb 2020 06:14:51 -0500
Received: from pc114.home ([90.32.50.240]) by mwinf5d35 with ME
 id yBE92100A5AwZbN03BE9EZ; Mon, 03 Feb 2020 12:14:10 +0100
X-ME-Helo: pc114.home
X-ME-Auth: Y2hyaXN0aWFuZS5yYXZhcmRAd2FuYWRvby5mcg==
X-ME-Date: Mon, 03 Feb 2020 12:14:10 +0100
X-ME-IP: 90.32.50.240
To: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
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
Message-ID: <4964800f-842c-e3f0-4969-3e48b93b0975@novagrid.com>
Date: Mon, 3 Feb 2020 12:14:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Subject: [USRP-users] X300 connecting 10Gb/s using baseT
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
Content-Type: multipart/mixed; boundary="===============1402499960736411995=="
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
--===============1402499960736411995==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="79AKLbwN3laRtSFN5CPfyS1wxCcOei7mR"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--79AKLbwN3laRtSFN5CPfyS1wxCcOei7mR
Content-Type: multipart/mixed; boundary="x77XGbPWcqV67l8wg7Y5iXddnqzLgFCRb"

--x77XGbPWcqV67l8wg7Y5iXddnqzLgFCRb
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello,

Is it possible to connect a X300 device to a 10Gb/s BaseT network using t=
he SFP+ to RJ45
adaptator ?

I do this test but I am unablme to ping the device (using 192.168.40.2 ip=
 on port 1)

regards,

Olivier



--x77XGbPWcqV67l8wg7Y5iXddnqzLgFCRb--

--79AKLbwN3laRtSFN5CPfyS1wxCcOei7mR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEo6IEs2M8HtVrgPe4EOMi5QXctI0FAl44AIEACgkQEOMi5QXc
tI0WOwf/dH9N/1cC6rr2iDx/tCLFe46Z0K+U/1bIoV/FKg/2jGtSuhKRSww7/03q
tBI5+19CfpOzGL5Vpqu41TVhYIgvCOOKo1kBHUQCUdFpzYq1OAO8C2Uwjg9ryqwC
1jz5Zzi3Kdf35DzcTRxrY5GOUKZ1lGhSp7hChi4y8ZAsB0haO6UmZjvWTJmI5CNp
FKEjpbS0FpP3DF4pH1nsnZRXSgT7pkagRPHuCM+pyVjccW4NrgRJ5PZDsQ6CQD14
K3kf/I7sL7DROQ/2PICKL/M4IVhy+qt/okEyifRomtEplaermq779TcEytU8Q6wD
gOfRmhV1poJm7ZoRZRZqS/jlz+ZkuQ==
=wqT8
-----END PGP SIGNATURE-----

--79AKLbwN3laRtSFN5CPfyS1wxCcOei7mR--


--===============1402499960736411995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1402499960736411995==--

