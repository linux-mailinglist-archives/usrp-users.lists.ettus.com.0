Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6A2F1C7D
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2019 18:29:42 +0100 (CET)
Received: from [::1] (port=56548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSP7l-00033Y-6D; Wed, 06 Nov 2019 12:29:41 -0500
Received: from smtp07.smtpout.orange.fr ([80.12.242.129]:46089
 helo=smtp.smtpout.orange.fr)
 by mm2.emwd.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92) (envelope-from <olivier.ravard@novagrid.com>)
 id 1iSP7h-0002w9-6a
 for usrp-users@lists.ettus.com; Wed, 06 Nov 2019 12:29:37 -0500
Received: from [192.168.1.21] ([81.250.184.13]) by mwinf5d42 with ME
 id NhUu2100S0HlroZ03hUv6Z; Wed, 06 Nov 2019 18:28:55 +0100
X-ME-Helo: [192.168.1.21]
X-ME-Auth: Y2hyaXN0aWFuZS5yYXZhcmRAd2FuYWRvby5mcg==
X-ME-Date: Wed, 06 Nov 2019 18:28:55 +0100
X-ME-IP: 81.250.184.13
To: Marcus D Leech <patchvonbraun@gmail.com>
References: <978d5f24-1129-7f41-1a63-9e219b0f2fee@novagrid.com>
 <DC77B03C-58E3-4BD9-81AA-750F82B2C917@gmail.com>
Openpgp: preference=signencrypt
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
Message-ID: <6377ea27-7921-8d88-c40e-d9f202d39b05@novagrid.com>
Date: Wed, 6 Nov 2019 18:28:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <DC77B03C-58E3-4BD9-81AA-750F82B2C917@gmail.com>
Subject: Re: [USRP-users] TwinRx transfert function
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============1373128242932118667=="
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
--===============1373128242932118667==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="SsKEwqPT1mjLUEmfnvJF6xd9o6ARq67aO"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SsKEwqPT1mjLUEmfnvJF6xd9o6ARq67aO
Content-Type: multipart/mixed; boundary="2swRvRYIrZYYjdw3KiIq3fR7JTgEf7R03";
 protected-headers="v1"
From: Olivier Ravard <olivier.ravard@novagrid.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Message-ID: <6377ea27-7921-8d88-c40e-d9f202d39b05@novagrid.com>
Subject: Re: [USRP-users] TwinRx transfert function
References: <978d5f24-1129-7f41-1a63-9e219b0f2fee@novagrid.com>
 <DC77B03C-58E3-4BD9-81AA-750F82B2C917@gmail.com>
In-Reply-To: <DC77B03C-58E3-4BD9-81AA-750F82B2C917@gmail.com>

--2swRvRYIrZYYjdw3KiIq3fR7JTgEf7R03
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-IE

1. The tune frequency is 1200 MHz in this case but we obtain same order o=
f magnitude
for fluctuations if another frequency is tuned (but transfert function co=
uld be different).
Our tests includes L band acquisitions (950 - 2150 MHz).

2. The gain in this case is set in order to have 15 dB backoff (which is =
margin relative
to the
maximum ADC amplitude). In this case, we use 85dB gain because the noise =
generator gives
a level around -135 dBm/Hz. But we observed the same things when we sampl=
e satellite
signals using 65dB gain.

3. what do you mean by "overruns".

regards,

Olivier=20

Le 06/11/2019 =C3=A0 17:59, Marcus D Leech a =C3=A9crit=C2=A0:
> That is more passband ripple than I would expect.=C2=A0
>
> What is your tunes frequency. What gain setting? Are you getting overru=
ns during the
> measurement?
>
>
> Sent from my iPhone
>
>> On Nov 6, 2019, at 6:32 AM, Olivier Ravard via USRP-users <usrp-users@=
lists.ettus.com>
>> wrote:
>>
>> =EF=BB=BF
>>
>> Hello,
>>
>> We use X300 with 2 TwinRx boards for acquisitions in L band (UHD 3.10.=
3).
>>
>> It seems that the transfert function of the couple (X300 - TwinRx) sho=
ws strong
>> fluctuations.
>> To measure these fluctuations, we put a white noise generator at the i=
nput (this
>> generator was
>> measured before with a spectrum analyser and it show a very flat trans=
fert function
>> over 1 GHz)
>> and we measure the PSD of the sampled 80MHz bw signal for the 4 inputs=
=2E
>>
>> The result is shown on figures below:
>>
>> inputs 1 and 2 (first TwinRx):
>>
>> <bbhnehmblikapiem.png>
>> <fpnpgddncnklhkma.png>
>>
>> inputs 3 and 4 (second TwinRx):
>>
>> <lfkojlkpiadfgnml.png>
>> <bnokbonaahldkokn.png>
>>
>> Are these fluctuations normal ?
>>
>> regards,
>>
>> --=20
>> Olivier
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--2swRvRYIrZYYjdw3KiIq3fR7JTgEf7R03--

--SsKEwqPT1mjLUEmfnvJF6xd9o6ARq67aO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEo6IEs2M8HtVrgPe4EOMi5QXctI0FAl3DAtYACgkQEOMi5QXc
tI1aLAf9E19C45axrDXGM1LSAr73pMrJ30Zmt+8Enpc/9NHyv01Dvz65gJhWnABH
CxHGCq4qlKtORV776JSvxVtu5u2MRmGngT+skgLgDW4EbVQ54fYOQfmLZaFs6P+r
suOYVGbHfsWc6QiWCnAYCKdNYq5dpvPgHRIINUUQRIW3lQ4Xf19uKgt5h99R/H6N
nXjYkujYflX70d5+CmFXRM66AjhOpK5ookfnpuOxB1ZqFriasKdINvHoFnF06WOn
pDcimPaDGOPQ8WX0WpMwgf4jMGcfEOD9V6mHp672dlkKrb7B8t0aPmAUa6dPnFSe
DIwRCdsAvLgaOmWqgb66lmxGUhrEoA==
=UfLW
-----END PGP SIGNATURE-----

--SsKEwqPT1mjLUEmfnvJF6xd9o6ARq67aO--


--===============1373128242932118667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1373128242932118667==--

