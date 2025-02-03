Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC5FA25EF6
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 16:38:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3B20385949
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 10:38:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738597087; bh=rnfXsx/pU1K+E41mYUmcrGY89trKOvzJcPrT7DFvehw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eh6VKtztfCwWzFR/zH7GFM9NTPFZO6cPd0sMutpqSw6+J/3s5ktmQ2igwxbwi4P+F
	 yRM8TC9HzM6qthmCe+fLSuAzoqfb26U6K7qyd5WmH3D4h7Et+GOOIP0hPi14xggvoq
	 CgUZi8t8ACwcAyMGgLcs4FrxJz67ZtP5RdLtMccT3aknpMqE5WaOX8kSdekZRzdPTa
	 UDXBC43bKPmU4ngZNwMtz2dXIs1A2PDte96HylrxXm3Y8xEeVKAKqydi++xYpW/SgE
	 1FxOsy8a8fwpZv2RlvHGSW3oi0gMnF1e1dto30UiK1/VWI8YYMROqt47+8bTG9ljJS
	 ATfHtpXEfxUgg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71B1D38590D
	for <usrp-users@lists.ettus.com>; Mon,  3 Feb 2025 10:37:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738597075; bh=E27j2xKzTSEyvtvNjS/TJS7pp4a5Ps7P7snrQn1l49M=;
	h=Date:To:From:Subject:From;
	b=ieDQO/9cmL9Ti7xImNQOhQ5yUtrmNY/FlBFqeK9E7iY8kNvAg5dGksi7w6H1HPxU/
	 cU258u8U62iU5qT1RwBFEWKWkf9Q5ytrdkzr1MJunGDNrGC7VYv3yUHP+rTLWOH4xl
	 U0q2B9qOm1TvlhoWWKKHujndDZ33GwdYuaVmCBR3FaDCEbOgdFaVdr8SWqwECm3Ykm
	 GGOXCvbKIjlFZOz6mVSKrZsLiPdMTxpA/8DDZ382kZSI5IjYeh2W4+GsI/YsPavwDv
	 4Em/ZRd5GCOfqUF20e+JBPSdvGa9ZrXhPJpCn720Krug65ZyVS4SyBvaffRDESgAYW
	 C2Rl3kz5ae1ng==
Date: Mon, 3 Feb 2025 15:37:55 +0000
To: usrp-users@lists.ettus.com
From: pigatoimdeafrancesco@gmail.com
Message-ID: <ZgUmbnaR9VqIOfl145BdjqZXduIXj4uuLIBLvBbos@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6QEBE5FK7LCLNCYCOKYX6THU76DET2WI
X-Message-ID-Hash: 6QEBE5FK7LCLNCYCOKYX6THU76DET2WI
X-MailFrom: pigatoimdeafrancesco@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 not seen by uhd_find_devices command
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QEBE5FK7LCLNCYCOKYX6THU76DET2WI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4783094075621797890=="

This is a multi-part message in MIME format.

--===============4783094075621797890==
Content-Type: multipart/alternative;
 boundary="b1_ZgUmbnaR9VqIOfl145BdjqZXduIXj4uuLIBLvBbos"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZgUmbnaR9VqIOfl145BdjqZXduIXj4uuLIBLvBbos
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have a USRP B210 which cannot be identified uhd_find_devices on one mac=
hine but not on another. Both have installed the same UHD version:=20

\-Machine identifying the B210:

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94-

tim@srv-pws-01:\~$ uhd_find_devices

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HE=
AD-0-g5fac246b

\[INFO\] \[B200\] Loading firmware image: /usr/local/share/uhd/images/usr=
p_b200_fw.hex...

\--------------------------------------------------

\-- UHD Device 0

\--------------------------------------------------

Device Address:

    serial: 31722A4

    name: MyB210

    product: B210

    type: b200

\--------------------------------------------------

\-- UHD Device 1

\--------------------------------------------------

Device Address:

    serial: 343721C

    addr: 192.168.20.2

    claimed: False

    fpga: XG

    mgmt_addr: 192.168.10.2

    mgmt_addr: 192.168.20.2

    name: ni-n3xx-343721C

    product: n310

    type: n3xx

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94

Machine not identifying the B210:=20

tim@srv-pws-05:/usr/local/share/uhd/images$ uhd_find_devices

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HE=
AD-0-g5fac246b

\--------------------------------------------------

\-- UHD Device 0

\--------------------------------------------------

Device Address:

    serial: 32B1A33

    addr: 192.168.20.2

    claimed: False

    fpga: XG

    mgmt_addr: 192.168.10.2

    mgmt_addr: 192.168.20.2

    name: ni-n3xx-32B1A33

    product: n310

    type: n3xx

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94

First, on both machine I could not succeed in reconginsing the B210. The =
machine now working suggested me to run the CMD =E2=80=9Csudo /usr/local/=
lib/uhd/utils/uhd_images_downloader.py=E2=80=9C, fixing the issue. The sa=
me line does not work on the other machine. Can anyone help me with this?

Thank you,=20

Francesco

--b1_ZgUmbnaR9VqIOfl145BdjqZXduIXj4uuLIBLvBbos
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I have a USRP B210 which cannot be identified uhd_find_devi=
ces on one machine but not on another. Both have installed the same UHD ver=
sion: </p><p>-Machine identifying the B210:</p><p>=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94-</p><p>tim@srv-pws-01:~$ uhd_find_devices</p><p>[INFO] [=
UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b=
</p><p>[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/us=
rp_b200_fw.hex...</p><p>--------------------------------------------------<=
/p><p>-- UHD Device 0</p><p>-----------------------------------------------=
---</p><p>Device Address:</p><p>    serial: 31722A4</p><p>    name: MyB210<=
/p><p>    product: B210</p><p>    type: b200</p><p>------------------------=
--------------------------</p><p>-- UHD Device 1</p><p>--------------------=
------------------------------</p><p>Device Address:</p><p>    serial: 3437=
21C</p><p>    addr: 192.168.20.2</p><p>    claimed: False</p><p>    fpga: X=
G</p><p>    mgmt_addr: 192.168.10.2</p><p>    mgmt_addr: 192.168.20.2</p><p=
>    name: ni-n3xx-343721C</p><p>    product: n310</p><p>    type: n3xx</p>=
<p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94</p><p>Machine not identifying the B210: </p><p><br></p><p>tim@srv-pws-0=
5:/usr/local/share/uhd/images$ uhd_find_devices</p><p>[INFO] [UHD] linux; G=
NU C++ version 9.4.0; Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b</p><p>------=
--------------------------------------------</p><p>-- UHD Device 0</p><p>--=
------------------------------------------------</p><p>Device Address:</p><=
p>    serial: 32B1A33</p><p>    addr: 192.168.20.2</p><p>    claimed: False=
</p><p>    fpga: XG</p><p>    mgmt_addr: 192.168.10.2</p><p>    mgmt_addr: =
192.168.20.2</p><p>    name: ni-n3xx-32B1A33</p><p>    product: n310</p><p>=
    type: n3xx</p><p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94</p><p><br></p><p>First, on=
 both machine I could not succeed in reconginsing the B210. The machine now=
 working suggested me to run the CMD =E2=80=9Csudo /usr/local/lib/uhd/utils=
/uhd_images_downloader.py=E2=80=9C, fixing the issue. The same line does no=
t work on the other machine. Can anyone help me with this?</p><p>Thank you,=
 </p><p>Francesco</p>

--b1_ZgUmbnaR9VqIOfl145BdjqZXduIXj4uuLIBLvBbos--

--===============4783094075621797890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4783094075621797890==--
