Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 405CA3FC89F
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 15:44:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 445B2383B46
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 09:44:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="gw4KRdu2";
	dkim-atps=neutral
Received: from sonic312-20.consmr.mail.bf2.yahoo.com (sonic312-20.consmr.mail.bf2.yahoo.com [74.6.128.82])
	by mm2.emwd.com (Postfix) with ESMTPS id 850D8383DDB
	for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 09:43:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630417420; bh=IcmfJMWXMTMKpx17ZO539LV4Puhqn9FwqyV8y+zknzg=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=gw4KRdu2ZNC7MnJxa/QtYGjPw0n2FJgsCn9pnLqtdqCG/CI1FynRlofeNvlZHZTGqBxhUlAnFV3jk46TuQeTSqysffJ8Eg/sGbUPD9hF7Yv2wIAYOGgU7Eer0nQDgjsI9jV8PWe87u4S4MH19HuW7Fe2pCu7Hy8Twr1X677C8yAnkYFSBd+VVirwuJ9Mg5dPThRHYb9FCrJ7pqA2bJWhzlNcL7ZjhEHovpeP+gKe5OhoStrh4sWVKJ/7Hba7JJ80JUGmUevMURqWmU/39hveujAx1P6mWp0AUA8jgm7RUKPn2wd7IWtfDLg3uBokEJqk5uNDKRg/AllEtwmYgXNgZQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630417420; bh=ee769t6bQ1Cxmk+Jnhd+OWUkXfLkAZOKZbGo2Stg/H5=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=mbZQ6rTJQ93UUqlMlQGIfiCXQqLsiNa1qFI2Mz8bk6DkcUhvh+wDHSLwcjfWqpA4LplfjUtY8apGGcKNyEh8R9XE9bVSCsUwQ9BakA6wy4bOhxjJQXp926vedtTp5P9V4xkkD65DP6gJ2KfUjukChE1l4nQHtwcxe5igD7CJfiE4ONoOXvYbVlJ1m/qtxM5Lzn6Nigcvf2dvKffZF40oVXHPUistkFfVae6Ka8NwtUIEO7afECI6GzTGoB51tNY/PfgiUSL0KcbKbR2vLwBKvodocuszkihv4MYWSWAYICPazfQJ89R6ymzuhfZxdtU99JImdaHnWmeSZeQhZR27Fw==
