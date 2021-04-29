Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D1436ED51
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 17:25:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 061C5384446
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 11:25:01 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B006383CC2
	for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 11:24:10 -0400 (EDT)
Date: Thu, 29 Apr 2021 15:24:10 +0000
To: usrp-users@lists.ettus.com
From: arjan.feta@unifi.it
Message-ID: <JoVQlePitdJLXGNFmXJNsjL9uVv5XBNJQXrfoJ1w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 608AC446.4080404@gmail.com
MIME-Version: 1.0
Message-ID-Hash: WG5RODUF5GAK2BDW4STTBLOPGPFWGV6K
X-Message-ID-Hash: WG5RODUF5GAK2BDW4STTBLOPGPFWGV6K
X-MailFrom: arjan.feta@unifi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to receive two signals in parallel with one TwinRX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WG5RODUF5GAK2BDW4STTBLOPGPFWGV6K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4085511388915772871=="

This is a multi-part message in MIME format.

--===============4085511388915772871==
Content-Type: multipart/alternative;
 boundary="b1_JoVQlePitdJLXGNFmXJNsjL9uVv5XBNJQXrfoJ1w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JoVQlePitdJLXGNFmXJNsjL9uVv5XBNJQXrfoJ1w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes, even the names at the physical SMA ports at the front end of the x30=
0 are named TX/RX and RX2 (for each of the doughterboards viz. RFA and RF=
B):

https://www.ettus.com/wp-content/uploads/2018/11/X300_Front-Large_2-min.j=
pg

and the test/default programs that come with UHD, like *uhd_fft* for exam=
ple,  instruct to pass one antenna at a time:

https://kb.ettus.com/TwinRX_Getting_Started_Guides#Test_and_Verify_the_Op=
eration_of_the_USRP

The point is I can=E2=80=99t turn on both channels for RFA contemporarily=
.

Tomorrow (CEST timezone) I=E2=80=99ll do some more tests and try differen=
t configs.

Cheers,

Arjan

--b1_JoVQlePitdJLXGNFmXJNsjL9uVv5XBNJQXrfoJ1w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Yes, even the names at the physical SMA ports at the front end of the =
x300 are named TX/RX and RX2 (for each of the doughterboards viz. RFA and=
 RFB):</p><p>https://www.ettus.com/wp-content/uploads/2018/11/X300_Front-=
Large_2-min.jpg</p><p>and the test/default programs that come with UHD, l=
ike <em>uhd_fft</em> for example,  instruct to pass one antenna at a time=
:</p><p>https://kb.ettus.com/TwinRX_Getting_Started_Guides#Test_and_Verif=
y_the_Operation_of_the_USRP</p><p>The point is I can=E2=80=99t turn on bo=
th channels for RFA contemporarily.</p><p>Tomorrow (CEST timezone) I=E2=80=
=99ll do some more tests and try different configs.</p><p>Cheers,</p><p>A=
rjan</p><p><br></p>


--b1_JoVQlePitdJLXGNFmXJNsjL9uVv5XBNJQXrfoJ1w--

--===============4085511388915772871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4085511388915772871==--
