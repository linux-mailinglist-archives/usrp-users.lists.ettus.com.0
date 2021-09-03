Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8E2400177
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 16:47:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFFBE38462B
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 10:47:45 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 744E3384220
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 10:46:55 -0400 (EDT)
Date: Fri, 3 Sep 2021 14:46:55 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <6MxFFXlzLbuxMnPVOEfFNVhSuBv57OJhSebPX1Gw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es
MIME-Version: 1.0
Message-ID-Hash: 7EVAWEHUJNH4BRLS6M52M6O47VWTX4LP
X-Message-ID-Hash: 7EVAWEHUJNH4BRLS6M52M6O47VWTX4LP
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Resetting of USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7EVAWEHUJNH4BRLS6M52M6O47VWTX4LP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0686919106880287941=="

This is a multi-part message in MIME format.

--===============0686919106880287941==
Content-Type: multipart/alternative;
 boundary="b1_6MxFFXlzLbuxMnPVOEfFNVhSuBv57OJhSebPX1Gw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6MxFFXlzLbuxMnPVOEfFNVhSuBv57OJhSebPX1Gw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve looked into this as well. There is a processor reset pin on =
the jtag connector (at least on the e320). However, it did not have the i=
ntended effect when I grounded it. We have decided to implement a relay s=
olution, like Marcus mentioned.

--b1_6MxFFXlzLbuxMnPVOEfFNVhSuBv57OJhSebPX1Gw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99ve looked into this as well. There is a processor reset pin =
on the jtag connector (at least on the e320). However, it did not have th=
e intended effect when I grounded it. We have decided to implement a rela=
y solution, like Marcus mentioned.</p>


--b1_6MxFFXlzLbuxMnPVOEfFNVhSuBv57OJhSebPX1Gw--

--===============0686919106880287941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0686919106880287941==--