X-YMail-OSG: mg0HXOwVM1lfkBbMvoD_46PcLyD3Q5mhDQ4YX9t4PLVeR79vqvNiBXMNYHsXpmq
 i0jVLhY68LnsEaxBzUlCEmoZDlPx7wTlZIRr3CFMtrpkA5A0I.PiT1HmDNgrN5xdd15Av7o2u9sL
 8x6rGE74hOP9gKbABTLmT55Pb6jeAmrvHq1zGJ77Amzp.uZxTxY5hG3wWQsuswHzPpG2_iV99CxM
 xWYNSQlA2A6BUZzeDK40_MRYTn7ITx4ZM60zqEKvh32hZI1DMwV1PKDrpiO5KRTGjM0q2RqzRtcv
 w9WIhybC6oMKjvZmiTiqNht4renh6EQk9gA1igf2bBDRZ8q0EuMHzgFoNORTpWefElpGgr.741HF
 B7EX19.WqJgfDXKLo5bWFNfWnG6dNSaP03ywC_TUt4yVjQvjo2JPE5F5.0hzfVXK.aYkjUXdZ_Ig
 TkuCp4JEuL1pMW9qbsh1gUsg5cpEPrCbRkdC6GUNmKCVXgckrTmsYHYF5tASvx9T7PP5aUkluffn
 kjE.BTwwps1IkgsuxZim1qWyVutot2nyv2GnC3sL8f42ZqFgts1wpm6rXKrzboNJa_q_zrx6noLo
 Nty3EqlB.cZ54AKWSLbQqrubsRriVqWBSe.0LID7rwCWHmMTUtVYwZXK32hbjlBQBJMp13R0qa2L
 4U5jlDCjPWQs.rMvKg87xvjDjOvMqcY0KjSfYsZaCPxf08MnOUem8eb0R7FeUDUGppcBFdgZrpvX
 QH.yqtF2iMYbsaCYMHn4fQq9Miplq8PBgJ6LznyO0aIdUPcZZw.g7e7HiWoDry6GoZGPjGv63qNs
 i58ebhVny8ZOKIig1Cu.BqLE3QSE8RWoeXq2kJ0dXCU8gN1OUOZeY8BncSkRpc5o4C16j4m.zXX6
 S.0Pu5ftUeCPqVas_hTVKeGCM5EKwzzXhsi.55qHL5LfuhgN0Z.onkJaPzxaZzKGVNMdBJf83BgT
 lQAskJhQ1JllwmHJ6ic7AizGKj0KYdyjCvXivEY5MYsSSvde3koZWUmAT7qfDvQPyq2numQK2MDE
 fm0F2V91LGkMejD1ZFB1heJ.QXxyQH236s2Bi.Qa3htDrbuaa_VDgVVM33Z4LtxGuUD.lNEUFwc3
 0h2jsMhBwQUjb08YoGZLp6IJey5RB1r4KlsHWXFljmjSh2k5aRLt9fXfkXOluj85p9Y71_BHV2wR
 iEj1o67BP2GvgGl87Z_2HzsxLgA7o_XYjsTpP4_lGpKn0UXp_ZS6E80YF2iBoq0W.ICaofKQDEy8
 0Lmdv9wENYRWvHBEtZnfJ7mEKdnWRmXAwGcv627d_qHQJtbkFHrZBb6E.Fp6gUV9q7uizPW.s1dw
 YnKAkzMVBAiAJ0kbt5Utm17hgv5kQZWckR0DQD_z_ZJTQvQw1tid0k2SqWdPzvuxhHbT5frRBzpc
 kJ33m9nqm2Js9CEIkJpfxA2VYTjs9BvDRu27sv00S9iR4byhU2Q9KMI0okgsTqQEWVj7JHkyJnL5
 ExyTda9DKmi273fdA5hINav_xxdXEFD4yuBcW_Acx8Ho2vxBIPCMEYGjkkFgd.6D4vy7XVQWQm3i
 3LmaoMA6p2987u4deWG91QglWAyYYe2JbijueQwPmOrZ9z3GfeDEmPRTGkD5pbYfs5sDznfNmra_
 A9nvHwLa0co31sk8YKDcCkGd6XVKOhmx5NtFssKYW7mjf1L1fbgmR80kSxTaQnWF5psXyEj3dW_p
 c5BlhbO6zdb.ULq5c9G2cuRUkywJ9roriR21a8D2.W3JqWGm0HuWlAE.M7WWb9RYQy6CUfySQ5mx
 YR5iY5xnuKxVk36t0OB0YRL2_k4KJWW0evXpafIiN6fcCxxfeFpDCIa5lByp2.0JB3svYQJCeVh5
 3JD8xPDx1pLRK5.w3FdqfmQgiN2sGbJ249p76gbfiGl9nuQSGBwnEfhVGncr3ouo1mczj4fktPHU
 zMKq5EN.D1MulsAUfrZUxXgjaisrrzo5c4oX.xR4VnIMAej26PmUhY6.60nOxiLQa1vC4nD4kNmn
 36jBtx3J6PlZaulIX1763yfWSRJZoRTMRwdZtb95QNOiVHoMIxtlWCgDvhTEp1C_ym..vXj.473L
 QSbDjHkf5VEDAEHoAS5S4LIPuKei.4Gcc5XRZ.NFsJzQBOW7xBoPhQExv.1u.rKcFZ.8w1GAqu92
 .jbVvjnYTkBiGD2nv7PTfD443GhzwaVBYm6yf6WLovrpI0qickFumufS3DeZRvVJnuVh4gDWoHvj
 1ut34Yibx4AqCdBSLk2hjfFPYmRpoCpYeazrGMevkhwujBfMX6Qt9zUFzNcmotWql1QaYtN78h.8
 I8.PCeMxY
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.bf2.yahoo.com with HTTP; Tue, 31 Aug 2021 13:43:40 +0000
Date: Tue, 31 Aug 2021 13:43:39 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1193373415.618091.1630417419536@mail.yahoo.com>
In-Reply-To: <295061345.605389.1630413526827@mail.yahoo.com>
References: <127551906.11620.1630090612779.ref@mail.yahoo.com> <127551906.11620.1630090612779@mail.yahoo.com> <a60baf67-77b9-9405-4184-31faf60ec2f5@balister.org> <295061345.605389.1630413526827@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: I7LQMG3VYH4HFAXQ4QCBJOALQVPQOVJ6
X-Message-ID-Hash: I7LQMG3VYH4HFAXQ4QCBJOALQVPQOVJ6
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: CMake error when building UHD for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I7LQMG3VYH4HFAXQ4QCBJOALQVPQOVJ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============1940731522584225397=="

--===============1940731522584225397==
Content-Type: multipart/alternative;
	boundary="----=_Part_618090_1864322646.1630417419532"

------=_Part_618090_1864322646.1630417419532
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20
I'm noticing during the make process that I'm seeing a lot of these message=
s print out to the screen

