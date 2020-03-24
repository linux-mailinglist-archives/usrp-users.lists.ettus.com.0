Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A647C191BF8
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 22:31:45 +0100 (CET)
Received: from [::1] (port=48436 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGr9B-0001k8-Bi; Tue, 24 Mar 2020 17:31:41 -0400
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]:29184
 helo=smtp.smtpout.orange.fr)
 by mm2.emwd.com with esmtps  (TLS1) tls TLS_DHE_RSA_WITH_AES_128_CBC_SHA
 (Exim 4.93) (envelope-from <olivier.ravard@novagrid.com>)
 id 1jGr97-0001eu-PP
 for usrp-users@lists.ettus.com; Tue, 24 Mar 2020 17:31:38 -0400
Received: from pc114.home ([90.32.182.7]) by mwinf5d88 with ME
 id JMWv2200E09yxsS03MWvvh; Tue, 24 Mar 2020 22:30:56 +0100
X-ME-Helo: pc114.home
X-ME-Auth: Y2hyaXN0aWFuZS5yYXZhcmRAd2FuYWRvby5mcg==
X-ME-Date: Tue, 24 Mar 2020 22:30:56 +0100
X-ME-IP: 90.32.182.7
To: usrp-users@lists.ettus.com
References: <0c03636e-f4d0-40ee-a85a-002d42937edf@novagrid.com>
 <5E7A3E71.2000200@gmail.com>
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
Message-ID: <b8d56579-909f-cd4f-0de8-b9e153127aef@novagrid.com>
Date: Tue, 24 Mar 2020 22:30:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5E7A3E71.2000200@gmail.com>
Subject: Re: [USRP-users] set_time_next_pps with X300
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
Content-Type: multipart/mixed; boundary="===============2454735674348292863=="
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
--===============2454735674348292863==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="SGtsjvyYAfeFHyfUmRglqrLwGvEpggyL8"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SGtsjvyYAfeFHyfUmRglqrLwGvEpggyL8
Content-Type: multipart/mixed; boundary="oogn299gRWkH6a6No7HqqNS6sYMhTs6z9"

--oogn299gRWkH6a6No7HqqNS6sYMhTs6z9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Sorry for this question but the problem is found: that was a cable from t=
he 1PPS source
which was broken...
To answer your question: it is a self made 1PPS/10MHz source with 10ns ac=
curacy.

regards,

olivier

Le 24/03/2020 =C3=A0 18:08, Marcus D. Leech via USRP-users a =C3=A9crit=C2=
=A0:
> On 03/24/2020 12:49 PM, Olivier Ravard via USRP-users wrote:
>> Hi,
>>
>> In order to synchronize several devices, We used to use an external PP=
S and 10MHz
>> reference and call set_next_time_pps.
>>
>> This works fine since many years using UHD 3.9 and N210. We recently u=
se X300 + TwinRx
>> using UHD 3.10.3 and it seems
>> that it does not work.
>>
>> It seems that set_time_next_pps has no effect because the metadata.tim=
e_spec of the
>> received streamed data always
>> corresponds to the delay from the usrp object creation.
>> Example:
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0 - during the synchro procedure:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 usrp.set_time_next_pps(time_spec_t(1585067798, 0.0))
>> =C2=A0=C2=A0=C2=A0=C2=A0 - during receiving data:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 rx_stream->recv(&buff_sc16.front(), buff_sc16.size(), md, 1.0);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 cout << "received date :" << md.time_spec.get_full_secs() << " " <<
>> md.time_spec.get_frac_secs() << endl;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 // this line prints "received date :74 0.778126" if the usrp object was
>> created since around 74 secs
>>
>> Does this function change its behavior ?
>>
>> thanks
>>
>> olivier
>>
>>
> What type of 1PPS source are you using?
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--oogn299gRWkH6a6No7HqqNS6sYMhTs6z9--

--SGtsjvyYAfeFHyfUmRglqrLwGvEpggyL8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEo6IEs2M8HtVrgPe4EOMi5QXctI0FAl56fA8ACgkQEOMi5QXc
tI1vmQf8Ckdht6mBwgQrVPGi6FHpgLwVvRTeYXzREp9d14nt5DqXberHKlkS57LB
1Wi3dscv4IcsoE8+Qcf4JvEQ++fY50iwlZjzlR6zT5XSyPP+JH3jH5OTgMLOX3z/
cYSwbrkrcWcPUu1UVxjmw+QlM/eeICdA11IhMrlzlzm3AVfMcaJ09RvzVj//rXev
EsmCfD150MSMPJlqWTd0jnVXV8Tuq4SHV/q6zokJ8hQ4dKoS8MdpYH0KNov1hTye
YaL70LukoCpoOUuzv2sMVg/yg/3S31SRkLiOpdZEUnIZV3XaiyhP0feBaFjcpcoe
IyGnSt8gb2gxAXxItOCyu6GSAMbUEQ==
=m5+m
-----END PGP SIGNATURE-----

--SGtsjvyYAfeFHyfUmRglqrLwGvEpggyL8--


--===============2454735674348292863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2454735674348292863==--

