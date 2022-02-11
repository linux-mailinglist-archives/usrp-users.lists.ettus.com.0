Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC0D4B2A78
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 17:34:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08331385594
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 11:34:38 -0500 (EST)
Received: from dd41508.kasserver.com (dd41508.kasserver.com [85.13.141.232])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DD18383F0D
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 11:33:37 -0500 (EST)
Received: from smtpclient.apple (p5b077a5f.dip0.t-ipconnect.de [91.7.122.95])
	by dd41508.kasserver.com (Postfix) with ESMTPSA id 30C4A7000591;
	Fri, 11 Feb 2022 17:33:36 +0100 (CET)
From: Julian Arnold <julian@elitecoding.org>
Mime-Version: 1.0 (1.0)
Date: Fri, 11 Feb 2022 17:33:35 +0100
Message-Id: <FC837F71-9A98-4B7B-AAD7-89D4E547B2D9@elitecoding.org>
References: <CAE+UwfAbei+kPHJ9rmFU-zfCRaxMwonBtiCp3h41XhJ+Nc8mpw@mail.gmail.com>
In-Reply-To: <CAE+UwfAbei+kPHJ9rmFU-zfCRaxMwonBtiCp3h41XhJ+Nc8mpw@mail.gmail.com>
To: Craigs List <5000craigslist@gmail.com>
X-Mailer: iPhone Mail (19C63)
Message-ID-Hash: YVBVCYJWZXJB4CIXS7NOFINFXB66CHU4
X-Message-ID-Hash: YVBVCYJWZXJB4CIXS7NOFINFXB66CHU4
X-MailFrom: julian@elitecoding.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 AGC mode change/AD9361 register access
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YVBVCYJWZXJB4CIXS7NOFINFXB66CHU4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8004885772861825828=="


--===============8004885772861825828==
Content-Type: multipart/alternative; boundary=Apple-Mail-DA6CA74F-8263-451D-9EDD-86FC66657AD9
Content-Transfer-Encoding: 7bit


--Apple-Mail-DA6CA74F-8263-451D-9EDD-86FC66657AD9
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

KT,

as far as I remember you can select the mode by directly writing to the corr=
esponding property tree node.
Use the =E2=80=9Euhd_usrp_probe =E2=80=94tree=E2=80=9C command to find the r=
ight node.

Let me know if you need further help.
I=E2=80=99m on my phone right now so it=E2=80=99s hard to give more details.=


Cheers,
Julian

> Am 11.02.2022 um 16:22 schrieb Craigs List <5000craigslist@gmail.com>:
>=20
> =EF=BB=BF
> Hello,
>=20
> Looking to enable fast mode AGC on the E310. The default seems to be slow m=
ode as indicated by  https://github.com/EttusResearch/uhd/blob/7ac01c7f979aa=
b8fac5e62f596ff0af52cedec40/host/lib/usrp/common/ad9361_driver/ad9361_device=
.cpp
>=20
> set_rx_agc() only enables AGC. I couldn't find any function to change the m=
ode, so I assume it will have to be done manually with register writes. Is t=
here a C++ API that will allow this?
>=20
> Regards,
> KT
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-DA6CA74F-8263-451D-9EDD-86FC66657AD9
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">KT,<div><br></div><div>as far as I remember=
 you can select the mode by directly writing to the corresponding property t=
ree node.</div><div>Use the =E2=80=9Euhd_usrp_probe =E2=80=94tree=E2=80=9C c=
ommand to find the right node.</div><div><br></div><div>Let me know if you n=
eed further help.</div><div>I=E2=80=99m on my phone right now so it=E2=80=99=
s hard to give more details.</div><div><br></div><div>Cheers,<br><div dir=3D=
"ltr">Julian</div><div dir=3D"ltr"><br><blockquote type=3D"cite">Am 11.02.20=
22 um 16:22 schrieb Craigs List &lt;5000craigslist@gmail.com&gt;:<br><br></b=
lockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=
=3D"ltr"><div>Hello,</div><div><br></div><div>Looking to enable fast mode AG=
C on the E310. The default seems to be slow mode as indicated by&nbsp; <a hr=
ef=3D"https://github.com/EttusResearch/uhd/blob/7ac01c7f979aab8fac5e62f596ff=
0af52cedec40/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp">https://g=
ithub.com/EttusResearch/uhd/blob/7ac01c7f979aab8fac5e62f596ff0af52cedec40/ho=
st/lib/usrp/common/ad9361_driver/ad9361_device.cpp</a></div><div><br></div><=
div>set_rx_agc() only enables AGC. I couldn't find any function to change th=
e mode, so I assume it will have to be done manually with register writes. I=
s there a C++ API that will allow this?</div><div><br></div><div>Regards,</d=
iv><div>KT<br></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-DA6CA74F-8263-451D-9EDD-86FC66657AD9--

--===============8004885772861825828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8004885772861825828==--