/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passing for arg=
ument of type =E2=80=98__gnu_cxx::__normal_iterator<uhd::range_t*, std::vec=
tor<uhd::range_t> >=E2=80=99 changed in GCC 7.1
=C2=A0 121 |=C2=A0=C2=A0=C2=A0 _M_realloc_insert(end(), std::forward<_Args>=
(__args)...);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passing for arg=
ument of type =E2=80=98__gnu_cxx::__normal_iterator<uhd::range_t*, std::vec=
tor<uhd::range_t> >=E2=80=99 changed in GCC 7.1
=C2=A0 121 |=C2=A0=C2=A0=C2=A0 _M_realloc_insert(end(), std::forward<_Args>=
(__args)...);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc: In member function =E2=80=98void test=
_ranges_clip::test_method()=E2=80=99:
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passing for arg=
ument of type =E2=80=98__gnu_cxx::__normal_iterator<uhd::range_t*, std::vec=
tor<uhd::range_t> >=E2=80=99 changed in GCC 7.1
=C2=A0 121 |=C2=A0=C2=A0=C2=A0 _M_realloc_insert(end(), std::forward<_Args>=
(__args)...);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passing for arg=
ument of type =E2=80=98__gnu_cxx::__normal_iterator<uhd::range_t*, std::vec=
tor<uhd::range_t> >=E2=80=99 changed in GCC 7.1
=C2=A0 121 |=C2=A0=C2=A0=C2=A0 _M_realloc_insert(end(), std::forward<_Args>=
(__args)...);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc: In member function =E2=80=98void test=
_ranges_bounds::test_method()=E2=80=99:
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passing for arg=
ument of type =E2=80=98__gnu_cxx::__normal_iterator<uhd::range_t*, std::vec=
tor<uhd::range_t> >=E2=80=99 changed in GCC 7.1
=C2=A0 121 |=C2=A0=C2=A0=C2=A0 _M_realloc_insert(end(), std::forward<_Args>=
(__args)...);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passing for arg=
ument of type =E2=80=98__gnu_cxx::__normal_iterator<uhd::range_t*, std::vec=
tor<uhd::range_t> >=E2=80=99 changed in GCC 7.1
=C2=A0 121 |=C2=A0=C2=A0=C2=A0 _M_realloc_insert(end(), std::forward<_Args>=
(__args)...);

I'm not sure if this point to a compiler compatibility issue or not.=20


    On Tuesday, August 31, 2021, 08:39:31 AM EDT, Tellrell White via USRP-u=
sers <usrp-users@lists.ettus.com> wrote: =20
=20
  Thanks for the catch, however, UHD is still failing to build=20

After issuing the "make command", and running a make test I'm getting the f=
ollowing=20


tw@tw-virtual-machine:~/uhd_n310/uhd/host/build$ make test
Running tests...
Test project /home/tw/uhd_n310/uhd/host/build
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 1: addr_test
=C2=A01/78 Test=C2=A0 #1: addr_test ........................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 2: buffer_test
=C2=A02/78 Test=C2=A0 #2: buffer_test ......................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 3: byteswap_test
=C2=A03/78 Test=C2=A0 #3: byteswap_test ....................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 4: cast_test
=C2=A04/78 Test=C2=A0 #4: cast_test ........................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 5: cal_database_test
=C2=A05/78 Test=C2=A0 #5: cal_database_test ................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 6: cal_data_iq_test
=C2=A06/78 Test=C2=A0 #6: cal_data_iq_test .................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 7: cal_data_gain_pwr_test
=C2=A07/78 Test=C2=A0 #7: cal_data_gain_pwr_test ...........***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 8: chdr_parse_test
=C2=A08/78 Test=C2=A0 #8: chdr_parse_test ..................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 9: chdr_test
=C2=A09/78 Test=C2=A0 #9: chdr_test ........................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 10: constrained_device_args_test
10/78 Test #10: constrained_device_args_test .....***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 11: convert_test
11/78 Test #11: convert_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 12: dict_test
12/78 Test #12: dict_test ........................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 13: eeprom_utils_test
13/78 Test #13: eeprom_utils_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 14: error_test
14/78 Test #14: error_test .......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 15: fp_compare_delta_test
15/78 Test #15: fp_compare_delta_test ............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 16: fp_compare_epsilon_test
16/78 Test #16: fp_compare_epsilon_test ..........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 17: gain_group_test
17/78 Test #17: gain_group_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 18: interpolation_test
18/78 Test #18: interpolation_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 19: isatty_test
19/78 Test #19: isatty_test ......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 20: log_test
20/78 Test #20: log_test .........................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 21: math_test
21/78 Test #21: math_test ........................***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 22: mb_controller_test
22/78 Test #22: mb_controller_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 23: narrow_cast_test
23/78 Test #23: narrow_cast_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 24: property_test
24/78 Test #24: property_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 25: ranges_test
25/78 Test #25: ranges_test ......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 26: rfnoc_node_test
26/78 Test #26: rfnoc_node_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 27: scope_exit_test
27/78 Test #27: scope_exit_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 28: sensors_test
28/78 Test #28: sensors_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 29: soft_reg_test
29/78 Test #29: soft_reg_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 30: sph_recv_test
30/78 Test #30: sph_recv_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 31: sph_send_test
31/78 Test #31: sph_send_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 32: subdev_spec_test
32/78 Test #32: subdev_spec_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 33: time_spec_test
33/78 Test #33: time_spec_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 34: tasks_test
34/78 Test #34: tasks_test .......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 35: vrt_test
35/78 Test #35: vrt_test .........................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 36: expert_test
36/78 Test #36: expert_test ......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 37: fe_conn_test
37/78 Test #37: fe_conn_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 38: link_test
38/78 Test #38: link_test ........................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 39: rx_streamer_test
39/78 Test #39: rx_streamer_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 40: tx_streamer_test
40/78 Test #40: tx_streamer_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 41: block_id_test
41/78 Test #41: block_id_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 42: rfnoc_property_test
42/78 Test #42: rfnoc_property_test ..............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 43: multichan_register_iface_test
43/78 Test #43: multichan_register_iface_test ....***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 44: eeprom_c_test
44/78 Test #44: eeprom_c_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 45: error_c_test
45/78 Test #45: error_c_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 46: ranges_c_test
46/78 Test #46: ranges_c_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 47: sensors_c_test
47/78 Test #47: sensors_c_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 48: string_vector_c_test
48/78 Test #48: string_vector_c_test .............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 49: subdev_spec_c_test
49/78 Test #49: subdev_spec_c_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 50: system_time_test
50/78 Test #50: system_time_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 51: config_parser_test
51/78 Test #51: config_parser_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 52: paths_test
52/78 Test #52: paths_test .......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 53: rfnoc_propprop_test
53/78 Test #53: rfnoc_propprop_test ..............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 54: rfnoc_detailgraph_test
54/78 Test #54: rfnoc_detailgraph_test ...........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 55: actions_test
55/78 Test #55: actions_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 56: rfnoc_chdr_test
56/78 Test #56: rfnoc_chdr_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 57: client_zero_test
57/78 Test #57: client_zero_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 58: addsub_block_test
58/78 Test #58: addsub_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 59: ddc_block_test
59/78 Test #59: ddc_block_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 60: duc_block_test
60/78 Test #60: duc_block_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 61: fft_block_test
61/78 Test #61: fft_block_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 62: fir_filter_block_test
62/78 Test #62: fir_filter_block_test ............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 63: fosphor_block_test
63/78 Test #63: fosphor_block_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 64: keep_one_in_n_test
64/78 Test #64: keep_one_in_n_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 65: logpwr_block_test
65/78 Test #65: logpwr_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 66: moving_average_block_test
66/78 Test #66: moving_average_block_test ........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 67: null_block_test
67/78 Test #67: null_block_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 68: replay_block_test
68/78 Test #68: replay_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 69: siggen_block_test
69/78 Test #69: siggen_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 70: split_stream_block_test
70/78 Test #70: split_stream_block_test ..........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 71: switchboard_block_test
71/78 Test #71: switchboard_block_test ...........***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 72: vector_iir_block_test
72/78 Test #72: vector_iir_block_test ............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 73: window_block_test
73/78 Test #73: window_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 74: transport_test
74/78 Test #74: transport_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 75: offload_io_srv_test
75/78 Test #75: offload_io_srv_test ..............***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 76: serial_number_test
76/78 Test #76: serial_number_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 77: pwr_cal_mgr_test
77/78 Test #77: pwr_cal_mgr_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 78: discoverable_feature_test
78/78 Test #78: discoverable_feature_test ........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
All the tests seem to fail.=20



    On Friday, August 27, 2021, 03:58:38 PM EDT, Philip Balister <philip@ba=
lister.org> wrote: =20
=20
 Try

$ cmake
-DCMAKE_TOOLCHAIN_FILE=3D/home/tw/uhd_n310/uhd/host/cmake/Toolchains/oe-sdk=
_cross.cmake
-DCMAKE_INSTALL_PREFIX=3D/usr/local/share/uhd_n310 ..

Note the ".." on the end.

Philip

On 8/27/21 2:56 PM, Tellrell White via USRP-users wrote:
> Currently, I'm trying to build UHD for the N310 on my host machine follow=
ing the link https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuil=
d and I'm getting the following error as shown.=20
>=20
>=20
> tw@tw-virtual-machine:~/uhd_n310/uhd/host/build$ cmake -DCMAKE_TOOLCHAIN_=
FILE=3D/home/tw/uhd_n310/uhd/host/cmake/Toolchains/oe-sdk_cross.cmake -DCMA=
KE_INSTALL_PREFIX=3D/usr/local/share/uhd_n310=20
> CMake Warning:
> =C2=A0 No source or binary directory provided.=C2=A0 Both will be assumed=
 to be the
> =C2=A0 same as the current working directory, but note that this warning =
will
> =C2=A0 become a fatal error in future CMake releases.
>=20
>=20
> CMake Error: The source directory "/home/tw/uhd_n310/uhd/host/build" does=
 not appear to contain CMakeLists.txt.
> Specify --help for usage, or press the help button on the CMake GUI.
>=20
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>=20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_618090_1864322646.1630417419532
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp569b5c91yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div><br></div><div dir=3D"ltr" data-setdir=3D"false">I'm noticing =
during the make process that I'm seeing a lot of these messages print out t=
o the screen</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><div>/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux=
-gnueabi/usr/include/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passi=
ng for argument of type =E2=80=98__gnu_cxx::__normal_iterator&lt;uhd::range=
_t*, std::vector&lt;uhd::range_t&gt; &gt;=E2=80=99 changed in GCC 7.1<br>&n=
bsp; 121 |&nbsp;&nbsp;&nbsp; _M_realloc_insert(end(), std::forward&lt;_Args=
&gt;(__args)...);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; ^~~=
~~~~~~~~~~~~~~<br>/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-=
oe-linux-gnueabi/usr/include/c++/9.2.0/bits/vector.tcc:121:4: note: paramet=
er passing for argument of type =E2=80=98__gnu_cxx::__normal_iterator&lt;uh=
d::range_t*, std::vector&lt;uhd::range_t&gt; &gt;=E2=80=99 changed in GCC 7=
.1<br>&nbsp; 121 |&nbsp;&nbsp;&nbsp; _M_realloc_insert(end(), std::forward&=
lt;_Args&gt;(__args)...);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp; ^~~~~~~~~~~~~~~~~<br>/usr/local/share/uhd/images/y/sysroots/cortexa9t2=
hf-neon-oe-linux-gnueabi/usr/include/c++/9.2.0/bits/vector.tcc: In member f=
unction =E2=80=98void test_ranges_clip::test_method()=E2=80=99:<br>/usr/loc=
al/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/inclu=
de/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passing for argument of=
 type =E2=80=98__gnu_cxx::__normal_iterator&lt;uhd::range_t*, std::vector&l=
t;uhd::range_t&gt; &gt;=E2=80=99 changed in GCC 7.1<br>&nbsp; 121 |&nbsp;&n=
bsp;&nbsp; _M_realloc_insert(end(), std::forward&lt;_Args&gt;(__args)...);<=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~~~~~<br>=
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/u=
sr/include/c++/9.2.0/bits/vector.tcc:121:4: note: parameter passing for arg=
ument of type =E2=80=98__gnu_cxx::__normal_iterator&lt;uhd::range_t*, std::=
vector&lt;uhd::range_t&gt; &gt;=E2=80=99 changed in GCC 7.1<br>&nbsp; 121 |=
&nbsp;&nbsp;&nbsp; _M_realloc_insert(end(), std::forward&lt;_Args&gt;(__arg=
s)...);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~=
~~~~<br>/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-g=
nueabi/usr/include/c++/9.2.0/bits/vector.tcc: In member function =E2=80=98v=
oid test_ranges_bounds::test_method()=E2=80=99:<br>/usr/local/share/uhd/ima=
ges/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/include/c++/9.2.0/bit=
s/vector.tcc:121:4: note: parameter passing for argument of type =E2=80=98_=
_gnu_cxx::__normal_iterator&lt;uhd::range_t*, std::vector&lt;uhd::range_t&g=
t; &gt;=E2=80=99 changed in GCC 7.1<br>&nbsp; 121 |&nbsp;&nbsp;&nbsp; _M_re=
alloc_insert(end(), std::forward&lt;_Args&gt;(__args)...);<br>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~~~~~<br>/usr/local/share=
/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/include/c++/9=
.2.0/bits/vector.tcc:121:4: note: parameter passing for argument of type =
=E2=80=98__gnu_cxx::__normal_iterator&lt;uhd::range_t*, std::vector&lt;uhd:=
:range_t&gt; &gt;=E2=80=99 changed in GCC 7.1<br>&nbsp; 121 |&nbsp;&nbsp;&n=
bsp; _M_realloc_insert(end(), std::forward&lt;_Args&gt;(__args)...);<br><di=
v><br></div><div dir=3D"ltr" data-setdir=3D"false">I'm not sure if this poi=
nt to a compiler compatibility issue or not. <br></div></div><div><br></div=
></div><div dir=3D"ltr" data-setdir=3D"false"><br></div>
       =20
        </div><div id=3D"yahoo_quoted_0955783127" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 31, 2021, 08:39:31 AM EDT, Tellrell =
White via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv4700972901"><div><div class=3D"yiv470097=
2901ydpcf90c360yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
tica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir=3D"ltr">Thanks for the catch, however, UHD is still failin=
g to build <br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></d=
iv><div dir=3D"ltr">After issuing the "make command", and running a make te=
st I'm getting the following <br clear=3D"none"></div><div dir=3D"ltr"><br =
clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"=
ltr"><div>tw@tw-virtual-machine:~/uhd_n310/uhd/host/build$ make test<br cle=
ar=3D"none">Running tests...<br clear=3D"none">Test project /home/tw/uhd_n3=
10/uhd/host/build<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nb=
sp; 1: addr_test<br clear=3D"none">&nbsp;1/78 Test&nbsp; #1: addr_test ....=
....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 2: buffer_test<br clear=3D"none"=
>&nbsp;2/78 Test&nbsp; #2: buffer_test ......................***Failed&nbsp=
;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sta=
rt&nbsp; 3: byteswap_test<br clear=3D"none">&nbsp;3/78 Test&nbsp; #3: bytes=
wap_test ....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=
=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 4: cast_test<br clear=
=3D"none">&nbsp;4/78 Test&nbsp; #4: cast_test ........................***Fa=
iled&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; Start&nbsp; 5: cal_database_test<br clear=3D"none">&nbsp;5/78 Test&nb=
sp; #5: cal_database_test ................***Failed&nbsp;&nbsp;&nbsp; 0.00 =
sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 6: cal_dat=
a_iq_test<br clear=3D"none">&nbsp;6/78 Test&nbsp; #6: cal_data_iq_test ....=
.............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 7: cal_data_gain_pwr_test<br clear=3D"n=
one">&nbsp;7/78 Test&nbsp; #7: cal_data_gain_pwr_test ...........***Failed&=
nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 Start&nbsp; 8: chdr_parse_test<br clear=3D"none">&nbsp;8/78 Test&nbsp; #8:=
 chdr_parse_test ..................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br =
clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 9: chdr_test<br c=
lear=3D"none">&nbsp;9/78 Test&nbsp; #9: chdr_test ........................*=
**Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; Start 10: constrained_device_args_test<br clear=3D"none">10/78 Te=
st #10: constrained_device_args_test .....***Failed&nbsp;&nbsp;&nbsp; 0.00 =
sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 11: convert_test=
<br clear=3D"none">11/78 Test #11: convert_test .....................***Fai=
led&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; Start 12: dict_test<br clear=3D"none">12/78 Test #12: dict_test ......=
..................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 13: eeprom_utils_test<br clear=3D"none">=
13/78 Test #13: eeprom_utils_test ................***Failed&nbsp;&nbsp;&nbs=
p; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 14: erro=
r_test<br clear=3D"none">14/78 Test #14: error_test .......................=
***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; Start 15: fp_compare_delta_test<br clear=3D"none">15/78 Test #15=
: fp_compare_delta_test ............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br=
 clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 16: fp_compare_epsilon=
_test<br clear=3D"none">16/78 Test #16: fp_compare_epsilon_test ..........*=
**Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; Start 17: gain_group_test<br clear=3D"none">17/78 Test #17: gain_=
group_test ..................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=
=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 18: interpolation_test<br cl=
ear=3D"none">18/78 Test #18: interpolation_test ...............***Failed&nb=
sp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S=
tart 19: isatty_test<br clear=3D"none">19/78 Test #19: isatty_test ........=
..............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; Start 20: log_test<br clear=3D"none">20/78 Test #2=
0: log_test .........................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<b=
r clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 21: math_test<br clea=
r=3D"none">21/78 Test #21: math_test ........................***Failed&nbsp=
;&nbsp;&nbsp; 0.01 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sta=
rt 22: mb_controller_test<br clear=3D"none">22/78 Test #22: mb_controller_t=
est ...............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 23: narrow_cast_test<br clear=3D"none">=
23/78 Test #23: narrow_cast_test .................***Failed&nbsp;&nbsp;&nbs=
p; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 24: prop=
erty_test<br clear=3D"none">24/78 Test #24: property_test .................=
...***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; Start 25: ranges_test<br clear=3D"none">25/78 Test #25: range=
s_test ......................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=
=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 26: rfnoc_node_test<br clear=
=3D"none">26/78 Test #26: rfnoc_node_test ..................***Failed&nbsp;=
&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Star=
t 27: scope_exit_test<br clear=3D"none">27/78 Test #27: scope_exit_test ...=
...............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; Start 28: sensors_test<br clear=3D"none">28/78 Te=
st #28: sensors_test .....................***Failed&nbsp;&nbsp;&nbsp; 0.00 =
sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 29: soft_reg_tes=
t<br clear=3D"none">29/78 Test #29: soft_reg_test ....................***Fa=
iled&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; Start 30: sph_recv_test<br clear=3D"none">30/78 Test #30: sph_recv_te=
st ....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"non=
e">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 31: sph_send_test<br clear=3D"none"=
>31/78 Test #31: sph_send_test ....................***Failed&nbsp;&nbsp;&nb=
sp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 32: sub=
dev_spec_test<br clear=3D"none">32/78 Test #32: subdev_spec_test ..........=
.......***Failed&nbsp;&nbsp;&nbsp; 0.01 sec<br clear=3D"none">&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; Start 33: time_spec_test<br clear=3D"none">33/78 Test #33=
: time_spec_test ...................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br=
 clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 34: tasks_test<br clea=
r=3D"none">34/78 Test #34: tasks_test .......................***Failed&nbsp=
;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sta=
rt 35: vrt_test<br clear=3D"none">35/78 Test #35: vrt_test ................=
.........***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; Start 36: expert_test<br clear=3D"none">36/78 Test #36:=
 expert_test ......................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br =
clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 37: fe_conn_test<br cle=
ar=3D"none">37/78 Test #37: fe_conn_test .....................***Failed&nbs=
p;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; St=
art 38: link_test<br clear=3D"none">38/78 Test #38: link_test .............=
...........***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Start 39: rx_streamer_test<br clear=3D"none">39/78 Te=
st #39: rx_streamer_test .................***Failed&nbsp;&nbsp;&nbsp; 0.00 =
sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 40: tx_streamer_=
test<br clear=3D"none">40/78 Test #40: tx_streamer_test .................**=
*Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Start 41: block_id_test<br clear=3D"none">41/78 Test #41: block_id=
_test ....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"=
none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 42: rfnoc_property_test<br clear=
=3D"none">42/78 Test #42: rfnoc_property_test ..............***Failed&nbsp;=
&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Star=
t 43: multichan_register_iface_test<br clear=3D"none">43/78 Test #43: multi=
chan_register_iface_test ....***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=
=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 44: eeprom_c_test<br clear=
=3D"none">44/78 Test #44: eeprom_c_test ....................***Failed&nbsp;=
&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Star=
t 45: error_c_test<br clear=3D"none">45/78 Test #45: error_c_test .........=
............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; Start 46: ranges_c_test<br clear=3D"none">46/78 Test=
 #46: ranges_c_test ....................***Failed&nbsp;&nbsp;&nbsp; 0.00 se=
c<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 47: sensors_c_test=
<br clear=3D"none">47/78 Test #47: sensors_c_test ...................***Fai=
led&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; Start 48: string_vector_c_test<br clear=3D"none">48/78 Test #48: strin=
g_vector_c_test .............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=
=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 49: subdev_spec_c_test<br cl=
ear=3D"none">49/78 Test #49: subdev_spec_c_test ...............***Failed&nb=
sp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S=
tart 50: system_time_test<br clear=3D"none">50/78 Test #50: system_time_tes=
t .................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 51: config_parser_test<br clear=3D"none=
">51/78 Test #51: config_parser_test ...............***Failed&nbsp;&nbsp;&n=
bsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 52: pa=
ths_test<br clear=3D"none">52/78 Test #52: paths_test .....................=
..***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; Start 53: rfnoc_propprop_test<br clear=3D"none">53/78 Test #53=
: rfnoc_propprop_test ..............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br=
 clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 54: rfnoc_detailgraph_=
test<br clear=3D"none">54/78 Test #54: rfnoc_detailgraph_test ...........**=
*Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Start 55: actions_test<br clear=3D"none">55/78 Test #55: actions_t=
est .....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"n=
one">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 56: rfnoc_chdr_test<br clear=3D"n=
one">56/78 Test #56: rfnoc_chdr_test ..................***Failed&nbsp;&nbsp=
;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 57:=
 client_zero_test<br clear=3D"none">57/78 Test #57: client_zero_test ......=
...........***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Start 58: addsub_block_test<br clear=3D"none">58/78 T=
est #58: addsub_block_test ................***Failed&nbsp;&nbsp;&nbsp; 0.00=
 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 59: ddc_block_t=
est<br clear=3D"none">59/78 Test #59: ddc_block_test ...................***=
Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; Start 60: duc_block_test<br clear=3D"none">60/78 Test #60: duc_bloc=
k_test ...................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"=
none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 61: fft_block_test<br clear=3D"n=
one">61/78 Test #61: fft_block_test ...................***Failed&nbsp;&nbsp=
;&nbsp; 0.01 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 62:=
 fir_filter_block_test<br clear=3D"none">62/78 Test #62: fir_filter_block_t=
est ............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; Start 63: fosphor_block_test<br clear=3D"none">6=
3/78 Test #63: fosphor_block_test ...............***Failed&nbsp;&nbsp;&nbsp=
; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 64: keep_=
one_in_n_test<br clear=3D"none">64/78 Test #64: keep_one_in_n_test ........=
.......***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; Start 65: logpwr_block_test<br clear=3D"none">65/78 Test =
#65: logpwr_block_test ................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec=
<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 66: moving_average_=
block_test<br clear=3D"none">66/78 Test #66: moving_average_block_test ....=
....***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Start 67: null_block_test<br clear=3D"none">67/78 Test #67: =
null_block_test ..................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br c=
lear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 68: replay_block_test<br=
 clear=3D"none">68/78 Test #68: replay_block_test ................***Failed=
&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; Start 69: siggen_block_test<br clear=3D"none">69/78 Test #69: siggen_bloc=
k_test ................***Failed&nbsp;&nbsp;&nbsp; 0.01 sec<br clear=3D"non=
e">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 70: split_stream_block_test<br clea=
r=3D"none">70/78 Test #70: split_stream_block_test ..........***Failed&nbsp=
;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sta=
rt 71: switchboard_block_test<br clear=3D"none">71/78 Test #71: switchboard=
_block_test ...........***Failed&nbsp;&nbsp;&nbsp; 0.01 sec<br clear=3D"non=
e">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 72: vector_iir_block_test<br clear=
=3D"none">72/78 Test #72: vector_iir_block_test ............***Failed&nbsp;=
&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Star=
t 73: window_block_test<br clear=3D"none">73/78 Test #73: window_block_test=
 ................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; Start 74: transport_test<br clear=3D"none">74/7=
8 Test #74: transport_test ...................***Failed&nbsp;&nbsp;&nbsp; 0=
.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 75: offload_=
io_srv_test<br clear=3D"none">75/78 Test #75: offload_io_srv_test .........=
.....***Failed&nbsp;&nbsp;&nbsp; 0.01 sec<br clear=3D"none">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Start 76: serial_number_test<br clear=3D"none">76/78 Test #=
76: serial_number_test ...............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<=
br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 77: pwr_cal_mgr_test=
<br clear=3D"none">77/78 Test #77: pwr_cal_mgr_test .................***Fai=
led&nbsp;&nbsp;&nbsp; 0.00 sec<br clear=3D"none">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; Start 78: discoverable_feature_test<br clear=3D"none"><div>78/78 Test =
#78: discoverable_feature_test ........***Failed&nbsp;&nbsp;&nbsp; 0.00 sec=
</div><div><br clear=3D"none"></div><div dir=3D"ltr">All the tests seem to =
fail. <br clear=3D"none"></div><br clear=3D"none"><br clear=3D"none"></div>=
<div><br clear=3D"none"></div></div>
       =20
        </div><div class=3D"yiv4700972901yqt2091264105" id=3D"yiv4700972901=
yqt30689"><div class=3D"yiv4700972901yahoo_quoted" id=3D"yiv4700972901yahoo=
_quoted_1164857145">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, August 27, 2021, 03:58:38 PM EDT, Philip Bal=
ister &lt;philip@balister.org&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div dir=3D"ltr">Try<br clear=3D"none"><br clear=3D"no=
ne">$ cmake<br clear=3D"none">-DCMAKE_TOOLCHAIN_FILE=3D/home/tw/uhd_n310/uh=
d/host/cmake/Toolchains/oe-sdk_cross.cmake<br clear=3D"none">-DCMAKE_INSTAL=
L_PREFIX=3D/usr/local/share/uhd_n310 ..<br clear=3D"none"><br clear=3D"none=
">Note the ".." on the end.<br clear=3D"none"><br clear=3D"none">Philip<br =
clear=3D"none"><div class=3D"yiv4700972901yqt1845191340" id=3D"yiv470097290=
1yqtfd49148"><br clear=3D"none">On 8/27/21 2:56 PM, Tellrell White via USRP=
-users wrote:<br clear=3D"none">&gt; Currently, I'm trying to build UHD for=
 the N310 on my host machine following the link <a rel=3D"nofollow noopener=
 noreferrer" shape=3D"rect" target=3D"_blank" href=3D"https://files.ettus.c=
om/manual/page_usrp_n3xx.html#n3xx_fsbuild ">https://files.ettus.com/manual=
/page_usrp_n3xx.html#n3xx_fsbuild </a>and I'm getting the following error a=
s shown. <br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none"=
>&gt; <a rel=3D"nofollow noopener noreferrer" shape=3D"rect" ymailto=3D"mai=
lto:tw@tw-virtual-machine" target=3D"_blank" href=3D"mailto:tw@tw-virtual-m=
achine">tw@tw-virtual-machine</a>:~/uhd_n310/uhd/host/build$ cmake -DCMAKE_=
TOOLCHAIN_FILE=3D/home/tw/uhd_n310/uhd/host/cmake/Toolchains/oe-sdk_cross.c=
make -DCMAKE_INSTALL_PREFIX=3D/usr/local/share/uhd_n310 <br clear=3D"none">=
&gt; CMake Warning:<br clear=3D"none">&gt; &nbsp; No source or binary direc=
tory provided.&nbsp; Both will be assumed to be the<br clear=3D"none">&gt; =
&nbsp; same as the current working directory, but note that this warning wi=
ll<br clear=3D"none">&gt; &nbsp; become a fatal error in future CMake relea=
ses.<br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt;=
 CMake Error: The source directory "/home/tw/uhd_n310/uhd/host/build" does =
not appear to contain CMakeLists.txt.<br clear=3D"none">&gt; Specify --help=
 for usage, or press the help button on the CMake GUI.</div><br clear=3D"no=
ne">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none"=
>&gt; <br clear=3D"none">&gt; _____________________________________________=
__<br clear=3D"none">&gt; USRP-users mailing list -- <a rel=3D"nofollow noo=
pener noreferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a><br clear=3D"none">&gt; To unsubscribe send an email to=
 <a rel=3D"nofollow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp-user=
s-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><div class=3D"=
yiv4700972901yqt1845191340" id=3D"yiv4700972901yqtfd66385"><br clear=3D"non=
e">&gt; <br clear=3D"none"></div></div></div>
            </div>
        </div></div></div></div><div class=3D"yqt2091264105" id=3D"yqt77403=
">_______________________________________________<br clear=3D"none">USRP-us=
ers mailing list -- <a shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.et=
tus.com" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect"=
 ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=3D=
"none"></div></div>
            </div>
        </div></body></html>
------=_Part_618090_1864322646.1630417419532--

--===============1940731522584225397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1940731522584225397==--
